/**************************************************************************
 *                                                                        *
 *  Edge Detect Design Walkthrough for HLS                                *
 *                                                                        *
 *  Software Version: 1.0                                                 *
 *                                                                        *
 *  Release Date    : Tue Jan 14 15:40:43 PST 2020                        *
 *  Release Type    : Production Release                                  *
 *  Release Build   : 1.0.0                                               *
 *                                                                        *
 *  Copyright 2020, Siemens                                               *
 *                                                                        *
 **************************************************************************
 *  Licensed under the Apache License, Version 2.0 (the "License");       *
 *  you may not use this file except in compliance with the License.      *
 *  You may obtain a copy of the License at                               *
 *                                                                        *
 *      http://www.apache.org/licenses/LICENSE-2.0                        *
 *                                                                        *
 *  Unless required by applicable law or agreed to in writing, software   *
 *  distributed under the License is distributed on an "AS IS" BASIS,     *
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or       *
 *  implied.                                                              *
 *  See the License for the specific language governing permissions and   *
 *  limitations under the License.                                        *
 **************************************************************************
 *                                                                        *
 *  The most recent version of this package is available at github.       *
 *                                                                        *
 *************************************************************************/
#pragma once

#include "EdgeDetect_defs.h"
#include <mc_scverify.h>


namespace EdgeDetect_IP 
{
  class EdgeDetect_MagAng
  {
  public:
    EdgeDetect_MagAng() {}
  
    #pragma hls_design interface
    void CCS_BLOCK(run)(ac_channel<gradType4x>    &dx_in,
                        ac_channel<gradType4x>    &dy_in,
                        ac_channel<pixelType4x>   &dat_in,
                        maxWType                  &widthIn,
                        maxHType                  &heightIn,
                        bool                      sw_in,
                        uint32                    &crc32_pix_in,
                        uint32                    &crc32_dat_out,
                        ac_channel<Stream_t>      &dat_out)
    {
      gradType4x dx, dy;
      gradType dx4[4];
      gradType dy4[4];
      uint9 dx_abs, dy_abs;
      pixelType magn[4];
      pixelType4x pix_in;
      Stream_t out;
      uint32    crc32_pix_in_tmp = 0XFFFFFFFF;
      uint32    crc32_dat_out_tmp = 0XFFFFFFFF;

      MROW: for (maxHType y = 0; ; y++) {
        #pragma hls_pipeline_init_interval 1
        MCOL: for (maxWType x = 0; ; x++) {
          dx = dx_in.read();
          dy = dy_in.read();
          pix_in = dat_in.read();
          dx4[0] = dx.grad0;
          dx4[1] = dx.grad1;
          dx4[2] = dx.grad2;
          dx4[3] = dx.grad3;
          dy4[0] = dy.grad0;
          dy4[1] = dy.grad1;
          dy4[2] = dy.grad2;
          dy4[3] = dy.grad3;
          #pragma hls_unroll yes
          for(uint2 i=0;;i++){
            ac_math::ac_abs(dx4[i], dx_abs);
            ac_math::ac_abs(dy4[i], dy_abs);
            if((dx_abs + dy_abs)>255)
              magn[i] = 255;
            else
              magn[i] = dx_abs + dy_abs;

            if(i==3)break;
          }
          if(sw_in==0){
            out.pix = pix_in;
          }else{
            out.pix.set_slc(0, magn[0]);
            out.pix.set_slc(8, magn[1]);
            out.pix.set_slc(16, magn[2]);
            out.pix.set_slc(24, magn[3]);
          }
          if(x==0&&y==0)out.sof=1;
          else out.sof=0;
          if(x == maxWType(widthIn/4-1))out.eol=1;
          else out.eol=0;
          crc32_pix_in_tmp = calc_crc32<32>(crc32_pix_in_tmp, pix_in);
          crc32_dat_out_tmp = calc_crc32<32>(crc32_dat_out_tmp, out.pix);
          dat_out.write(out);
          

          // programmable width exit condition
          if (x == maxWType(widthIn/4-1)) { // cast to maxWType for RTL code coverage
            break;
          }
        }
        // programmable height exit condition
        if (y == maxHType(heightIn-1)) { // cast to maxHType for RTL code coverage
          break;
        }
      }
      crc32_pix_in = ~crc32_pix_in_tmp;    
      crc32_dat_out = ~crc32_dat_out_tmp;    
    }
  private:
    template <int len>
    uint32 calc_crc32(uint32 crc_in, ac_int<len, false> dat_in)
    {
      const uint32 CRC_POLY = 0xEDB88320;
      uint32 crc_tmp = crc_in;

      #pragma hls_unroll yes
      for(int i=0; i<len; i++)
      {
        uint1 tmp_bit = crc_tmp[0] ^ dat_in[i];

        uint31 mask;

        #pragma hls_unroll yes
        for(int i=0; i<31; i++)
          mask[i] = tmp_bit & CRC_POLY[i];

        uint31 crc_tmp_h31 = crc_tmp.slc<31>(1);
  
        crc_tmp_h31 ^= mask;
        
        crc_tmp.set_slc(31,tmp_bit);
        crc_tmp.set_slc(0,crc_tmp_h31);
      }
      return crc_tmp;
    }
  };

}


