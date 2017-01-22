/**************************
***** Compiler Parameters *****
***************************
@P EffectName: FXAAShaderEffect
@P   - FXAAEffect.GreenAsLumaKey: 0
@P FXAAEffect.QualityKey: 15
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 64]
@C    MatrixTransform_id72 => SpriteBase.MatrixTransform
cbuffer Globals [Size: 80]
@C    Texture0TexelSize_id14 => Texturing.Texture0TexelSize
@C    Texture1TexelSize_id16 => Texturing.Texture1TexelSize
@C    Texture2TexelSize_id18 => Texturing.Texture2TexelSize
@C    Texture3TexelSize_id20 => Texturing.Texture3TexelSize
@C    Texture4TexelSize_id22 => Texturing.Texture4TexelSize
@C    Texture5TexelSize_id24 => Texturing.Texture5TexelSize
@C    Texture6TexelSize_id26 => Texturing.Texture6TexelSize
@C    Texture7TexelSize_id28 => Texturing.Texture7TexelSize
@C    Texture8TexelSize_id30 => Texturing.Texture8TexelSize
@C    Texture9TexelSize_id32 => Texturing.Texture9TexelSize
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    LinearSampler_id43 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    Texture0_id13 => Texturing.Texture0 [Stage: Pixel, Slot: (0-0)]
@R    Globals => Globals [Stage: Pixel, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    FXAAShader => 981c4e015217f24c8b25cea130220041
@S    ImageEffectShader => 31376a3f3da836cbe499b1374d52b9a7
@S    SpriteBase => a411b8f5112d9bc821268e8c81e1a94c
@S    ShaderBase => 5c3160ccbf936c5e102bd9315f0f946a
@S    ShaderBaseStream => f699080594ac63c1f38140de57ce1a7b
@S    Texturing => a9d9ee1fb9a68af7ce6b12291686faea
***************************
*****     Stages      *****
***************************
@G    Vertex => 79eb7ff071584feaa45b858a38e87b6a
//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 MatrixTransform_id72;     // Offset:    0 Size:    64
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// PerDraw                           cbuffer      NA          NA    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float   xyzw
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[4], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xy
dcl_output_siv o0.xyzw, position
dcl_output o1.xy
//
// Initial variable locations:
//   v0.x <- __input__.Position_id71.x; v0.y <- __input__.Position_id71.y; v0.z <- __input__.Position_id71.z; v0.w <- __input__.Position_id71.w; 
//   v1.x <- __input__.TexCoord_id61.x; v1.y <- __input__.TexCoord_id61.y; 
//   o1.x <- <VSMain return value>.TexCoord_id61.x; o1.y <- <VSMain return value>.TexCoord_id61.y; 
//   o0.x <- <VSMain return value>.ShadingPosition_id0.x; o0.y <- <VSMain return value>.ShadingPosition_id0.y; o0.z <- <VSMain return value>.ShadingPosition_id0.z; o0.w <- <VSMain return value>.ShadingPosition_id0.w
//
#line 333 "C:\Users\Joseph Braunstein\Desktop\FacePalmStudios-Xenko3D\Capstone Project\Capstone Project\Bin\Windows\Debug\log\shader_FXAAShaderEffect_4364c26b6e5dd1d0870f1168fda48d2d.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 337
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => 05613559add04db3ad0062286d264187
//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//
// Buffer Definitions: 
//
// cbuffer Globals
// {
//
//   float2 Texture0TexelSize_id14;     // Offset:    0 Size:     8
//   float2 Texture1TexelSize_id16;     // Offset:    8 Size:     8 [unused]
//   float2 Texture2TexelSize_id18;     // Offset:   16 Size:     8 [unused]
//   float2 Texture3TexelSize_id20;     // Offset:   24 Size:     8 [unused]
//   float2 Texture4TexelSize_id22;     // Offset:   32 Size:     8 [unused]
//   float2 Texture5TexelSize_id24;     // Offset:   40 Size:     8 [unused]
//   float2 Texture6TexelSize_id26;     // Offset:   48 Size:     8 [unused]
//   float2 Texture7TexelSize_id28;     // Offset:   56 Size:     8 [unused]
//   float2 Texture8TexelSize_id30;     // Offset:   64 Size:     8 [unused]
//   float2 Texture9TexelSize_id32;     // Offset:   72 Size:     8 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// LinearSampler_id43                sampler      NA          NA    0        1
// Texture0_id13                     texture  float4          2d    0        1
// Globals                           cbuffer      NA          NA    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float       
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[1], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 6
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.TexCoord_id61.x; v1.y <- __input__.TexCoord_id61.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id1.x; o0.y <- <PSMain return value>.ColorTarget_id1.y; o0.z <- <PSMain return value>.ColorTarget_id1.z; o0.w <- <PSMain return value>.ColorTarget_id1.w
//
#line 57 "C:\Users\Joseph Braunstein\Desktop\FacePalmStudios-Xenko3D\Capstone Project\Capstone Project\Bin\Windows\Debug\log\shader_FXAAShaderEffect_4364c26b6e5dd1d0870f1168fda48d2d.hlsl"
sample_l_indexable(texture2d)(float,float,float,float) r0.xyzw, v1.xyxx, t0.xyzw, s0, l(0.000000)  // r0.x <- rgbyM.x; r0.y <- rgbyM.y; r0.z <- rgbyM.z; r0.w <- rgbyM.w
sample_l_aoffimmi_indexable(0,1,0)(texture2d)(float,float,float,float) r1.x, v1.xyxx, t0.wxyz, s0, l(0.000000)
sample_l_aoffimmi_indexable(1,0,0)(texture2d)(float,float,float,float) r1.y, v1.xyxx, t0.xwyz, s0, l(0.000000)
sample_l_aoffimmi_indexable(0,-1,0)(texture2d)(float,float,float,float) r1.z, v1.xyxx, t0.xywz, s0, l(0.000000)
sample_l_aoffimmi_indexable(-1,0,0)(texture2d)(float,float,float,float) r1.w, v1.xyxx, t0.xyzw, s0, l(0.000000)
max r2.x, r0.w, r1.x  // r2.x <- maxSM
min r2.y, r0.w, r1.x  // r2.y <- minSM
max r2.x, r1.y, r2.x  // r2.x <- maxESM
min r2.y, r1.y, r2.y  // r2.y <- minESM
max r2.z, r1.w, r1.z  // r2.z <- maxWN
min r2.w, r1.w, r1.z  // r2.w <- minWN

#line 68
max r2.x, r2.x, r2.z  // r2.x <- rangeMax
min r2.y, r2.y, r2.w  // r2.y <- rangeMin
mul r2.z, r2.x, l(0.063000)  // r2.z <- rangeMaxScaled
add r2.x, -r2.y, r2.x  // r2.x <- range
max r2.y, r2.z, l(0.031200)  // r2.y <- rangeMaxClamped

#line 76
ge r2.y, r2.x, r2.y
if_nz r2.y
  sample_l_aoffimmi_indexable(-1,-1,0)(texture2d)(float,float,float,float) r2.y, v1.xyxx, t0.xwyz, s0, l(0.000000)
  sample_l_aoffimmi_indexable(1,1,0)(texture2d)(float,float,float,float) r2.z, v1.xyxx, t0.xywz, s0, l(0.000000)
  sample_l_aoffimmi_indexable(1,-1,0)(texture2d)(float,float,float,float) r2.w, v1.xyxx, t0.xyzw, s0, l(0.000000)
  sample_l_aoffimmi_indexable(-1,1,0)(texture2d)(float,float,float,float) r3.x, v1.xyxx, t0.wxyz, s0, l(0.000000)
  add r3.yz, r1.xxyx, r1.zzwz  // r3.y <- lumaNS; r3.z <- lumaWE
  div r2.x, l(1.000000, 1.000000, 1.000000, 1.000000), r2.x  // r2.x <- subpixRcpRange
  add r3.w, r3.z, r3.y  // r3.w <- subpixNSWE
  mad r3.y, r0.w, l(-2.000000), r3.y  // r3.y <- edgeHorz1
  mad r3.z, r0.w, l(-2.000000), r3.z  // r3.z <- edgeVert1
  add r4.x, r2.z, r2.w  // r4.x <- lumaNESE

#line 87
  add r2.w, r2.w, r2.y  // r2.w <- lumaNWNE
  mad r4.y, r1.y, l(-2.000000), r4.x  // r4.y <- edgeHorz2
  mad r2.w, r1.z, l(-2.000000), r2.w  // r2.w <- edgeVert2
  add r2.y, r2.y, r3.x  // r2.y <- lumaNWSW
  add r2.z, r2.z, r3.x  // r2.z <- lumaSWSE
  mad r3.x, |r3.y|, l(2.000000), |r4.y|  // r3.x <- edgeHorz4
  mad r2.w, |r3.z|, l(2.000000), |r2.w|  // r2.w <- edgeVert4
  mad r3.y, r1.w, l(-2.000000), r2.y  // r3.y <- edgeHorz3
  mad r2.z, r1.x, l(-2.000000), r2.z  // r2.z <- edgeVert3
  add r3.x, r3.x, |r3.y|  // r3.x <- edgeHorz
  add r2.z, r2.w, |r2.z|  // r2.z <- edgeVert

#line 98
  add r2.y, r4.x, r2.y  // r2.y <- subpixNWSWNESE
  ge r2.z, r3.x, r2.z  // r2.z <- horzSpan
  mad r2.y, r3.w, l(2.000000), r2.y  // r2.y <- subpixA
  movc r1.xz, r2.zzzz, r1.xxzx, r1.yywy  // r1.x <- lumaS; r1.z <- lumaN

#line 107
  movc r1.y, r2.z, cb0[0].y, cb0[0].x  // r1.y <- lengthSign
  mad r1.w, r2.y, l(0.083333), -r0.w  // r1.w <- subpixB
  add r2.yw, -r0.wwww, r1.zzzx  // r2.y <- gradientN; r2.w <- gradientS
  add r1.xz, r0.wwww, r1.xxzx  // r1.z <- lumaNN; r1.x <- lumaSS
  ge r3.x, |r2.y|, |r2.w|  // r3.x <- pairN
  max r2.y, |r2.w|, |r2.y|  // r2.y <- gradient
  movc r1.y, r3.x, -r1.y, r1.y
  mul_sat r1.w, r2.x, |r1.w|  // r1.w <- subpixC

#line 122
  and r2.x, r2.z, cb0[0].x  // r2.x <- offNP.x
  movc r2.w, r2.z, l(0), cb0[0].y  // r2.w <- offNP.y

#line 127
  mad r3.yz, r1.yyyy, l(0.000000, 0.500000, 0.500000, 0.000000), v1.xxyx  // r3.y <- posB.x; r3.z <- posB.y
  movc r3.y, r2.z, v1.x, r3.y
  movc r3.z, r2.z, r3.z, v1.y
  add r4.xy, -r2.xwxx, r3.yzyy  // r4.x <- posN.x; r4.y <- posN.y

#line 132
  add r5.xy, r2.xwxx, r3.yzyy  // r5.x <- posP.x; r5.y <- posP.y
  mad r3.y, r1.w, l(-2.000000), l(3.000000)  // r3.y <- subpixD
  sample_l_indexable(texture2d)(float,float,float,float) r3.z, r4.xyxx, t0.xywz, s0, l(0.000000)
  mul r1.w, r1.w, r1.w  // r1.w <- subpixE
  sample_l_indexable(texture2d)(float,float,float,float) r3.w, r5.xyxx, t0.xyzw, s0, l(0.000000)
  movc r1.x, r3.x, r1.z, r1.x  // r1.x <- lumaNN
  mul r1.z, r2.y, l(0.250000)  // r1.z <- gradientScaled
  mad r2.y, -r1.x, l(0.500000), r0.w  // r2.y <- lumaMM
  mul r1.w, r1.w, r3.y  // r1.w <- subpixF

#line 143
  lt r2.y, r2.y, l(0.000000)  // r2.y <- lumaMLTZero
  mad r3.x, -r1.x, l(0.500000), r3.z  // r3.x <- lumaEndN
  mad r3.y, -r1.x, l(0.500000), r3.w  // r3.y <- lumaEndP
  ge r3.zw, |r3.xxxy|, r1.zzzz  // r3.z <- doneN; r3.w <- doneP
  mad r4.z, -r2.x, l(1.500000), r4.x  // r4.z <- posN.x
  movc r4.x, r3.z, r4.x, r4.z  // r4.x <- posN.x
  mad r4.w, -r2.w, l(1.500000), r4.y  // r4.w <- posN.y
  movc r4.z, r3.z, r4.y, r4.w  // r4.z <- posN.y
  not r4.yw, r3.zzzw
  or r4.y, r4.w, r4.y  // r4.y <- doneNP

#line 154
  mad r4.w, r2.x, l(1.500000), r5.x  // r4.w <- posP.x
  movc r5.x, r3.w, r5.x, r4.w  // r5.x <- posP.x
  mad r4.w, r2.w, l(1.500000), r5.y  // r4.w <- posP.y
  movc r5.z, r3.w, r5.y, r4.w  // r5.z <- posP.y
  if_nz r4.y
    if_z r3.z
      sample_l_indexable(texture2d)(float,float,float,float) r3.x, r4.xzxx, t0.wxyz, s0, l(0.000000)
    endif   // r3.x <- lumaEndN
    if_z r3.w
      sample_l_indexable(texture2d)(float,float,float,float) r3.y, r5.xzxx, t0.xwyz, s0, l(0.000000)
    endif   // r3.y <- lumaEndP
    mad r4.y, -r1.x, l(0.500000), r3.x  // r4.y <- lumaEndN
    movc r3.x, r3.z, r3.x, r4.y  // r3.x <- lumaEndN

#line 166
    mad r3.z, -r1.x, l(0.500000), r3.y  // r3.z <- lumaEndP
    movc r3.y, r3.w, r3.y, r3.z  // r3.y <- lumaEndP
    ge r3.zw, |r3.xxxy|, r1.zzzz  // r3.z <- doneN
    mad r4.y, -r2.x, l(2.000000), r4.x  // r4.y <- posN.x
    movc r4.x, r3.z, r4.x, r4.y  // r4.x <- posN.x
    mad r4.y, -r2.w, l(2.000000), r4.z  // r4.y <- posN.y
    movc r4.z, r3.z, r4.z, r4.y  // r4.z <- posN.y
    not r4.yw, r3.zzzw
    or r4.y, r4.w, r4.y  // r4.y <- doneNP
    mad r4.w, r2.x, l(2.000000), r5.x  // r4.w <- posP.x
    movc r5.x, r3.w, r5.x, r4.w  // r5.x <- posP.x

#line 177
    mad r4.w, r2.w, l(2.000000), r5.z  // r4.w <- posP.y
    movc r5.z, r3.w, r5.z, r4.w  // r5.z <- posP.y
    if_nz r4.y
      if_z r3.z
        sample_l_indexable(texture2d)(float,float,float,float) r3.x, r4.xzxx, t0.wxyz, s0, l(0.000000)
      endif   // r3.x <- lumaEndN
      if_z r3.w
        sample_l_indexable(texture2d)(float,float,float,float) r3.y, r5.xzxx, t0.xwyz, s0, l(0.000000)
      endif   // r3.y <- lumaEndP
      mad r4.y, -r1.x, l(0.500000), r3.x  // r4.y <- lumaEndN
      movc r3.x, r3.z, r3.x, r4.y  // r3.x <- lumaEndN
      mad r3.z, -r1.x, l(0.500000), r3.y  // r3.z <- lumaEndP
      movc r3.y, r3.w, r3.y, r3.z  // r3.y <- lumaEndP

#line 189
      ge r3.zw, |r3.xxxy|, r1.zzzz  // r3.z <- doneN
      mad r4.y, -r2.x, l(2.000000), r4.x  // r4.y <- posN.x
      movc r4.x, r3.z, r4.x, r4.y  // r4.x <- posN.x
      mad r4.y, -r2.w, l(2.000000), r4.z  // r4.y <- posN.y
      movc r4.z, r3.z, r4.z, r4.y  // r4.z <- posN.y
      not r4.yw, r3.zzzw
      or r4.y, r4.w, r4.y  // r4.y <- doneNP
      mad r4.w, r2.x, l(2.000000), r5.x  // r4.w <- posP.x
      movc r5.x, r3.w, r5.x, r4.w  // r5.x <- posP.x
      mad r4.w, r2.w, l(2.000000), r5.z  // r4.w <- posP.y
      movc r5.z, r3.w, r5.z, r4.w  // r5.z <- posP.y
      if_nz r4.y

#line 201
        if_z r3.z
          sample_l_indexable(texture2d)(float,float,float,float) r3.x, r4.xzxx, t0.wxyz, s0, l(0.000000)
        endif   // r3.x <- lumaEndN
        if_z r3.w
          sample_l_indexable(texture2d)(float,float,float,float) r3.y, r5.xzxx, t0.xwyz, s0, l(0.000000)
        endif   // r3.y <- lumaEndP
        mad r4.y, -r1.x, l(0.500000), r3.x  // r4.y <- lumaEndN
        movc r3.x, r3.z, r3.x, r4.y  // r3.x <- lumaEndN
        mad r3.z, -r1.x, l(0.500000), r3.y  // r3.z <- lumaEndP
        movc r3.y, r3.w, r3.y, r3.z  // r3.y <- lumaEndP
        ge r3.zw, |r3.xxxy|, r1.zzzz  // r3.z <- doneN

#line 212
        mad r4.y, -r2.x, l(2.000000), r4.x  // r4.y <- posN.x
        movc r4.x, r3.z, r4.x, r4.y  // r4.x <- posN.x
        mad r4.y, -r2.w, l(2.000000), r4.z  // r4.y <- posN.y
        movc r4.z, r3.z, r4.z, r4.y  // r4.z <- posN.y
        not r4.yw, r3.zzzw
        or r4.y, r4.w, r4.y  // r4.y <- doneNP
        mad r4.w, r2.x, l(2.000000), r5.x  // r4.w <- posP.x
        movc r5.x, r3.w, r5.x, r4.w  // r5.x <- posP.x
        mad r4.w, r2.w, l(2.000000), r5.z  // r4.w <- posP.y
        movc r5.z, r3.w, r5.z, r4.w  // r5.z <- posP.y
        if_nz r4.y
          if_z r3.z

#line 223
            sample_l_indexable(texture2d)(float,float,float,float) r3.x, r4.xzxx, t0.wxyz, s0, l(0.000000)
          endif   // r3.x <- lumaEndN
          if_z r3.w
            sample_l_indexable(texture2d)(float,float,float,float) r3.y, r5.xzxx, t0.xwyz, s0, l(0.000000)
          endif   // r3.y <- lumaEndP
          mad r4.y, -r1.x, l(0.500000), r3.x  // r4.y <- lumaEndN
          movc r3.x, r3.z, r3.x, r4.y  // r3.x <- lumaEndN
          mad r3.z, -r1.x, l(0.500000), r3.y  // r3.z <- lumaEndP
          movc r3.y, r3.w, r3.y, r3.z  // r3.y <- lumaEndP
          ge r3.zw, |r3.xxxy|, r1.zzzz  // r3.z <- doneN
          mad r4.y, -r2.x, l(2.000000), r4.x  // r4.y <- posN.x
          movc r4.x, r3.z, r4.x, r4.y  // r4.x <- posN.x

#line 235
          mad r4.y, -r2.w, l(2.000000), r4.z  // r4.y <- posN.y
          movc r4.z, r3.z, r4.z, r4.y  // r4.z <- posN.y
          not r4.yw, r3.zzzw
          or r4.y, r4.w, r4.y  // r4.y <- doneNP
          mad r4.w, r2.x, l(2.000000), r5.x  // r4.w <- posP.x
          movc r5.x, r3.w, r5.x, r4.w  // r5.x <- posP.x
          mad r4.w, r2.w, l(2.000000), r5.z  // r4.w <- posP.y
          movc r5.z, r3.w, r5.z, r4.w  // r5.z <- posP.y
          if_nz r4.y
            if_z r3.z
              sample_l_indexable(texture2d)(float,float,float,float) r3.x, r4.xzxx, t0.wxyz, s0, l(0.000000)
            endif   // r3.x <- lumaEndN
            if_z r3.w

#line 246
              sample_l_indexable(texture2d)(float,float,float,float) r3.y, r5.xzxx, t0.xwyz, s0, l(0.000000)
            endif   // r3.y <- lumaEndP
            mad r4.y, -r1.x, l(0.500000), r3.x  // r4.y <- lumaEndN
            movc r3.x, r3.z, r3.x, r4.y  // r3.x <- lumaEndN
            mad r3.z, -r1.x, l(0.500000), r3.y  // r3.z <- lumaEndP
            movc r3.y, r3.w, r3.y, r3.z  // r3.y <- lumaEndP
            ge r3.zw, |r3.xxxy|, r1.zzzz  // r3.z <- doneN
            mad r4.y, -r2.x, l(4.000000), r4.x  // r4.y <- posN.x
            movc r4.x, r3.z, r4.x, r4.y  // r4.x <- posN.x
            mad r4.y, -r2.w, l(4.000000), r4.z  // r4.y <- posN.y
            movc r4.z, r3.z, r4.z, r4.y  // r4.z <- posN.y

#line 257
            not r4.yw, r3.zzzw
            or r4.y, r4.w, r4.y  // r4.y <- doneNP
            mad r4.w, r2.x, l(4.000000), r5.x  // r4.w <- posP.x
            movc r5.x, r3.w, r5.x, r4.w  // r5.x <- posP.x
            mad r4.w, r2.w, l(4.000000), r5.z  // r4.w <- posP.y
            movc r5.z, r3.w, r5.z, r4.w  // r5.z <- posP.y
            if_nz r4.y
              if_z r3.z
                sample_l_indexable(texture2d)(float,float,float,float) r3.x, r4.xzxx, t0.wxyz, s0, l(0.000000)
              endif   // r3.x <- lumaEndN
              if_z r3.w
                sample_l_indexable(texture2d)(float,float,float,float) r3.y, r5.xzxx, t0.xwyz, s0, l(0.000000)
              endif   // r3.y <- lumaEndP

#line 269
              mad r4.y, -r1.x, l(0.500000), r3.x  // r4.y <- lumaEndN
              movc r3.x, r3.z, r3.x, r4.y  // r3.x <- lumaEndN
              mad r1.x, -r1.x, l(0.500000), r3.y  // r1.x <- lumaEndP
              movc r3.y, r3.w, r3.y, r1.x  // r3.y <- lumaEndP
              ge r1.xz, |r3.xxyx|, r1.zzzz  // r1.x <- doneN; r1.z <- doneP
              mad r3.z, -r2.x, l(12.000000), r4.x  // r3.z <- posN.x
              movc r4.x, r1.x, r4.x, r3.z  // r4.x <- posN.x
              mad r3.z, -r2.w, l(12.000000), r4.z  // r3.z <- posN.y
              movc r4.z, r1.x, r4.z, r3.z  // r4.z <- posN.y

#line 280
              mad r1.x, r2.x, l(12.000000), r5.x  // r1.x <- posP.x
              movc r5.x, r1.z, r5.x, r1.x  // r5.x <- posP.x
              mad r1.x, r2.w, l(12.000000), r5.z  // r1.x <- posP.y
              movc r5.z, r1.z, r5.z, r1.x  // r5.z <- posP.y
            endif 
          endif 
        endif 
      endif 
    endif 
  endif 
  add r1.x, -r4.x, v1.x  // r1.x <- dstN
  add r1.z, r5.x, -v1.x  // r1.z <- dstP

#line 292
  add r2.x, -r4.z, v1.y  // r2.x <- dstN
  movc r1.x, r2.z, r1.x, r2.x  // r1.x <- dstN
  add r2.x, r5.z, -v1.y  // r2.x <- dstP
  movc r1.z, r2.z, r1.z, r2.x  // r1.z <- dstP

#line 297
  lt r2.xw, r3.xxxy, l(0.000000, 0.000000, 0.000000, 0.000000)
  add r3.x, r1.x, r1.z  // r3.x <- spanLength
  ine r2.xy, r2.yyyy, r2.xwxx  // r2.x <- goodSpanN; r2.y <- goodSpanP
  div r2.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.x  // r2.w <- spanLengthRcp
  lt r3.x, r1.x, r1.z  // r3.x <- directionN
  min r1.x, r1.z, r1.x  // r1.x <- dst
  movc r1.z, r3.x, r2.x, r2.y  // r1.z <- goodSpan
  mul r1.w, r1.w, r1.w  // r1.w <- subpixG
  mad r1.x, r1.x, -r2.w, l(0.500000)  // r1.x <- pixelOffset
  mul r1.w, r1.w, l(0.750000)  // r1.w <- subpixH
  and r1.x, r1.x, r1.z  // r1.x <- pixelOffsetGood
  max r1.x, r1.w, r1.x  // r1.x <- pixelOffsetSubpix

#line 310
  mad r1.xy, r1.xxxx, r1.yyyy, v1.xyxx  // r1.x <- posM.x; r1.y <- posM.y
  movc r2.x, r2.z, v1.x, r1.x  // r2.x <- posM.x
  movc r2.y, r2.z, r1.y, v1.y  // r2.y <- posM.y
  sample_l_indexable(texture2d)(float,float,float,float) r0.xyz, r2.xyxx, t0.xyzw, s0, l(0.000000)  // r0.x <- <FxaaPixelShader_id4 return value>.x; r0.y <- <FxaaPixelShader_id4 return value>.y; r0.z <- <FxaaPixelShader_id4 return value>.z
endif 

#line 326
mov o0.xyzw, r0.xyzw
ret 
// Approximately 241 instruction slots used
***************************
*************************/
Texture2D Texture0_id13;
SamplerState LinearSampler_id43 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
struct PS_STREAMS 
{
    float2 TexCoord_id61;
    float4 ColorTarget_id1;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id1 : SV_Target0;
};
struct VS_STREAMS 
{
    float4 Position_id71;
    float2 TexCoord_id61;
    float4 ShadingPosition_id0;
};
struct VS_OUTPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float2 TexCoord_id61 : TEXCOORD0;
};
struct VS_INPUT 
{
    float4 Position_id71 : POSITION;
    float2 TexCoord_id61 : TEXCOORD0;
};
cbuffer PerDraw 
{
    float4x4 MatrixTransform_id72;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id14;
    float2 Texture1TexelSize_id16;
    float2 Texture2TexelSize_id18;
    float2 Texture3TexelSize_id20;
    float2 Texture4TexelSize_id22;
    float2 Texture5TexelSize_id24;
    float2 Texture6TexelSize_id26;
    float2 Texture7TexelSize_id28;
    float2 Texture8TexelSize_id30;
    float2 Texture9TexelSize_id32;
};
float FxaaLuma_id3(float4 rgba)
{
    return rgba.w;
}
float4 FxaaPixelShader_id4(float2 pos, float4 fxaaConsolePosPos, Texture2D tex, Texture2D fxaaConsole360TexExpBiasNegOne, Texture2D fxaaConsole360TexExpBiasNegTwo, float2 fxaaQualityRcpFrame, float4 fxaaConsoleRcpFrameOpt, float4 fxaaConsoleRcpFrameOpt2, float4 fxaaConsole360RcpFrameOpt2, float fxaaQualitySubpix, float fxaaQualityEdgeThreshold, float fxaaQualityEdgeThresholdMin, float fxaaConsoleEdgeSharpness, float fxaaConsoleEdgeThreshold, float fxaaConsoleEdgeThresholdMin, float4 fxaaConsole360ConstDir)
{
    float2 posM;
    posM.x = pos.x;
    posM.y = pos.y;
    float4 rgbyM = tex.SampleLevel(LinearSampler_id43, posM, 0.0);
    float lumaS = FxaaLuma_id3(tex.SampleLevel(LinearSampler_id43, posM, 0.0, int2(0, 1)));
    float lumaE = FxaaLuma_id3(tex.SampleLevel(LinearSampler_id43, posM, 0.0, int2(1, 0)));
    float lumaN = FxaaLuma_id3(tex.SampleLevel(LinearSampler_id43, posM, 0.0, int2(0, -1)));
    float lumaW = FxaaLuma_id3(tex.SampleLevel(LinearSampler_id43, posM, 0.0, int2(-1, 0)));
    float maxSM = max(lumaS, rgbyM.w);
    float minSM = min(lumaS, rgbyM.w);
    float maxESM = max(lumaE, maxSM);
    float minESM = min(lumaE, minSM);
    float maxWN = max(lumaN, lumaW);
    float minWN = min(lumaN, lumaW);
    float rangeMax = max(maxWN, maxESM);
    float rangeMin = min(minWN, minESM);
    float rangeMaxScaled = rangeMax * fxaaQualityEdgeThreshold;
    float range = rangeMax - rangeMin;
    float rangeMaxClamped = max(fxaaQualityEdgeThresholdMin, rangeMaxScaled);
    bool earlyExit = range < rangeMaxClamped;
    if (earlyExit)
        return rgbyM;
    float lumaNW = FxaaLuma_id3(tex.SampleLevel(LinearSampler_id43, posM, 0.0, int2(-1, -1)));
    float lumaSE = FxaaLuma_id3(tex.SampleLevel(LinearSampler_id43, posM, 0.0, int2(1, 1)));
    float lumaNE = FxaaLuma_id3(tex.SampleLevel(LinearSampler_id43, posM, 0.0, int2(1, -1)));
    float lumaSW = FxaaLuma_id3(tex.SampleLevel(LinearSampler_id43, posM, 0.0, int2(-1, 1)));
    float lumaNS = lumaN + lumaS;
    float lumaWE = lumaW + lumaE;
    float subpixRcpRange = 1.0 / range;
    float subpixNSWE = lumaNS + lumaWE;
    float edgeHorz1 = (-2.0 * rgbyM.w) + lumaNS;
    float edgeVert1 = (-2.0 * rgbyM.w) + lumaWE;
    float lumaNESE = lumaNE + lumaSE;
    float lumaNWNE = lumaNW + lumaNE;
    float edgeHorz2 = (-2.0 * lumaE) + lumaNESE;
    float edgeVert2 = (-2.0 * lumaN) + lumaNWNE;
    float lumaNWSW = lumaNW + lumaSW;
    float lumaSWSE = lumaSW + lumaSE;
    float edgeHorz4 = (abs(edgeHorz1) * 2.0) + abs(edgeHorz2);
    float edgeVert4 = (abs(edgeVert1) * 2.0) + abs(edgeVert2);
    float edgeHorz3 = (-2.0 * lumaW) + lumaNWSW;
    float edgeVert3 = (-2.0 * lumaS) + lumaSWSE;
    float edgeHorz = abs(edgeHorz3) + edgeHorz4;
    float edgeVert = abs(edgeVert3) + edgeVert4;
    float subpixNWSWNESE = lumaNWSW + lumaNESE;
    float lengthSign = fxaaQualityRcpFrame.x;
    bool horzSpan = edgeHorz >= edgeVert;
    float subpixA = subpixNSWE * 2.0 + subpixNWSWNESE;
    if (!horzSpan)
        lumaN = lumaW;
    if (!horzSpan)
        lumaS = lumaE;
    if (horzSpan)
        lengthSign = fxaaQualityRcpFrame.y;
    float subpixB = (subpixA * (1.0 / 12.0)) - rgbyM.w;
    float gradientN = lumaN - rgbyM.w;
    float gradientS = lumaS - rgbyM.w;
    float lumaNN = lumaN + rgbyM.w;
    float lumaSS = lumaS + rgbyM.w;
    bool pairN = abs(gradientN) >= abs(gradientS);
    float gradient = max(abs(gradientN), abs(gradientS));
    if (pairN)
        lengthSign = -lengthSign;
    float subpixC = saturate(abs(subpixB) * subpixRcpRange);
    float2 posB;
    posB.x = posM.x;
    posB.y = posM.y;
    float2 offNP;
    offNP.x = (!horzSpan) ? 0.0 : fxaaQualityRcpFrame.x;
    offNP.y = (horzSpan) ? 0.0 : fxaaQualityRcpFrame.y;
    if (!horzSpan)
        posB.x += lengthSign * 0.5;
    if (horzSpan)
        posB.y += lengthSign * 0.5;
    float2 posN;
    posN.x = posB.x - offNP.x * 1.0;
    posN.y = posB.y - offNP.y * 1.0;
    float2 posP;
    posP.x = posB.x + offNP.x * 1.0;
    posP.y = posB.y + offNP.y * 1.0;
    float subpixD = ((-2.0) * subpixC) + 3.0;
    float lumaEndN = FxaaLuma_id3(tex.SampleLevel(LinearSampler_id43, posN, 0.0));
    float subpixE = subpixC * subpixC;
    float lumaEndP = FxaaLuma_id3(tex.SampleLevel(LinearSampler_id43, posP, 0.0));
    if (!pairN)
        lumaNN = lumaSS;
    float gradientScaled = gradient * 1.0 / 4.0;
    float lumaMM = rgbyM.w - lumaNN * 0.5;
    float subpixF = subpixD * subpixE;
    bool lumaMLTZero = lumaMM < 0.0;
    lumaEndN -= lumaNN * 0.5;
    lumaEndP -= lumaNN * 0.5;
    bool doneN = abs(lumaEndN) >= gradientScaled;
    bool doneP = abs(lumaEndP) >= gradientScaled;
    if (!doneN)
        posN.x -= offNP.x * 1.5;
    if (!doneN)
        posN.y -= offNP.y * 1.5;
    bool doneNP = (!doneN) || (!doneP);
    if (!doneP)
        posP.x += offNP.x * 1.5;
    if (!doneP)
        posP.y += offNP.y * 1.5;
    if (doneNP)
    {
        if (!doneN)
            lumaEndN = FxaaLuma_id3(tex.SampleLevel(LinearSampler_id43, posN.xy, 0.0));
        if (!doneP)
            lumaEndP = FxaaLuma_id3(tex.SampleLevel(LinearSampler_id43, posP.xy, 0.0));
        if (!doneN)
            lumaEndN = lumaEndN - lumaNN * 0.5;
        if (!doneP)
            lumaEndP = lumaEndP - lumaNN * 0.5;
        doneN = abs(lumaEndN) >= gradientScaled;
        doneP = abs(lumaEndP) >= gradientScaled;
        if (!doneN)
            posN.x -= offNP.x * 2.0;
        if (!doneN)
            posN.y -= offNP.y * 2.0;
        doneNP = (!doneN) || (!doneP);
        if (!doneP)
            posP.x += offNP.x * 2.0;
        if (!doneP)
            posP.y += offNP.y * 2.0;
        if (doneNP)
        {
            if (!doneN)
                lumaEndN = FxaaLuma_id3(tex.SampleLevel(LinearSampler_id43, posN.xy, 0.0));
            if (!doneP)
                lumaEndP = FxaaLuma_id3(tex.SampleLevel(LinearSampler_id43, posP.xy, 0.0));
            if (!doneN)
                lumaEndN = lumaEndN - lumaNN * 0.5;
            if (!doneP)
                lumaEndP = lumaEndP - lumaNN * 0.5;
            doneN = abs(lumaEndN) >= gradientScaled;
            doneP = abs(lumaEndP) >= gradientScaled;
            if (!doneN)
                posN.x -= offNP.x * 2.0;
            if (!doneN)
                posN.y -= offNP.y * 2.0;
            doneNP = (!doneN) || (!doneP);
            if (!doneP)
                posP.x += offNP.x * 2.0;
            if (!doneP)
                posP.y += offNP.y * 2.0;
            if (doneNP)
            {
                if (!doneN)
                    lumaEndN = FxaaLuma_id3(tex.SampleLevel(LinearSampler_id43, posN.xy, 0.0));
                if (!doneP)
                    lumaEndP = FxaaLuma_id3(tex.SampleLevel(LinearSampler_id43, posP.xy, 0.0));
                if (!doneN)
                    lumaEndN = lumaEndN - lumaNN * 0.5;
                if (!doneP)
                    lumaEndP = lumaEndP - lumaNN * 0.5;
                doneN = abs(lumaEndN) >= gradientScaled;
                doneP = abs(lumaEndP) >= gradientScaled;
                if (!doneN)
                    posN.x -= offNP.x * 2.0;
                if (!doneN)
                    posN.y -= offNP.y * 2.0;
                doneNP = (!doneN) || (!doneP);
                if (!doneP)
                    posP.x += offNP.x * 2.0;
                if (!doneP)
                    posP.y += offNP.y * 2.0;
                if (doneNP)
                {
                    if (!doneN)
                        lumaEndN = FxaaLuma_id3(tex.SampleLevel(LinearSampler_id43, posN.xy, 0.0));
                    if (!doneP)
                        lumaEndP = FxaaLuma_id3(tex.SampleLevel(LinearSampler_id43, posP.xy, 0.0));
                    if (!doneN)
                        lumaEndN = lumaEndN - lumaNN * 0.5;
                    if (!doneP)
                        lumaEndP = lumaEndP - lumaNN * 0.5;
                    doneN = abs(lumaEndN) >= gradientScaled;
                    doneP = abs(lumaEndP) >= gradientScaled;
                    if (!doneN)
                        posN.x -= offNP.x * 2.0;
                    if (!doneN)
                        posN.y -= offNP.y * 2.0;
                    doneNP = (!doneN) || (!doneP);
                    if (!doneP)
                        posP.x += offNP.x * 2.0;
                    if (!doneP)
                        posP.y += offNP.y * 2.0;
                    if (doneNP)
                    {
                        if (!doneN)
                            lumaEndN = FxaaLuma_id3(tex.SampleLevel(LinearSampler_id43, posN.xy, 0.0));
                        if (!doneP)
                            lumaEndP = FxaaLuma_id3(tex.SampleLevel(LinearSampler_id43, posP.xy, 0.0));
                        if (!doneN)
                            lumaEndN = lumaEndN - lumaNN * 0.5;
                        if (!doneP)
                            lumaEndP = lumaEndP - lumaNN * 0.5;
                        doneN = abs(lumaEndN) >= gradientScaled;
                        doneP = abs(lumaEndP) >= gradientScaled;
                        if (!doneN)
                            posN.x -= offNP.x * 4.0;
                        if (!doneN)
                            posN.y -= offNP.y * 4.0;
                        doneNP = (!doneN) || (!doneP);
                        if (!doneP)
                            posP.x += offNP.x * 4.0;
                        if (!doneP)
                            posP.y += offNP.y * 4.0;
                        if (doneNP)
                        {
                            if (!doneN)
                                lumaEndN = FxaaLuma_id3(tex.SampleLevel(LinearSampler_id43, posN.xy, 0.0));
                            if (!doneP)
                                lumaEndP = FxaaLuma_id3(tex.SampleLevel(LinearSampler_id43, posP.xy, 0.0));
                            if (!doneN)
                                lumaEndN = lumaEndN - lumaNN * 0.5;
                            if (!doneP)
                                lumaEndP = lumaEndP - lumaNN * 0.5;
                            doneN = abs(lumaEndN) >= gradientScaled;
                            doneP = abs(lumaEndP) >= gradientScaled;
                            if (!doneN)
                                posN.x -= offNP.x * 12.0;
                            if (!doneN)
                                posN.y -= offNP.y * 12.0;
                            doneNP = (!doneN) || (!doneP);
                            if (!doneP)
                                posP.x += offNP.x * 12.0;
                            if (!doneP)
                                posP.y += offNP.y * 12.0;
                        }
                    }
                }
            }
        }
    }
    float dstN = posM.x - posN.x;
    float dstP = posP.x - posM.x;
    if (!horzSpan)
        dstN = posM.y - posN.y;
    if (!horzSpan)
        dstP = posP.y - posM.y;
    bool goodSpanN = (lumaEndN < 0.0) != lumaMLTZero;
    float spanLength = (dstP + dstN);
    bool goodSpanP = (lumaEndP < 0.0) != lumaMLTZero;
    float spanLengthRcp = 1.0 / spanLength;
    bool directionN = dstN < dstP;
    float dst = min(dstN, dstP);
    bool goodSpan = directionN ? goodSpanN : goodSpanP;
    float subpixG = subpixF * subpixF;
    float pixelOffset = (dst * (-spanLengthRcp)) + 0.5;
    float subpixH = subpixG * fxaaQualitySubpix;
    float pixelOffsetGood = goodSpan ? pixelOffset : 0.0;
    float pixelOffsetSubpix = max(pixelOffsetGood, subpixH);
    if (!horzSpan)
        posM.x += pixelOffsetSubpix * lengthSign;
    if (horzSpan)
        posM.y += pixelOffsetSubpix * lengthSign;
    return float4(tex.SampleLevel(LinearSampler_id43, posM, 0.0).xyz, rgbyM.w);
}
float4 Shading_id5(inout PS_STREAMS streams)
{
    float2 texCoord = streams.TexCoord_id61;
    float2 screenPixelRatio = Texture0TexelSize_id14;
    return FxaaPixelShader_id4(texCoord, 0, Texture0_id13, Texture0_id13, Texture0_id13, screenPixelRatio, 0, 0, 0, 0.75, 0.063, 0.0312, 8, 0.125, 0.05, 0);
}
PS_OUTPUT PSMain(VS_OUTPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.TexCoord_id61 = __input__.TexCoord_id61;
    streams.ColorTarget_id1 = Shading_id5(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id1 = streams.ColorTarget_id1;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id71 = __input__.Position_id71;
    streams.TexCoord_id61 = __input__.TexCoord_id61;
    streams.ShadingPosition_id0 = mul(streams.Position_id71, MatrixTransform_id72);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.TexCoord_id61 = streams.TexCoord_id61;
    return __output__;
}
