/**********************************************************************
  Copyright(c) 2021 Arm Corporation All rights reserved.

  Redistribution and use in source and binary forms, with or without
  modification, are permitted provided that the following conditions
  are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in
      the documentation and/or other materials provided with the
      distribution.
    * Neither the name of Arm Corporation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
**********************************************************************/
    .arch armv8-a
    .section	.rodata
#define CONST_VAR_START(a)    \
    .align	3;.global	a;.type	a, %object;a

#define CONST_VAR_END(a)    \
    .size   a,. - a
CONST_VAR_START(shift_small_data_table):
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff
CONST_VAR_START(read_small_data_table):
    .byte      0,   1,   2,   3,   4,   5,   6,   7,   8,   9,  10,  11,  12,  13,  14,  15
CONST_VAR_END(shift_small_data_table)
    .byte   0x0e,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff
    .byte   0x0c,0x0d,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff
    .byte   0x0c,0x0d,0x0e,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff
    .byte   0x08,0x09,0x0a,0x0b,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff
    .byte   0x08,0x09,0x0a,0x0b,0x0e,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff
    .byte   0x08,0x09,0x0a,0x0b,0x0c,0x0d,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff
    .byte   0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff
    .byte   0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff
    .byte   0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x0e,0xff,0xff,0xff,0xff,0xff,0xff,0xff
    .byte   0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x0c,0x0d,0xff,0xff,0xff,0xff,0xff,0xff
    .byte   0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x0c,0x0d,0x0e,0xff,0xff,0xff,0xff,0xff
    .byte   0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0xff,0xff,0xff,0xff
    .byte   0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0e,0xff,0xff,0xff
    .byte   0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0xff,0xff
CONST_VAR_START(write_small_data_table):
    .byte   0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0xff
CONST_VAR_END(read_small_data_table)
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x00,0xff
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x00,0x01,0xff,0xff
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x00,0x01,0x02,0xff
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x00,0x01,0x02,0x03,0xff,0xff,0xff,0xff
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x00,0x01,0x02,0x03,0xff,0xff,0x04,0xff
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x00,0x01,0x02,0x03,0x04,0x05,0xff,0xff
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x00,0x01,0x02,0x03,0x04,0x05,0x06,0xff
    .byte   0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff
    .byte   0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0xff,0xff,0xff,0xff,0xff,0xff,0x08,0xff
    .byte   0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0xff,0xff,0xff,0xff,0x08,0x09,0xff,0xff
    .byte   0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0xff,0xff,0xff,0xff,0x08,0x09,0x0a,0xff
    .byte   0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0xff,0xff,0xff,0xff
    .byte   0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0xff,0xff,0x0c,0xff
    .byte   0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0xff,0xff
CONST_VAR_START(read_end_small_data_table):
    .byte   0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0xff
CONST_VAR_END(write_small_data_table)
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x0e
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x0c,0x0d
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x0c,0x0d,0x0e
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x08,0x09,0x0a,0x0b
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x08,0x09,0x0a,0x0b,0x0e
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x08,0x09,0x0a,0x0b,0x0c,0x0d
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x0e
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x0c,0x0d
    .byte   0xff,0xff,0xff,0xff,0xff,0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x0c,0x0d,0x0e
    .byte   0xff,0xff,0xff,0xff,0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b
    .byte   0xff,0xff,0xff,0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0e
    .byte   0xff,0xff,0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d
CONST_VAR_START(write_end_small_data_table):
    .byte   0xff,0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e
CONST_VAR_END(read_end_small_data_table)
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x0f,0xff
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x0e,0x0f,0xff,0xff
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x0d,0x0e,0x0f,0xff
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x0c,0x0d,0x0e,0x0f,0xff,0xff,0xff,0xff
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x0b,0x0c,0x0d,0x0e,0xff,0xff,0x0f,0xff
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f,0xff,0xff
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f,0xff
    .byte   0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff
    .byte   0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0xff,0xff,0xff,0xff,0xff,0xff,0x0f,0xff
    .byte   0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0xff,0xff,0xff,0xff,0x0e,0x0f,0xff,0xff
    .byte   0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0xff,0xff,0xff,0xff,0x0d,0x0e,0x0f,0xff
    .byte   0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f,0xff,0xff,0xff,0xff
    .byte   0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0xff,0xff,0x0f,0xff
    .byte   0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f,0xff,0xff
CONST_VAR_START(tbx_end_small_data_table):
    .byte   0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f,0xff
CONST_VAR_END(write_end_small_data_table)
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x0f
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x0e,0x0f
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x0d,0x0e,0x0f
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x0c,0x0d,0x0e,0x0f
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x0b,0x0c,0x0d,0x0e,0x0f
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f
    .byte   0xff,0xff,0xff,0xff,0xff,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f
    .byte   0xff,0xff,0xff,0xff,0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f
    .byte   0xff,0xff,0xff,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f
CONST_VAR_START(tbx_start_small_data_table):
    .byte   0xff,0xff,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f
    .byte   0xff,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f
CONST_VAR_END(tbx_end_small_data_table)
    .byte   0xff,0xff,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f
    .byte   0xff,0xff,0xff,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f
    .byte   0xff,0xff,0xff,0xff,0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f
    .byte   0xff,0xff,0xff,0xff,0xff,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x0b,0x0c,0x0d,0x0e,0x0f
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x0c,0x0d,0x0e,0x0f
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x0d,0x0e,0x0f
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x0e,0x0f
    .byte   0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0x0f
CONST_VAR_END(tbx_start_small_data_table)
