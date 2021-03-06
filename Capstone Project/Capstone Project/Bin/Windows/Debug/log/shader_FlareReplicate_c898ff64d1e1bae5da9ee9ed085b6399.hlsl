/**************************
***** Compiler Parameters *****
***************************
@P EffectName: FlareReplicate
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 64]
@C    MatrixTransform_id72 => SpriteBase.MatrixTransform
cbuffer Globals [Size: 96]
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
@C    Amount_id73 => FlareReplicate.Amount
@C    HaloFactor_id74 => FlareReplicate.HaloFactor
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    LinearSampler_id43 => Texturing.LinearSampler [Stage: Pixel, Slot: (0-0)]
@R    Texture0_id13 => Texturing.Texture0 [Stage: Pixel, Slot: (0-0)]
@R    Texture1_id15 => Texturing.Texture1 [Stage: Pixel, Slot: (1-1)]
@R    Globals => Globals [Stage: Pixel, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    FlareReplicate => db16a73bb05162ee8cb9c63eeba30891
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
#line 97 "C:\Users\Joseph Braunstein\Desktop\FacePalmStudios-Xenko3D\Capstone Project\Capstone Project\Bin\Windows\Debug\log\shader_FlareReplicate_c898ff64d1e1bae5da9ee9ed085b6399.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 101
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => 22610d9d06340a9f73a14fd101ee2e28
//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//
// Buffer Definitions: 
//
// cbuffer Globals
// {
//
//   float2 Texture0TexelSize_id14;     // Offset:    0 Size:     8 [unused]
//   float2 Texture1TexelSize_id16;     // Offset:    8 Size:     8 [unused]
//   float2 Texture2TexelSize_id18;     // Offset:   16 Size:     8 [unused]
//   float2 Texture3TexelSize_id20;     // Offset:   24 Size:     8 [unused]
//   float2 Texture4TexelSize_id22;     // Offset:   32 Size:     8 [unused]
//   float2 Texture5TexelSize_id24;     // Offset:   40 Size:     8 [unused]
//   float2 Texture6TexelSize_id26;     // Offset:   48 Size:     8 [unused]
//   float2 Texture7TexelSize_id28;     // Offset:   56 Size:     8 [unused]
//   float2 Texture8TexelSize_id30;     // Offset:   64 Size:     8 [unused]
//   float2 Texture9TexelSize_id32;     // Offset:   72 Size:     8 [unused]
//   float Amount_id73;                 // Offset:   80 Size:     4
//   float HaloFactor_id74;             // Offset:   84 Size:     4
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
// Texture1_id15                     texture  float4          2d    1        1
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
dcl_constantbuffer cb0[6], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 6
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.TexCoord_id61.x; v1.y <- __input__.TexCoord_id61.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id1.x; o0.y <- <PSMain return value>.ColorTarget_id1.y; o0.z <- <PSMain return value>.ColorTarget_id1.z; o0.w <- <PSMain return value>.ColorTarget_id1.w
//
#line 57 "C:\Users\Joseph Braunstein\Desktop\FacePalmStudios-Xenko3D\Capstone Project\Capstone Project\Bin\Windows\Debug\log\shader_FlareReplicate_c898ff64d1e1bae5da9ee9ed085b6399.hlsl"
lt r0.xy, v1.xyxx, l(0.000000, 0.000000, 0.000000, 0.000000)
lt r0.zw, l(0.000000, 0.000000, 1.000000, 1.000000), v1.xxxy
or r0.x, r0.z, r0.x
or r0.x, r0.y, r0.x
or r0.x, r0.w, r0.x
sample_indexable(texture2d)(float,float,float,float) r0.yzw, v1.xyxx, t0.wxyz, s0
add r1.xyzw, v1.xyxy, l(-0.500000, -0.500000, -0.500000, -0.500000)
add r2.xy, -|r1.zwzz|, l(0.500000, 0.500000, 0.000000, 0.000000)
mul r2.xy, r2.xyxx, l(5.555555, 5.555555, 0.000000, 0.000000)  // r2.x <- borderNear.x; r2.y <- borderNear.y
mul_sat r2.x, r2.y, r2.x  // r2.x <- alpha
mul r0.yzw, r0.yyzw, r2.xxxx  // r0.y <- result.x; r0.z <- result.y; r0.w <- result.z
movc r0.xyz, r0.xxxx, l(0,0,0,0), r0.yzwy  // r0.x <- result.x; r0.y <- result.y; r0.z <- result.z

#line 69
mul r2.xyzw, r1.zwzw, l(2.500000, 2.500000, 4.000000, 4.000000)

#line 54
add r2.xyzw, -|r2.xyzw|, l(0.500000, 0.500000, 0.500000, 0.500000)
mul r2.xyzw, r2.xyzw, l(5.555555, 5.555555, 5.555555, 5.555555)  // r2.z <- borderNear.x; r2.w <- borderNear.y
mul_sat r2.xy, r2.ywyy, r2.xzxx  // r2.y <- alpha

#line 69
mad r3.xyzw, r1.zwzw, l(2.500000, 2.500000, 4.000000, 4.000000), l(0.500000, 0.500000, 0.500000, 0.500000)  // r3.z <- uv.x; r3.w <- uv.y

#line 56
sample_indexable(texture2d)(float,float,float,float) r4.xyz, r3.xyxx, t0.xyzw, s0
mul r2.xzw, r2.xxxx, r4.xxyz  // r2.x <- result.x; r2.z <- result.y; r2.w <- result.z; r2.x <- result.x; r2.z <- result.y; r2.w <- result.z
lt r4.xyzw, r3.xyzw, l(0.000000, 0.000000, 0.000000, 0.000000)
lt r5.xyzw, l(1.000000, 1.000000, 1.000000, 1.000000), r3.xyzw
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r3.zwzz, t0.xyzw, s0
mul r3.xyz, r2.yyyy, r3.xyzx  // r3.x <- result.x; r3.y <- result.y; r3.z <- result.z; r3.x <- result.x; r3.y <- result.y; r3.z <- result.z
or r4.xz, r4.xxzx, r5.xxzx
or r4.xy, r4.ywyy, r4.xzxx
or r4.xy, r5.ywyy, r4.xyxx
movc r2.xyz, r4.xxxx, l(0,0,0,0), r2.xzwx  // r2.x <- result.x; r2.y <- result.y; r2.z <- result.z; r2.x <- result.x; r2.y <- result.y; r2.z <- result.z
movc r3.xyz, r4.yyyy, l(0,0,0,0), r3.xyzx  // r3.x <- result.x; r3.y <- result.y; r3.z <- result.z

#line 68
add r0.xyz, r0.xyzx, r2.xyzx  // r0.x <- result.x; r0.y <- result.y; r0.z <- result.z
add r0.xyz, r3.xyzx, r0.xyzx

#line 73
mul r2.xyzw, r1.zwzw, l(-4.500000, -4.500000, -8.000000, -8.000000)

#line 54
add r2.xyzw, -|r2.xyzw|, l(0.500000, 0.500000, 0.500000, 0.500000)
mul r2.xyzw, r2.xyzw, l(5.555555, 5.555555, 5.555555, 5.555555)  // r2.z <- borderNear.x; r2.w <- borderNear.y
mul_sat r2.xy, r2.ywyy, r2.xzxx  // r2.y <- alpha

#line 73
mad r3.xyzw, r1.zwzw, l(-4.500000, -4.500000, -8.000000, -8.000000), l(0.500000, 0.500000, 0.500000, 0.500000)  // r3.z <- uv.x

#line 56
sample_indexable(texture2d)(float,float,float,float) r4.xyz, r3.xyxx, t0.xyzw, s0
mul r2.xzw, r2.xxxx, r4.xxyz  // r2.x <- result.x; r2.z <- result.y; r2.w <- result.z; r2.x <- result.x; r2.z <- result.y; r2.w <- result.z
lt r4.xyzw, r3.xyzw, l(0.000000, 0.000000, 0.000000, 0.000000)
lt r5.xyzw, l(1.000000, 1.000000, 1.000000, 1.000000), r3.xyzw
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r3.zwzz, t0.xyzw, s0
mul r3.xyz, r2.yyyy, r3.xyzx  // r3.x <- result.x; r3.y <- result.y; r3.z <- result.z; r3.x <- result.x; r3.y <- result.y; r3.z <- result.z
or r4.xz, r4.xxzx, r5.xxzx
or r4.xy, r4.ywyy, r4.xzxx
or r4.xy, r5.ywyy, r4.xyxx
movc r2.xyz, r4.xxxx, l(0,0,0,0), r2.xzwx  // r2.x <- result.x; r2.y <- result.y; r2.z <- result.z; r2.x <- result.x; r2.y <- result.y; r2.z <- result.z
movc r3.xyz, r4.yyyy, l(0,0,0,0), r3.xyzx  // r3.x <- result.x; r3.y <- result.y; r3.z <- result.z

#line 72
add r0.xyz, r0.xyzx, r2.xyzx
add r0.xyz, r3.xyzx, r0.xyzx
add r2.xy, -r1.zwzz, l(0.500000, 0.500000, 0.000000, 0.000000)  // r2.x <- uv.x; r2.y <- uv.y

#line 79
mad r1.xyzw, r1.xyzw, l(-0.050000, -0.050000, 0.100000, 0.100000), l(0.500000, 0.500000, 0.500000, 0.500000)  // r1.z <- uv.x; r1.w <- uv.y

#line 76
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r2.xyxx, t1.xyzw, s0
mad r0.xyz, r2.xyzx, cb0[5].yyyy, r0.xyzx
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r1.xyxx, t1.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r1.zwzz, t1.xyzw, s0
mul r1.xyz, r1.xyzx, cb0[5].yyyy
mad r0.xyz, r2.xyzx, cb0[5].xxxx, r0.xyzx
mad o0.xyz, r1.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), r0.xyzx

#line 90
mov o0.w, l(1.000000)
ret 
// Approximately 59 instruction slots used
***************************
*************************/
Texture2D Texture0_id13;
Texture2D Texture1_id15;
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
    float Amount_id73;
    float HaloFactor_id74;
};
float3 softBorderTap_id3(float2 uv)
{
    float border = 0.18;
    float2 borderNear = lerp(float2(0.0, 0.0), float2(1.0, 1.0), (0.5 - abs(uv - 0.5)) / border);
    float alpha = saturate(borderNear.x * borderNear.y);
    float3 result = Texture0_id13.Sample(LinearSampler_id43, uv).rgb * alpha;
    if (uv.x < 0.0 || uv.x > 1.0 || uv.y < 0.0 || uv.y > 1.0)
        result = float3(0.0, 0.0, 0.0);
    return result;
}
float4 Shading_id4(inout PS_STREAMS streams)
{
    float3 result = float3(0.0, 0.0, 0.0);
    float2 originalUV = streams.TexCoord_id61;
    float2 uv = originalUV;
    result += softBorderTap_id3(uv);
    uv = (originalUV - 0.5) * 2.5 + 0.5;
    result += softBorderTap_id3(uv);
    uv = (originalUV - 0.5) * 4.0 + 0.5;
    result += softBorderTap_id3(uv);
    uv = (originalUV - 0.5) * -4.5 + 0.5;
    result += softBorderTap_id3(uv);
    uv = (originalUV - 0.5) * -8.0 + 0.5;
    result += softBorderTap_id3(uv);
    uv = (originalUV - 0.5) * -1.0 + 0.5;
    result += Texture1_id15.Sample(LinearSampler_id43, uv).rgb * HaloFactor_id74;
    uv = (originalUV - 0.5) * -0.05 + 0.5;
    result += Texture1_id15.Sample(LinearSampler_id43, uv).rgb * Amount_id73;
    uv = (originalUV - 0.5) * 0.1 + 0.5;
    result += Texture1_id15.Sample(LinearSampler_id43, uv).rgb * HaloFactor_id74 * 0.5;
    return float4(result, 1.0);
}
PS_OUTPUT PSMain(VS_OUTPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.TexCoord_id61 = __input__.TexCoord_id61;
    streams.ColorTarget_id1 = Shading_id4(streams);
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
