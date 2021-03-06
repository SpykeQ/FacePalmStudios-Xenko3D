/**************************
***** Compiler Parameters *****
***************************
@P EffectName: XenkoForwardShadingEffect
@P   - Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorConstantColorLink<Material.DiffuseValue>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.DirectLightGroups: LightClusteredPointGroup<64>, LightClusteredSpotGroup<64>, mixin LightDirectionalGroup<1>, ShadowMapReceiverDirectional<4,1,true,true,false>, ShadowMapFilterPcf<PerView.Lighting,5>
@P Lighting.EnvironmentLights: LightSimpleAmbient, xkfx LightSkyboxEffect
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: RoughnessCubeMapEnvironmentColor
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 416]
@C    World_id29 => Transformation.World
@C    WorldInverse_id30 => Transformation.WorldInverse
@C    WorldInverseTranspose_id31 => Transformation.WorldInverseTranspose
@C    WorldView_id32 => Transformation.WorldView
@C    WorldViewInverse_id33 => Transformation.WorldViewInverse
@C    WorldViewProjection_id34 => Transformation.WorldViewProjection
@C    WorldScale_id35 => Transformation.WorldScale
@C    EyeMS_id36 => Transformation.EyeMS
cbuffer PerMaterial [Size: 16]
@C    constantColor_id180 => Material.DiffuseValue
cbuffer PerView [Size: 1040]
@C    View_id22 => Transformation.View
@C    ViewInverse_id23 => Transformation.ViewInverse
@C    Projection_id24 => Transformation.Projection
@C    ProjectionInverse_id25 => Transformation.ProjectionInverse
@C    ViewProjection_id26 => Transformation.ViewProjection
@C    ProjScreenRay_id27 => Transformation.ProjScreenRay
@C    Eye_id28 => Transformation.Eye
@C    NearClipPlane_id77 => Camera.NearClipPlane
@C    FarClipPlane_id78 => Camera.FarClipPlane
@C    ZProjection_id79 => Camera.ZProjection
@C    ViewSize_id80 => Camera.ViewSize
@C    AspectRatio_id81 => Camera.AspectRatio
@C    ClusterDepthScale_id87 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id88 => LightClustered.ClusterDepthBias
@C    LightCount_id94 => DirectLightGroupPerView.LightCount.directLightGroups[2]
@C    Lights_id96 => LightDirectionalGroup.Lights.directLightGroups[2]
@C    ShadowMapTextureSize_id98 => ShadowMap.TextureSize.directLightGroups[2]
@C    ShadowMapTextureTexelSize_id99 => ShadowMap.TextureTexelSize.directLightGroups[2]
@C    WorldToShadowCascadeUV_id160 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[2]
@C    DepthBiases_id161 => ShadowMapReceiverBase.DepthBiases.directLightGroups[2]
@C    OffsetScales_id162 => ShadowMapReceiverBase.OffsetScales.directLightGroups[2]
@C    CascadeDepthSplits_id168 => ShadowMapReceiverDirectional.CascadeDepthSplits.directLightGroups[2]
@C    Bias_id170 => ShadowMapFilterPcf.Bias.directLightGroups[2]
@C    AmbientLight_id171 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id173 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id174 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id176 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id177 => LightSkyboxShader.Intensity.environmentLights[1]
***************************
******  Resources    ******
***************************
@R    LightClusters_id85 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id85 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id86 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id86 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id90 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id90 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id93 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id93 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id97 => ShadowMap.Texture.directLightGroups[2] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id97 => ShadowMap.Texture.directLightGroups[2] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id175 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id175 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    PerMaterial => PerMaterial [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
@R    LinearClampCompareLessEqualSampler_id132 => Texturing.LinearClampCompareLessEqualSampler [Stage: Pixel, Slot: (0-0)]
@R    LightClusters_id85 => LightClustered.LightClusters [Stage: Pixel, Slot: (0-0)]
@R    LightIndices_id86 => LightClustered.LightIndices [Stage: Pixel, Slot: (1-1)]
@R    PointLights_id90 => LightClusteredPointGroup.PointLights [Stage: Pixel, Slot: (2-2)]
@R    SpotLights_id93 => LightClusteredSpotGroup.SpotLights [Stage: Pixel, Slot: (3-3)]
@R    ShadowMapTexture_id97 => ShadowMap.Texture.directLightGroups[2] [Stage: Pixel, Slot: (4-4)]
@R    PerMaterial => PerMaterial [Stage: Pixel, Slot: (0-0)]
@R    PerView => PerView [Stage: Pixel, Slot: (1-1)]
***************************
*****     Sources     *****
***************************
@S    ShaderBase => 5c3160ccbf936c5e102bd9315f0f946a
@S    ShaderBaseStream => f699080594ac63c1f38140de57ce1a7b
@S    ShadingBase => a4b46f7608ab80e77c938f475834f962
@S    ComputeColor => 6e3e8655257003c26480195de33cbbc1
@S    TransformationBase => f1386ed2f0e8db4eb9e79a63ee23e05c
@S    NormalStream => 5d295e278c920e30e310e1979bc14a19
@S    TransformationWAndVP => 1ad0d61ab4ab5bf92b87169f094b8b17
@S    PositionStream4 => 87a2d7a46c028c1479a982866d88d067
@S    PositionHStream4 => f5c4e6d128281ef2d40fba86959205d5
@S    Transformation => 8b044dd67dc836d93d27ce6bee5b1db8
@S    NormalFromMesh => cac9ac354def411344b0994c9fd56e66
@S    NormalBase => b70fd93cea3e78cb7e35bf33c5bc761d
@S    MaterialSurfacePixelStageCompositor => 1d6419ba7ac2d0f180564d21a0d3f8c0
@S    PositionStream => 664ed5997626578c1dfdc74402cd23f6
@S    MaterialPixelShadingStream => 28de6f1960d9c29f165f916c0adfe5a5
@S    MaterialPixelStream => 17c22a7a37d239e0ee9e8d2779c03c80
@S    MaterialStream => 83fd257dadb68d92b2e57a11122265d4
@S    IStreamInitializer => 8be0404675b438bff2babfd297fb96df
@S    LightStream => 81d82a322111295057787d950e438228
@S    DirectLightGroupArray => 9addcff5b7cb7364a8a5d87d4de45742
@S    DirectLightGroup => 92eb9d726b1937533c27d57ff97f8da5
@S    ShadowGroup => 545ec47456ee7f4472536d8a7316d02f
@S    ShadowStream => 4abbfb30b4b85e71b0f683b420977101
@S    EnvironmentLightArray => 92f59b0813153de143701e01f1da89e0
@S    EnvironmentLight => 461117f7455b162e23645a86e89f749d
@S    IMaterialSurface => 14b3d59b9c516893bd7730aaa3dc225a
@S    LightClusteredPointGroup => 60ed7b620bc6eabb3ad2330302bc367e
@S    LightPoint => 2044aa0ce4ba04060728e554f889fe5c
@S    LightUtil => d77cfcfacea55ef4e06d9f585be27420
@S    LightClustered => e0cc7997bb88b676801a857b727faf2b
@S    Camera => ec417735d81c9ad1d80ca0e6d87138b0
@S    LightClusteredSpotGroup => 7beef740595052a48885ae9f619304ca
@S    LightSpot => 79cce87c7d61f0fcb32b260513b6f8c2
@S    LightDirectionalGroup => 7bb2cc43889ab80004ab02a83bbd02d2
@S    DirectLightGroupPerView => f728a5a7f613dcd26bc20d54908ca1b8
@S    LightDirectional => 8f8fc60cae27222c84186af6eec74080
@S    ShadowMapReceiverDirectional => 95d60505c10a89c26292fb44b5445492
@S    ShadowMapReceiverBase => b8e884a10ba47c78372ae2ee6b0eada5
@S    ShadowMapGroup => 9fa1018d7f62b9d4719202422d304c06
@S    ShadowMapCommon => f7f2751f116d20510441e8bbc4c1bea6
@S    ShadowMapFilterBase => 4f39c8431637ddf01ca0702bbf3fa5d8
@S    Texturing => a9d9ee1fb9a68af7ce6b12291686faea
@S    ShadowMapFilterPcf => cac13ffd50e214b4ab513eead5113b25
@S    LightSimpleAmbient => 6d68fc78fb5b5ad232c5ec44f6d90e31
@S    LightSkyboxShader => 346d0cba52d046c17e99ecff0bfe9ba4
@S    IComputeEnvironmentColor => 9e5e0467c0fccc46f26afa70c63aed71
@S    SphericalHarmonicsEnvironmentColor => da5f7069400fbe0cfd86d1dff821ca1a
@S    RoughnessCubeMapEnvironmentColor => c519c7467719a806c6407c9256543142
@S    MaterialSurfaceArray => ccbac4b49ee1e91b6f7d11a29c26a658
@S    MaterialSurfaceDiffuse => 4572009ce562fa4c388af46aacc800f7
@S    IMaterialSurfacePixel => c2baefbc3fb7ad1466cc087909a23051
@S    ComputeColorConstantColorLink => a4f7de8d03608ceba6b4f128ada2b3ed
@S    MaterialSurfaceLightingAndShading => 4faacd53863c0b5c65d23ad20797d27c
@S    Math => 5bdf39e412cac464ebbce340da34bca1
@S    IMaterialSurfaceShading => 7aecb9db43b53094f40d49ae22406a18
@S    MaterialSurfaceShadingDiffuseLambert => 66ea94572ee9f10a2e305608a7d69dad
***************************
*****     Stages      *****
***************************
@G    Vertex => f910411f39935729d6e97e9480f6b9de
//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id29;               // Offset:    0 Size:    64
//   float4x4 WorldInverse_id30;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id31;// Offset:  128 Size:    64
//   float4x4 WorldView_id32;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id33;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id34; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id35;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id36;                 // Offset:  400 Size:    16 [unused]
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id22;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id23;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id24;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id25;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id26;      // Offset:  256 Size:    64
//   float2 ProjScreenRay_id27;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id28;                   // Offset:  336 Size:    16 [unused]
//   float NearClipPlane_id77;          // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id78;           // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id79;           // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id80;              // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id81;            // Offset:  376 Size:     4 [unused]
//   float ClusterDepthScale_id87;      // Offset:  380 Size:     4 [unused]
//   float ClusterDepthBias_id88;       // Offset:  384 Size:     4 [unused]
//   int LightCount_id94;               // Offset:  388 Size:     4 [unused]
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  400
//       float3 Color;                  // Offset:  416
//
//   } Lights_id96;                     // Offset:  400 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id98;  // Offset:  432 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id99;// Offset:  440 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id160[4];// Offset:  448 Size:   256 [unused]
//   float DepthBiases_id161;           // Offset:  704 Size:     4 [unused]
//   float OffsetScales_id162;          // Offset:  720 Size:     4 [unused]
//   float CascadeDepthSplits_id168[4]; // Offset:  736 Size:    52 [unused]
//   float Bias_id170;                  // Offset:  788 Size:     4 [unused]
//   float3 AmbientLight_id171;         // Offset:  800 Size:    12 [unused]
//   float3 SphericalColors_id173[9];   // Offset:  816 Size:   140 [unused]
//   float MipCount_id174;              // Offset:  956 Size:     4 [unused]
//   float4x4 SkyMatrix_id176;          // Offset:  960 Size:    64 [unused]
//   float Intensity_id177;             // Offset: 1024 Size:     4 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// PerDraw                           cbuffer      NA          NA    0        1
// PerView                           cbuffer      NA          NA    1        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
// NORMAL                   0   xyz         1     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// SV_Position              0   xyzw        1      POS   float   xyzw
// DEPTH_VS                 0   x           2     NONE   float   x   
// NORMALWS                 0    yzw        2     NONE   float    yzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[11], immediateIndexed
dcl_constantbuffer cb1[20], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.x
dcl_output o2.yzw
dcl_temps 2
//
// Initial variable locations:
//   v0.x <- __input__.Position_id18.x; v0.y <- __input__.Position_id18.y; v0.z <- __input__.Position_id18.z; v0.w <- __input__.Position_id18.w; 
//   v1.x <- __input__.meshNormal_id14.x; v1.y <- __input__.meshNormal_id14.y; v1.z <- __input__.meshNormal_id14.z; 
//   o2.x <- <VSMain return value>.DepthVS_id20; o2.y <- <VSMain return value>.normalWS_id16.x; o2.z <- <VSMain return value>.normalWS_id16.y; o2.w <- <VSMain return value>.normalWS_id16.z; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id19.x; o0.y <- <VSMain return value>.PositionWS_id19.y; o0.z <- <VSMain return value>.PositionWS_id19.z; o0.w <- <VSMain return value>.PositionWS_id19.w
//
#line 714 "C:\Users\Joseph Braunstein\Desktop\FacePalmStudios-Xenko3D\Capstone Project\Capstone Project\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_bcc981b00d3705099ceae881934330bb.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id19.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id19.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id19.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id19.w

#line 779
mov o0.xyzw, r0.xyzw

#line 704
dp4 r1.x, r0.xyzw, cb1[19].xyzw  // r1.x <- streams.ShadingPosition_id0.w

#line 779
mov o1.w, r1.x
mov o2.x, r1.x

#line 704
dp4 o1.x, r0.xyzw, cb1[16].xyzw
dp4 o1.y, r0.xyzw, cb1[17].xyzw
dp4 o1.z, r0.xyzw, cb1[18].xyzw

#line 747
dp3 o2.y, v1.xyzx, cb0[8].xyzx
dp3 o2.z, v1.xyzx, cb0[9].xyzx
dp3 o2.w, v1.xyzx, cb0[10].xyzx

#line 779
ret 
// Approximately 15 instruction slots used
@G    Pixel => 193f2d45a0dc19fa04c864115803dcec
//
// Generated by Microsoft (R) HLSL Shader Compiler 6.3.9600.16384
//
//
// Buffer Definitions: 
//
// cbuffer PerMaterial
// {
//
//   float4 constantColor_id180;        // Offset:    0 Size:    16
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id22;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id23;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id24;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id25;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id26;      // Offset:  256 Size:    64 [unused]
//   float2 ProjScreenRay_id27;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id28;                   // Offset:  336 Size:    16 [unused]
//   float NearClipPlane_id77;          // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id78;           // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id79;           // Offset:  360 Size:     8
//   float2 ViewSize_id80;              // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id81;            // Offset:  376 Size:     4 [unused]
//   float ClusterDepthScale_id87;      // Offset:  380 Size:     4
//   float ClusterDepthBias_id88;       // Offset:  384 Size:     4
//   int LightCount_id94;               // Offset:  388 Size:     4
//   
//   struct DirectionalLightData
//   {
//       
//       float3 DirectionWS;            // Offset:  400
//       float3 Color;                  // Offset:  416
//
//   } Lights_id96;                     // Offset:  400 Size:    28
//   float2 ShadowMapTextureSize_id98;  // Offset:  432 Size:     8
//   float2 ShadowMapTextureTexelSize_id99;// Offset:  440 Size:     8
//   float4x4 WorldToShadowCascadeUV_id160[4];// Offset:  448 Size:   256
//   float DepthBiases_id161;           // Offset:  704 Size:     4
//   float OffsetScales_id162;          // Offset:  720 Size:     4
//   float CascadeDepthSplits_id168[4]; // Offset:  736 Size:    52
//   float Bias_id170;                  // Offset:  788 Size:     4 [unused]
//   float3 AmbientLight_id171;         // Offset:  800 Size:    12
//   float3 SphericalColors_id173[9];   // Offset:  816 Size:   140
//   float MipCount_id174;              // Offset:  956 Size:     4 [unused]
//   float4x4 SkyMatrix_id176;          // Offset:  960 Size:    64
//   float Intensity_id177;             // Offset: 1024 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// LinearClampCompareLessEqualSampler_id132  sampler_c      NA          NA    0        1
// LightClusters_id85                texture   uint2          3d    0        1
// LightIndices_id86                 texture    uint         buf    1        1
// PointLights_id90                  texture  float4         buf    2        1
// SpotLights_id93                   texture  float4         buf    3        1
// ShadowMapTexture_id97             texture  float4          2d    4        1
// PerMaterial                       cbuffer      NA          NA    0        1
// PerView                           cbuffer      NA          NA    1        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyz 
// SV_Position              0   xyzw        1      POS   float   xyz 
// DEPTH_VS                 0   x           2     NONE   float   x   
// NORMALWS                 0    yzw        2     NONE   float    yzw
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
dcl_constantbuffer cb1[65], dynamicIndexed
dcl_sampler s0, mode_comparison
dcl_resource_texture3d (uint,uint,uint,uint) t0
dcl_resource_buffer (uint,uint,uint,uint) t1
dcl_resource_buffer (float,float,float,float) t2
dcl_resource_buffer (float,float,float,float) t3
dcl_resource_texture2d (float,float,float,float) t4
dcl_input_ps linear v0.xyz
dcl_input_ps_siv linear noperspective v1.xyz, position
dcl_input_ps linear v2.x
dcl_input_ps linear v2.yzw
dcl_output o0.xyzw
dcl_temps 15
//
// Initial variable locations:
//   v0.x <- __input__.PositionWS_id19.x; v0.y <- __input__.PositionWS_id19.y; v0.z <- __input__.PositionWS_id19.z; v0.w <- __input__.PositionWS_id19.w; 
//   v1.x <- __input__.ShadingPosition_id0.x; v1.y <- __input__.ShadingPosition_id0.y; v1.z <- __input__.ShadingPosition_id0.z; v1.w <- __input__.ShadingPosition_id0.w; 
//   v2.x <- __input__.DepthVS_id20; v2.y <- __input__.normalWS_id16.x; v2.z <- __input__.normalWS_id16.y; v2.w <- __input__.normalWS_id16.z; 
//   o0.x <- <PSMain return value>.ColorTarget_id1.x; o0.y <- <PSMain return value>.ColorTarget_id1.y; o0.z <- <PSMain return value>.ColorTarget_id1.z; o0.w <- <PSMain return value>.ColorTarget_id1.w
//
#line 743 "C:\Users\Joseph Braunstein\Desktop\FacePalmStudios-Xenko3D\Capstone Project\Capstone Project\Bin\Windows\Debug\log\shader_XenkoForwardShadingEffect_bcc981b00d3705099ceae881934330bb.hlsl"
dp3 r0.x, v2.yzwy, v2.yzwy
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v2.yzwy  // r0.x <- streams.normalWS_id16.x; r0.y <- streams.normalWS_id16.y; r0.z <- streams.normalWS_id16.z

#line 426
add r0.w, v1.z, -cb1[22].z
div r0.w, cb1[22].w, r0.w  // r0.w <- depth
ftoi r1.xy, v1.xyxx  // r1.x <- shadingPosition.x; r1.y <- shadingPosition.y
mad r0.w, r0.w, cb1[23].w, cb1[24].x
log r0.w, r0.w
max r0.w, r0.w, l(0.000000)
ftoi r2.z, r0.w  // r2.z <- slice
ushr r2.xy, r1.xyxx, l(6, 6, 0, 0)
mov r2.w, l(0)
ld_indexable(texture3d)(uint,uint,uint,uint) r1.xy, r2.xyzw, t0.xyzw  // r1.x <- streams.lightData_id83.x; r1.y <- streams.lightData_id83.y

#line 526
and r0.w, r1.y, l(0x0000ffff)  // r0.w <- <GetMaxLightCount_id140 return value>

#line 576
mov r2.xyz, r0.xyzx  // r2.x <- streams.normalWS_id16.x; r2.y <- streams.normalWS_id16.y; r2.z <- streams.normalWS_id16.z
mov r2.w, v0.x  // r2.w <- streams.PositionWS_id19.x
mov r3.yz, v0.yyzy  // r3.y <- streams.PositionWS_id19.y; r3.z <- streams.PositionWS_id19.z
mov r4.xyz, cb0[0].xyzx  // r4.x <- streams.matDiffuseVisible_id62.x; r4.y <- streams.matDiffuseVisible_id62.y; r4.z <- streams.matDiffuseVisible_id62.z
mov r5.x, r1.x  // r5.x <- streams.lightIndex_id84
mov r5.yzw, l(0,0,0,0)  // r5.y <- directLightingContribution.x; r5.z <- directLightingContribution.y; r5.w <- directLightingContribution.z
mov r1.z, l(0)  // r1.z <- i
loop 
  ige r1.w, r1.z, r0.w
  breakc_nz r1.w
  if_nz r1.w
    break 
  endif 

#line 413
  ld_indexable(buffer)(uint,uint,uint,uint) r1.w, r5.xxxx, t1.yzwx  // r1.w <- realLightIndex
  iadd r5.x, r5.x, l(1)  // r5.x <- streams.lightIndex_id84
  ishl r3.w, r1.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r6.xyzw, r3.wwww, t2.xyzw  // r6.x <- pointLight1.x; r6.y <- pointLight1.y; r6.z <- pointLight1.z; r6.w <- pointLight1.w
  bfi r1.w, l(31), l(1), r1.w, l(1)
  ld_indexable(buffer)(float,float,float,float) r7.xyz, r1.wwww, t2.xyzw  // r7.x <- pointLight2.x; r7.y <- pointLight2.y; r7.z <- pointLight2.z

#line 301
  mov r3.x, r2.w
  add r6.xyz, -r3.xyzx, r6.xyzx  // r6.x <- lightVector.x; r6.y <- lightVector.y; r6.z <- lightVector.z
  dp3 r1.w, r6.xyzx, r6.xyzx
  sqrt r3.x, r1.w  // r3.x <- lightVectorLength
  div r6.xyz, r6.xyzx, r3.xxxx  // r6.x <- lightVectorNorm.x; r6.y <- lightVectorNorm.y; r6.z <- lightVectorNorm.z

#line 264
  max r3.x, r1.w, l(0.000100)
  div r3.x, l(1.000000, 1.000000, 1.000000, 1.000000), r3.x  // r3.x <- attenuation

#line 205
  mul r1.w, r6.w, r1.w  // r1.w <- factor
  mad r1.w, -r1.w, r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)  // r1.w <- smoothFactor
  mul r1.w, r1.w, r1.w  // r1.w <- <SmoothDistanceAttenuation_id62 return value>

#line 265
  mul r1.w, r1.w, r3.x  // r1.w <- attenuation

#line 307
  mul r7.xyz, r1.wwww, r7.xyzx  // r7.x <- streams.lightColor_id39.x; r7.y <- streams.lightColor_id39.y; r7.z <- streams.lightColor_id39.z

#line 516
  dp3 r1.w, r2.xyzx, r6.xyzx
  max r1.w, r1.w, l(0.000100)  // r1.w <- streams.NdotL_id43
  mul r6.xyz, r1.wwww, r7.xyzx  // r6.x <- streams.lightColorNdotL_id40.x; r6.y <- streams.lightColorNdotL_id40.y; r6.z <- streams.lightColorNdotL_id40.z

#line 504
  mul r6.xyz, r6.xyzx, r4.xyzx

#line 586
  mad r5.yzw, r6.xxyz, l(0.000000, 0.318310, 0.318310, 0.318310), r5.yyzw

#line 576
  iadd r1.z, r1.z, l(1)

#line 588
endloop   // r5.x <- streams.lightIndex_id84

#line 496
ushr r0.w, r1.y, l(16)  // r0.w <- <GetMaxLightCount_id149 return value>

#line 596
mov r1.xyz, v0.xyzx  // r1.x <- streams.PositionWS_id19.x; r1.y <- streams.PositionWS_id19.y; r1.z <- streams.PositionWS_id19.z
mov r2.xyz, r0.xyzx
mov r3.xyz, cb0[0].xyzx  // r3.x <- streams.matDiffuseVisible_id62.x; r3.y <- streams.matDiffuseVisible_id62.y; r3.z <- streams.matDiffuseVisible_id62.z
mov r4.xyz, r5.yzwy  // r4.x <- directLightingContribution.x; r4.y <- directLightingContribution.y; r4.z <- directLightingContribution.z
mov r1.w, r5.x  // r1.w <- streams.lightIndex_id84
mov r2.w, l(0)  // r2.w <- i
loop 
  ige r3.w, r2.w, r0.w
  breakc_nz r3.w
  if_nz r3.w
    break 
  endif 

#line 394
  ld_indexable(buffer)(uint,uint,uint,uint) r3.w, r1.wwww, t1.yzwx  // r3.w <- realLightIndex
  iadd r1.w, r1.w, l(1)  // r1.w <- streams.lightIndex_id84
  ishl r4.w, r3.w, l(2)
  ld_indexable(buffer)(float,float,float,float) r6.xyz, r4.wwww, t3.xyzw  // r6.x <- spotLight1.x; r6.y <- spotLight1.y; r6.z <- spotLight1.z

#line 400
  bfi r7.xyz, l(30, 30, 30, 0), l(2, 2, 2, 0), r3.wwww, l(1, 2, 3, 0)
  ld_indexable(buffer)(float,float,float,float) r8.xyz, r7.xxxx, t3.xyzw  // r8.x <- spotLight2.x; r8.y <- spotLight2.y; r8.z <- spotLight2.z
  ld_indexable(buffer)(float,float,float,float) r7.xyw, r7.yyyy, t3.xywz  // r7.x <- spotLight3.x; r7.y <- spotLight3.y; r7.w <- spotLight3.z
  ld_indexable(buffer)(float,float,float,float) r9.xyz, r7.zzzz, t3.xyzw  // r9.x <- spotLight4.x; r9.y <- spotLight4.y; r9.z <- spotLight4.z

#line 286
  add r6.xyz, -r1.xyzx, r6.xyzx  // r6.x <- lightVector.x; r6.y <- lightVector.y; r6.z <- lightVector.z
  dp3 r3.w, r6.xyzx, r6.xyzx
  sqrt r4.w, r3.w  // r4.w <- lightVectorLength
  div r6.xyz, r6.xyzx, r4.wwww  // r6.x <- lightVectorNorm.x; r6.y <- lightVectorNorm.y; r6.z <- lightVectorNorm.z

#line 257
  max r4.w, r3.w, l(0.000100)
  div r4.w, l(1.000000, 1.000000, 1.000000, 1.000000), r4.w  // r4.w <- attenuation

#line 199
  mul r3.w, r7.w, r3.w  // r3.w <- factor
  mad r3.w, -r3.w, r3.w, l(1.000000)
  max r3.w, r3.w, l(0.000000)  // r3.w <- smoothFactor
  mul r3.w, r3.w, r3.w  // r3.w <- <SmoothDistanceAttenuation_id70 return value>

#line 258
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation

#line 249
  dp3 r4.w, -r8.xyzx, r6.xyzx  // r4.w <- cd
  mad_sat r4.w, r4.w, r7.x, r7.y  // r4.w <- attenuation
  mul r4.w, r4.w, r4.w

#line 295
  mul r3.w, r3.w, r4.w  // r3.w <- attenuation
  mul r6.xyz, r3.wwww, r9.xyzx  // r6.x <- streams.lightColor_id39.x; r6.y <- streams.lightColor_id39.y; r6.z <- streams.lightColor_id39.z

#line 486
  dp3 r3.w, r2.xyzx, -r8.xyzx
  max r3.w, r3.w, l(0.000100)  // r3.w <- streams.NdotL_id43
  mul r6.xyz, r3.wwww, r6.xyzx  // r6.x <- streams.lightColorNdotL_id40.x; r6.y <- streams.lightColorNdotL_id40.y; r6.z <- streams.lightColorNdotL_id40.z

#line 504
  mul r6.xyz, r3.xyzx, r6.xyzx

#line 606
  mad r4.xyz, r6.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r4.xyzx

#line 596
  iadd r2.w, r2.w, l(1)

#line 608
endloop   // r1.w <- streams.lightIndex_id84

#line 278
dp2 r0.w, cb1[45].xxxx, cb1[27].zzzz

#line 270
mov r1.w, l(1.000000)

#line 616
mov r2.xyz, v0.xyzx  // r2.x <- streams.PositionWS_id19.x; r2.y <- streams.PositionWS_id19.y; r2.z <- streams.PositionWS_id19.z
mov r2.w, v2.x  // r2.w <- streams.DepthVS_id20
mov r3.xyz, r0.xyzx  // r3.x <- streams.normalWS_id16.x; r3.y <- streams.normalWS_id16.y; r3.z <- streams.normalWS_id16.z
mov r5.xyz, cb0[0].xyzx  // r5.x <- streams.matDiffuseVisible_id62.x; r5.y <- streams.matDiffuseVisible_id62.y; r5.z <- streams.matDiffuseVisible_id62.z
mov r6.xyz, r4.xyzx  // r6.x <- directLightingContribution.x; r6.y <- directLightingContribution.y; r6.z <- directLightingContribution.z
mov r3.w, l(0)  // r3.w <- i
loop 
  ige r4.w, r3.w, l(1)
  breakc_nz r4.w
  ige r4.w, r3.w, cb1[24].y
  if_nz r4.w
    break 
  endif 

#line 468
  dp3 r4.w, r3.xyzx, -cb1[25].xyzx
  max r4.w, r4.w, l(0.000100)  // r4.w <- streams.NdotL_id43

#line 344
  ishl r5.w, r3.w, l(2)  // r5.w <- cascadeIndexBase

#line 351
  lt r6.w, cb1[r5.w + 46].x, r2.w

#line 354
  and r6.w, r6.w, l(1)  // r6.w <- cascadeIndex

#line 351
  bfi r7.xy, l(30, 30, 0, 0), l(2, 2, 0, 0), r3.wwww, l(1, 2, 0, 0)
  lt r7.x, cb1[r7.x + 46].x, r2.w

#line 354
  movc r6.w, r7.x, l(2), r6.w

#line 351
  lt r7.x, cb1[r7.y + 46].x, r2.w

#line 354
  movc r6.w, r7.x, l(3), r6.w

#line 277
  add r7.y, -r4.w, l(1.000000)
  max r7.y, r7.y, l(0.000000)  // r7.y <- normalOffsetScale
  mul r7.y, r0.w, r7.y

#line 358
  mad r1.xyz, r7.yyyy, r3.xyzx, r2.xyzx  // r1.x <- shadowPosition.x; r1.y <- shadowPosition.y; r1.z <- shadowPosition.z

#line 270
  bfi r7.y, l(30), l(2), r3.w, r6.w
  ishl r7.z, r6.w, l(2)
  bfi r7.z, l(30), l(4), r3.w, r7.z
  dp4 r8.x, r1.xyzw, cb1[r7.z + 28].xyzw  // r8.x <- shadowPosition.x
  dp4 r8.y, r1.xyzw, cb1[r7.z + 29].xyzw  // r8.y <- shadowPosition.y
  dp4 r7.w, r1.xyzw, cb1[r7.z + 30].xyzw  // r7.w <- shadowPosition.z
  dp4 r7.z, r1.xyzw, cb1[r7.z + 31].xyzw  // r7.z <- shadowPosition.w
  add r8.z, r7.w, -cb1[44].x  // r8.z <- shadowPosition.z
  div r8.xyz, r8.xyzx, r7.zzzz

#line 215
  mad r7.zw, r8.xxxy, cb1[27].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
  round_ni r8.xy, r7.zwzz  // r8.x <- base_uv.x; r8.y <- base_uv.y
  add r7.zw, r7.zzzw, -r8.xxxy  // r7.z <- s; r7.w <- t
  add r8.xy, r8.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
  mul r8.xy, r8.xyxx, cb1[27].zwzz

#line 228
  mad r9.xy, -r7.wzww, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r9.y <- uw0; r9.x <- vw0
  mad r9.zw, r7.zzzw, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r9.z <- uw2; r9.w <- vw2
  mad r10.xy, -r7.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
  div r10.xy, r10.xyxx, r9.yxyy
  add r10.zw, r7.zzzw, l(0.000000, 0.000000, 3.000000, 3.000000)
  div r7.zw, r7.zzzw, r9.zzzw
  add r11.xw, r10.xxxy, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r11.x <- u0; r11.w <- v0
  mul r11.yz, r10.wwzw, l(0.000000, 0.142857, 0.142857, 0.000000)  // r11.z <- u1; r11.y <- v1
  add r10.xy, r7.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000)  // r10.x <- u2; r10.y <- v2
  mul r7.z, r9.x, r9.y
  mad r12.xyzw, r11.xwzw, cb1[27].zwzw, r8.xyxy

#line 195
  sample_c_indexable(texture2d)(float,float,float,float) r7.w, r12.xyxx, t4.xxxx, s0, r8.z  // r7.w <- <SampleTextureAndCompare_id86 return value>

#line 237
  mul r12.xy, r9.xyxx, l(7.000000, 7.000000, 0.000000, 0.000000)

#line 195
  sample_c_indexable(texture2d)(float,float,float,float) r8.w, r12.zwzz, t4.xxxx, s0, r8.z  // r8.w <- <SampleTextureAndCompare_id86 return value>

#line 235
  mul r8.w, r8.w, r12.x
  mad r7.z, r7.z, r7.w, r8.w  // r7.z <- shadow

#line 240
  mul r9.xy, r9.xyxx, r9.zwzz
  mov r10.zw, r11.wwwy
  mad r13.xyzw, r10.xzxw, cb1[27].zwzw, r8.xyxy

#line 195
  sample_c_indexable(texture2d)(float,float,float,float) r7.w, r13.xyxx, t4.xxxx, s0, r8.z  // r7.w <- <SampleTextureAndCompare_id86 return value>

#line 236
  mad r7.z, r9.x, r7.w, r7.z
  mad r14.xyzw, r11.xyzy, cb1[27].zwzw, r8.xyxy

#line 195
  sample_c_indexable(texture2d)(float,float,float,float) r7.w, r14.xyxx, t4.xxxx, s0, r8.z

#line 237
  mad r7.z, r12.y, r7.w, r7.z

#line 195
  sample_c_indexable(texture2d)(float,float,float,float) r7.w, r14.zwzz, t4.xxxx, s0, r8.z

#line 238
  mad r7.z, r7.w, l(49.000000), r7.z

#line 241
  mul r10.zw, r9.zzzw, l(0.000000, 0.000000, 7.000000, 7.000000)

#line 195
  sample_c_indexable(texture2d)(float,float,float,float) r7.w, r13.zwzz, t4.xxxx, s0, r8.z

#line 239
  mad r7.z, r10.z, r7.w, r7.z
  mov r11.y, r10.y
  mad r11.xyzw, r11.xyzy, cb1[27].zwzw, r8.xyxy

#line 195
  sample_c_indexable(texture2d)(float,float,float,float) r7.w, r11.xyxx, t4.xxxx, s0, r8.z

#line 240
  mad r7.z, r9.y, r7.w, r7.z

#line 195
  sample_c_indexable(texture2d)(float,float,float,float) r7.w, r11.zwzz, t4.xxxx, s0, r8.z

#line 241
  mad r7.z, r10.w, r7.w, r7.z
  mul r7.w, r9.w, r9.z
  mad r8.xy, r10.xyxx, cb1[27].zwzz, r8.xyxx

#line 195
  sample_c_indexable(texture2d)(float,float,float,float) r8.x, r8.xyxx, t4.xxxx, s0, r8.z  // r8.x <- <SampleTextureAndCompare_id86 return value>

#line 242
  mad r7.z, r7.w, r8.x, r7.z
  mul r7.w, r7.z, l(0.006944)  // r7.w <- shadow

#line 363
  iadd r8.x, r7.y, l(-1)
  add r8.x, -cb1[r8.x + 46].x, cb1[r7.y + 46].x
  movc r8.x, r6.w, r8.x, cb1[r7.y + 46].x  // r8.x <- splitSize
  add r7.y, -r2.w, cb1[r7.y + 46].x
  div r7.y, r7.y, r8.x  // r7.y <- splitDist
  lt r8.x, r7.y, l(0.200000)

#line 270
  ishl r5.w, r5.w, l(2)
  imad r5.w, r6.w, l(4), r5.w
  iadd r5.w, r5.w, l(4)
  dp4 r9.x, r1.xyzw, cb1[r5.w + 28].xyzw  // r9.x <- shadowPosition.x
  dp4 r9.y, r1.xyzw, cb1[r5.w + 29].xyzw  // r9.y <- shadowPosition.y
  dp4 r6.w, r1.xyzw, cb1[r5.w + 30].xyzw  // r6.w <- shadowPosition.z
  dp4 r1.x, r1.xyzw, cb1[r5.w + 31].xyzw  // r1.x <- shadowPosition.w
  add r9.z, r6.w, -cb1[44].x  // r9.z <- shadowPosition.z
  div r1.xyz, r9.xyzx, r1.xxxx  // r1.x <- shadowPosition.x; r1.y <- shadowPosition.y; r1.z <- shadowPosition.z

#line 215
  mad r1.xy, r1.xyxx, cb1[27].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  round_ni r8.yz, r1.xxyx  // r8.y <- base_uv.x; r8.z <- base_uv.y
  add r1.xy, r1.xyxx, -r8.yzyy  // r1.x <- s; r1.y <- t
  add r8.yz, r8.yyzy, l(0.000000, -0.500000, -0.500000, 0.000000)
  mul r8.yz, r8.yyzy, cb1[27].zzwz

#line 228
  mad r9.xy, -r1.yxyy, l(3.000000, 3.000000, 0.000000, 0.000000), l(4.000000, 4.000000, 0.000000, 0.000000)  // r9.y <- uw0; r9.x <- vw0
  mad r9.zw, r1.xxxy, l(0.000000, 0.000000, 3.000000, 3.000000), l(0.000000, 0.000000, 1.000000, 1.000000)  // r9.z <- uw2
  mad r10.xy, -r1.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
  div r10.xy, r10.xyxx, r9.yxyy
  add r10.zw, r1.xxxy, l(0.000000, 0.000000, 3.000000, 3.000000)
  div r1.xy, r1.xyxx, r9.zwzz
  add r11.xw, r10.xxxy, l(-2.000000, 0.000000, 0.000000, -2.000000)  // r11.x <- u0; r11.w <- v0
  mul r11.yz, r10.wwzw, l(0.000000, 0.142857, 0.142857, 0.000000)  // r11.z <- u1; r11.y <- v1
  add r10.xy, r1.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000)  // r10.x <- u2; r10.y <- v2
  mad r12.xyzw, r11.xwzw, cb1[27].zwzw, r8.yzyz

#line 195
  sample_c_indexable(texture2d)(float,float,float,float) r1.x, r12.xyxx, t4.xxxx, s0, r1.z  // r1.x <- <SampleTextureAndCompare_id86 return value>
  sample_c_indexable(texture2d)(float,float,float,float) r1.y, r12.zwzz, t4.xxxx, s0, r1.z  // r1.y <- <SampleTextureAndCompare_id86 return value>

#line 239
  mov r10.zw, r11.wwwy
  mad r12.xyzw, r10.xzxw, cb1[27].zwzw, r8.yzyz

#line 195
  sample_c_indexable(texture2d)(float,float,float,float) r5.w, r12.xyxx, t4.xxxx, s0, r1.z  // r5.w <- <SampleTextureAndCompare_id86 return value>

#line 238
  mad r13.xyzw, r11.xyzy, cb1[27].zwzw, r8.yzyz

#line 195
  sample_c_indexable(texture2d)(float,float,float,float) r6.w, r13.xyxx, t4.xxxx, s0, r1.z  // r6.w <- <SampleTextureAndCompare_id86 return value>
  sample_c_indexable(texture2d)(float,float,float,float) r8.w, r13.zwzz, t4.xxxx, s0, r1.z  // r8.w <- <SampleTextureAndCompare_id86 return value>
  sample_c_indexable(texture2d)(float,float,float,float) r10.z, r12.zwzz, t4.xxxx, s0, r1.z  // r10.z <- <SampleTextureAndCompare_id86 return value>

#line 240
  mov r11.y, r10.y
  mad r11.xyzw, r11.xyzy, cb1[27].zwzw, r8.yzyz

#line 195
  sample_c_indexable(texture2d)(float,float,float,float) r10.w, r11.xyxx, t4.xxxx, s0, r1.z  // r10.w <- <SampleTextureAndCompare_id86 return value>
  sample_c_indexable(texture2d)(float,float,float,float) r11.x, r11.zwzz, t4.xxxx, s0, r1.z  // r11.x <- <SampleTextureAndCompare_id86 return value>

#line 242
  mad r8.yz, r10.xxyx, cb1[27].zzwz, r8.yyzy

#line 195
  sample_c_indexable(texture2d)(float,float,float,float) r1.z, r8.yzyy, t4.xxxx, s0, r1.z  // r1.z <- <SampleTextureAndCompare_id86 return value>

#line 365
  if_nz r8.x

#line 368
    if_z r7.x
      mul_sat r7.x, r7.y, l(5.000000)
      mad r7.y, r7.x, l(-2.000000), l(3.000000)
      mul r7.x, r7.x, r7.x
      mul r7.x, r7.x, r7.y  // r7.x <- lerpAmt

#line 234
      mul r7.y, r9.x, r9.y
      mul r1.y, r9.x, r1.y
      mul r1.y, r1.y, l(7.000000)
      mad r1.x, r7.y, r1.x, r1.y  // r1.x <- shadow

#line 240
      mul r8.xy, r9.xyxx, r9.zwzz

#line 236
      mad r1.x, r8.x, r5.w, r1.x
      mul r1.y, r6.w, r9.y
      mad r1.x, r1.y, l(7.000000), r1.x
      mad r1.x, r8.w, l(49.000000), r1.x
      mul r1.y, r9.z, r10.z
      mad r1.x, r1.y, l(7.000000), r1.x
      mad r1.x, r8.y, r10.w, r1.x
      mul r1.y, r9.w, r11.x
      mad r1.x, r1.y, l(7.000000), r1.x
      mul r1.y, r9.w, r9.z
      mad r1.x, r1.y, r1.z, r1.x
      mul r1.x, r1.x, l(0.006944)

#line 374
      mad r1.y, r7.z, l(0.006944), -r1.x
      mad r7.w, r7.x, r1.y, r1.x
    endif 
  endif   // r7.w <- shadow

#line 470
  mul r1.xyz, r7.wwww, cb1[26].xyzx
  mul r1.xyz, r4.wwww, r1.xyzx  // r1.x <- streams.lightColorNdotL_id40.x; r1.y <- streams.lightColorNdotL_id40.y; r1.z <- streams.lightColorNdotL_id40.z

#line 504
  mul r1.xyz, r1.xyzx, r5.xyzx

#line 626
  mad r6.xyz, r1.xyzx, l(0.318310, 0.318310, 0.318310, 0.000000), r6.xyzx

#line 616
  iadd r3.w, r3.w, l(1)

#line 628
endloop 

#line 446
dp3 r0.w, r0.xyzx, cb1[60].xyzx  // r0.w <- sampleDirection.x
dp3 r1.x, r0.xyzx, cb1[61].xyzx  // r1.x <- sampleDirection.y
dp3 r0.x, r0.xyzx, cb1[62].xyzx  // r0.x <- sampleDirection.z

#line 322
mul r0.y, r1.x, r1.x  // r0.y <- y2
mul r0.z, r0.x, r0.x  // r0.z <- z2

#line 327
mad r1.yzw, cb1[52].xxyz, r1.xxxx, cb1[51].xxyz  // r1.y <- color.x; r1.z <- color.y; r1.w <- color.z
mad r1.yzw, cb1[53].xxyz, -r0.xxxx, r1.yyzw
mad r1.yzw, cb1[54].xxyz, r0.wwww, r1.yyzw

#line 332
mul r2.xyz, r1.xxxx, cb1[55].xyzx
mad r1.yzw, r2.xxyz, r0.wwww, r1.yyzw
mul r2.xyz, r1.xxxx, cb1[56].xyzx
mad r1.xyz, r2.xyzx, -r0.xxxx, r1.yzwy  // r1.x <- color.x; r1.y <- color.y; r1.z <- color.z
mad r0.z, r0.z, l(3.000000), l(-1.000000)
mad r1.xyz, cb1[57].xyzx, r0.zzzz, r1.xyzx
mul r2.xyz, r0.wwww, cb1[58].xyzx
mad r1.xyz, r2.xyzx, -r0.xxxx, r1.xyzx
mad r0.x, r0.w, r0.w, -r0.y
mad r0.xyz, cb1[59].xyzx, r0.xxxx, r1.xyzx  // r0.x <- color.x; r0.y <- color.y; r0.z <- color.z

#line 448
mul r0.xyz, r0.xyzx, cb1[64].xxxx  // r0.x <- streams.envLightDiffuseColor_id41.x; r0.y <- streams.envLightDiffuseColor_id41.y; r0.z <- streams.envLightDiffuseColor_id41.z

#line 457
mul r0.xyz, r0.xyzx, cb0[0].xyzx  // r0.x <- <ComputeEnvironmentLightContribution_id183 return value>.x; r0.y <- <ComputeEnvironmentLightContribution_id183 return value>.y; r0.z <- <ComputeEnvironmentLightContribution_id183 return value>.z

#line 644
mad r0.xyz, cb0[0].xyzx, cb1[50].xyzx, r0.xyzx  // r0.x <- environmentLightingContribution.x; r0.y <- environmentLightingContribution.y; r0.z <- environmentLightingContribution.z

#line 647
mad o0.xyz, r6.xyzx, l(3.141593, 3.141593, 3.141593, 0.000000), r0.xyzx

#line 765
mov o0.w, cb0[0].w
ret 
// Approximately 282 instruction slots used
***************************
*************************/
const static uint ClusterSize2_id82 = 64;
const static int TMaxLightCount_id95 = 1;
const static int TCascadeCountBase_id158 = 4;
const static int TLightCountBase_id159 = 1;
const static int TCascadeCount_id163 = 4;
const static int TLightCount_id164 = 1;
const static bool TBlendCascades_id165 = true;
const static bool TDepthRangeAuto_id166 = true;
const static bool TCascadeDebug_id167 = false;
const static int TFilterSize_id169 = 5;
const static int TOrder_id172 = 3;
static const float PI_id183 = 3.14159265358979323846;
const static bool TIsEnergyConservative_id184 = false;
SamplerState LinearSampler_id130 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id132 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
Texture3D<uint2> LightClusters_id85;
Buffer<uint> LightIndices_id86;
Buffer<float4> PointLights_id90;
Buffer<float4> SpotLights_id93;
Texture2D ShadowMapTexture_id97;
TextureCube CubeMap_id175;
struct PS_STREAMS 
{
    float3 normalWS_id16;
    float4 PositionWS_id19;
    float4 ShadingPosition_id0;
    float DepthVS_id20;
    float3 viewWS_id61;
    float3 shadingColor_id66;
    float matBlend_id37;
    float3 matNormal_id45;
    float4 matColorBase_id46;
    float4 matDiffuse_id47;
    float3 matDiffuseVisible_id62;
    float3 matSpecular_id49;
    float3 matSpecularVisible_id64;
    float matSpecularIntensity_id50;
    float matGlossiness_id48;
    float alphaRoughness_id63;
    float matAmbientOcclusion_id51;
    float matAmbientOcclusionDirectLightingFactor_id52;
    float matCavity_id53;
    float matCavityDiffuse_id54;
    float matCavitySpecular_id55;
    float4 matEmissive_id56;
    float matEmissiveIntensity_id57;
    float2 matDiffuseSpecularAlphaBlend_id58;
    float3 matAlphaBlendColor_id59;
    float matAlphaDiscard_id60;
    float shadingColorAlpha_id67;
    float3 lightDirectionWS_id38;
    float3 lightColor_id39;
    float3 lightColorNdotL_id40;
    float3 envLightDiffuseColor_id41;
    float3 envLightSpecularColor_id42;
    float lightDirectAmbientOcclusion_id44;
    float NdotL_id43;
    float NdotV_id65;
    uint2 lightData_id83;
    int lightIndex_id84;
    float3 shadowColor_id76;
    float3 H_id68;
    float NdotH_id69;
    float LdotH_id70;
    float VdotH_id71;
    float4 ColorTarget_id1;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id1 : SV_Target0;
};
struct VS_STREAMS 
{
    float4 Position_id18;
    float3 meshNormal_id14;
    float4 PositionH_id21;
    float4 PositionWS_id19;
    float4 ShadingPosition_id0;
    float DepthVS_id20;
    float3 normalWS_id16;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id19 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float DepthVS_id20 : DEPTH_VS;
    float3 normalWS_id16 : NORMALWS;
};
struct VS_INPUT 
{
    float4 Position_id18 : POSITION;
    float3 meshNormal_id14 : NORMAL;
};
struct PointLightData 
{
    float3 PositionWS;
    float InvSquareRadius;
    float3 Color;
};
struct PointLightDataInternal 
{
    float3 PositionWS;
    float InvSquareRadius;
    float3 Color;
};
struct SpotLightData 
{
    float3 PositionWS;
    float3 DirectionWS;
    float3 AngleOffsetAndInvSquareRadius;
    float3 Color;
};
struct SpotLightDataInternal 
{
    float3 PositionWS;
    float3 DirectionWS;
    float3 AngleOffsetAndInvSquareRadius;
    float3 Color;
};
struct DirectionalLightData 
{
    float3 DirectionWS;
    float3 Color;
};
cbuffer PerDraw 
{
    float4x4 World_id29;
    float4x4 WorldInverse_id30;
    float4x4 WorldInverseTranspose_id31;
    float4x4 WorldView_id32;
    float4x4 WorldViewInverse_id33;
    float4x4 WorldViewProjection_id34;
    float3 WorldScale_id35;
    float4 EyeMS_id36;
};
cbuffer PerMaterial 
{
    float4 constantColor_id180;
};
cbuffer PerView 
{
    float4x4 View_id22;
    float4x4 ViewInverse_id23;
    float4x4 Projection_id24;
    float4x4 ProjectionInverse_id25;
    float4x4 ViewProjection_id26;
    float2 ProjScreenRay_id27;
    float4 Eye_id28;
    float NearClipPlane_id77 = 1.0f;
    float FarClipPlane_id78 = 100.0f;
    float2 ZProjection_id79;
    float2 ViewSize_id80;
    float AspectRatio_id81;
    float ClusterDepthScale_id87;
    float ClusterDepthBias_id88;
    int LightCount_id94;
    DirectionalLightData Lights_id96[TMaxLightCount_id95];
    float2 ShadowMapTextureSize_id98;
    float2 ShadowMapTextureTexelSize_id99;
    float4x4 WorldToShadowCascadeUV_id160[TCascadeCountBase_id158 * TLightCountBase_id159];
    float DepthBiases_id161[TLightCountBase_id159];
    float OffsetScales_id162[TLightCountBase_id159];
    float CascadeDepthSplits_id168[TCascadeCount_id163 * TLightCount_id164];
    float Bias_id170;
    float3 AmbientLight_id171;
    float3 SphericalColors_id173[TOrder_id172 * TOrder_id172];
    float MipCount_id174;
    float4x4 SkyMatrix_id176;
    float Intensity_id177;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id101;
    float2 Texture1TexelSize_id103;
    float2 Texture2TexelSize_id105;
    float2 Texture3TexelSize_id107;
    float2 Texture4TexelSize_id109;
    float2 Texture5TexelSize_id111;
    float2 Texture6TexelSize_id113;
    float2 Texture7TexelSize_id115;
    float2 Texture8TexelSize_id117;
    float2 Texture9TexelSize_id119;
};
float SampleTextureAndCompare_id86(float2 position, float positionDepth)
{
    return ShadowMapTexture_id97.SampleCmp(LinearClampCompareLessEqualSampler_id132, position, positionDepth);
}
float SmoothDistanceAttenuation_id70(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float SmoothDistanceAttenuation_id62(float squaredDistance, float lightInvSquareRadius)
{
    float factor = squaredDistance * lightInvSquareRadius;
    float smoothFactor = saturate(1.0f - factor * factor);
    return smoothFactor * smoothFactor;
}
float FilterShadow_id82(float2 position, float positionDepth)
{
    float shadow = 0.0f;
    float2 uv = position * ShadowMapTextureSize_id98;
    float2 base_uv;
    base_uv.x = floor(uv.x + 0.5);
    base_uv.y = floor(uv.y + 0.5);
    float s = (uv.x + 0.5 - base_uv.x);
    float t = (uv.y + 0.5 - base_uv.y);
    base_uv -= float2(0.5, 0.5);
    base_uv *= ShadowMapTextureTexelSize_id99;

    {
        float uw0 = (4 - 3 * s);
        float uw1 = 7;
        float uw2 = (1 + 3 * s);
        float u0 = (3 - 2 * s) / uw0 - 2;
        float u1 = (3 + s) / uw1;
        float u2 = s / uw2 + 2;
        float vw0 = (4 - 3 * t);
        float vw1 = 7;
        float vw2 = (1 + 3 * t);
        float v0 = (3 - 2 * t) / vw0 - 2;
        float v1 = (3 + t) / vw1;
        float v2 = t / vw2 + 2;
        shadow += uw0 * vw0 * SampleTextureAndCompare_id86(base_uv + float2(u0, v0) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw1 * vw0 * SampleTextureAndCompare_id86(base_uv + float2(u1, v0) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw2 * vw0 * SampleTextureAndCompare_id86(base_uv + float2(u2, v0) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw0 * vw1 * SampleTextureAndCompare_id86(base_uv + float2(u0, v1) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw1 * vw1 * SampleTextureAndCompare_id86(base_uv + float2(u1, v1) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw2 * vw1 * SampleTextureAndCompare_id86(base_uv + float2(u2, v1) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw0 * vw2 * SampleTextureAndCompare_id86(base_uv + float2(u0, v2) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw1 * vw2 * SampleTextureAndCompare_id86(base_uv + float2(u1, v2) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow += uw2 * vw2 * SampleTextureAndCompare_id86(base_uv + float2(u2, v2) * ShadowMapTextureTexelSize_id99, positionDepth);
        shadow /= 144.0f;
    }
    return shadow;
}
float GetAngleAttenuation_id72(float3 lightVector, float3 lightDirection, float lightAngleScale, float lightAngleOffset)
{
    float cd = dot(lightDirection, lightVector);
    float attenuation = saturate(cd * lightAngleScale + lightAngleOffset);
    attenuation *= attenuation;
    return attenuation;
}
float GetDistanceAttenuation_id71(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id70(d2, lightInvSquareRadius);
    return attenuation;
}
float GetDistanceAttenuation_id63(float3 lightVector, float lightInvSquareRadius)
{
    float d2 = dot(lightVector, lightVector);
    float attenuation = 1.0 / (max(d2, 0.01 * 0.01));
    attenuation *= SmoothDistanceAttenuation_id62(d2, lightInvSquareRadius);
    return attenuation;
}
float ComputeShadowFromCascade_id85(float3 shadowPositionWS, int cascadeIndex, int lightIndex)
{
    float4 shadowPosition = mul(float4(shadowPositionWS, 1), WorldToShadowCascadeUV_id160[cascadeIndex + lightIndex * TCascadeCountBase_id158]);
    shadowPosition.z -= DepthBiases_id161[lightIndex];
    shadowPosition.xyz /= shadowPosition.w;
    return FilterShadow_id82(shadowPosition.xy, shadowPosition.z);
}
float3 GetShadowPositionOffset_id84(float offsetScale, float nDotL, float3 normal)
{
    float normalOffsetScale = saturate(1.0f - nDotL);
    return 2.0f * ShadowMapTextureTexelSize_id99.x * offsetScale * normalOffsetScale * normal;
}
void ComputeShadow_id83(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void ProcessLight_id73(inout PS_STREAMS streams, SpotLightDataInternal light)
{
    float3 lightVector = light.PositionWS - streams.PositionWS_id19.xyz;
    float lightVectorLength = length(lightVector);
    float3 lightVectorNorm = lightVector / lightVectorLength;
    float3 lightAngleOffsetAndInvSquareRadius = light.AngleOffsetAndInvSquareRadius;
    float2 lightAngleAndOffset = lightAngleOffsetAndInvSquareRadius.xy;
    float lightInvSquareRadius = lightAngleOffsetAndInvSquareRadius.z;
    float3 lightDirection = -light.DirectionWS;
    float attenuation = 1;
    attenuation *= GetDistanceAttenuation_id71(lightVector, lightInvSquareRadius);
    attenuation *= GetAngleAttenuation_id72(lightVectorNorm, lightDirection, lightAngleAndOffset.x, lightAngleAndOffset.y);
    streams.lightColor_id39 = light.Color * attenuation;
    streams.lightDirectionWS_id38 = lightDirection;
}
void ProcessLight_id65(inout PS_STREAMS streams, PointLightDataInternal light)
{
    float3 lightVector = light.PositionWS - streams.PositionWS_id19.xyz;
    float lightVectorLength = length(lightVector);
    float3 lightVectorNorm = lightVector / lightVectorLength;
    float lightInvSquareRadius = light.InvSquareRadius;
    float attenuation = 1;
    attenuation *= GetDistanceAttenuation_id63(lightVector, lightInvSquareRadius);
    streams.lightColor_id39 = light.Color * attenuation;
    streams.lightDirectionWS_id38 = lightVectorNorm;
}
float4 Compute_id167(inout PS_STREAMS streams, float3 direction)
{
    float alpha = streams.alphaRoughness_id63;
    float mipLevel = sqrt(alpha) * MipCount_id174;
    return CubeMap_id175.SampleLevel(LinearSampler_id130, direction, mipLevel);
}
float4 Compute_id162(float3 direction)
{
    float x = direction.x;
    float y = direction.y;
    float z = direction.z;
    float x2 = x * x;
    float y2 = y * y;
    float z2 = z * z;
    float3 color = SphericalColors_id173[0];

    {
        color += SphericalColors_id173[1] * y;
        color += SphericalColors_id173[2] * z;
        color += SphericalColors_id173[3] * x;

        {
            color += SphericalColors_id173[4] * y * x;
            color += SphericalColors_id173[5] * y * z;
            color += SphericalColors_id173[6] * (3.0 * z2 - 1.0);
            color += SphericalColors_id173[7] * x * z;
            color += SphericalColors_id173[8] * (x2 - y2);
        }
    }
    return float4(color, 1);
}
void ComputeShadow_id77(inout PS_STREAMS streams, int lightIndex)
{
    ComputeShadow_id83(streams, lightIndex);
    int cascadeIndexBase = lightIndex * TCascadeCount_id163;
    int cascadeIndex = 0;

    [unroll]
    for (int i = 0; i < TCascadeCount_id163 - 1; i++)
    {
        [flatten]
        if (streams.DepthVS_id20 > CascadeDepthSplits_id168[cascadeIndexBase + i])
        {
            cascadeIndex = i + 1;
        }
    }
    float shadow = 1.0;
    float3 shadowPosition = streams.PositionWS_id19.xyz;
    shadowPosition += GetShadowPositionOffset_id84(OffsetScales_id162[lightIndex], streams.NdotL_id43, streams.normalWS_id16);
    if (cascadeIndex < TCascadeCount_id163)
    {
        shadow = ComputeShadowFromCascade_id85(shadowPosition, cascadeIndex, lightIndex);
        float nextSplit = CascadeDepthSplits_id168[cascadeIndexBase + cascadeIndex];
        float splitSize = cascadeIndex == 0 ? nextSplit : nextSplit - CascadeDepthSplits_id168[cascadeIndexBase + cascadeIndex - 1];
        float splitDist = (nextSplit - streams.DepthVS_id20) / splitSize;
        if (splitDist < 0.2)
        {
            float lerpAmt = smoothstep(0.0, 0.2, splitDist);
            if (cascadeIndex == TCascadeCount_id163 - 1)
            {
            }
            else if (TBlendCascades_id165)
            {
                float nextShadow = ComputeShadowFromCascade_id85(shadowPosition, cascadeIndex + 1, lightIndex);
                shadow = lerp(nextShadow, shadow, lerpAmt);
            }
        }
    }

    {
        streams.shadowColor_id76 = shadow;
    }
}
void PrepareDirectLightCore_id76(inout PS_STREAMS streams, int lightIndex)
{
    streams.lightColor_id39 = Lights_id96[lightIndex].Color;
    streams.lightDirectionWS_id38 = -Lights_id96[lightIndex].DirectionWS;
}
void ComputeShadow_id69(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void PrepareDirectLightCore_id68(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id86.Load(streams.lightIndex_id84);
    streams.lightIndex_id84++;
    SpotLightDataInternal spotLight;
    float4 spotLight1 = SpotLights_id93.Load(realLightIndex * 4);
    float4 spotLight2 = SpotLights_id93.Load(realLightIndex * 4 + 1);
    float4 spotLight3 = SpotLights_id93.Load(realLightIndex * 4 + 2);
    float4 spotLight4 = SpotLights_id93.Load(realLightIndex * 4 + 3);
    spotLight.PositionWS = spotLight1.xyz;
    spotLight.DirectionWS = spotLight2.xyz;
    spotLight.AngleOffsetAndInvSquareRadius = spotLight3.xyz;
    spotLight.Color = spotLight4.xyz;
    ProcessLight_id73(streams, spotLight);
}
void ComputeShadow_id61(inout PS_STREAMS streams, int lightIndex)
{
    streams.shadowColor_id76 = 1.0f;
}
void PrepareDirectLightCore_id60(inout PS_STREAMS streams, int lightIndexIgnored)
{
    int realLightIndex = LightIndices_id86.Load(streams.lightIndex_id84);
    streams.lightIndex_id84++;
    PointLightDataInternal pointLight;
    float4 pointLight1 = PointLights_id90.Load(realLightIndex * 2);
    float4 pointLight2 = PointLights_id90.Load(realLightIndex * 2 + 1);
    pointLight.PositionWS = pointLight1.xyz;
    pointLight.InvSquareRadius = pointLight1.w;
    pointLight.Color = pointLight2.xyz;
    ProcessLight_id65(streams, pointLight);
}
void PrepareLightData_id64(inout PS_STREAMS streams)
{
    float projectedDepth = streams.ShadingPosition_id0.z;
    float depth = ZProjection_id79.y / (projectedDepth - ZProjection_id79.x);
    int2 shadingPosition = int2(streams.ShadingPosition_id0.xy);
    int slice = int(max(log2(depth * ClusterDepthScale_id87 + ClusterDepthBias_id88), 0));
    streams.lightData_id83 = LightClusters_id85.Load(int4(shadingPosition / ClusterSize2_id82, slice, 0));
    streams.lightIndex_id84 = streams.lightData_id83.x;
}
float GetFilterSquareRoughnessAdjustment_id115(inout PS_STREAMS streams, float3 averageNormal)
{
    float r = length(streams.matNormal_id45);
    float roughnessAdjust = 0.0f;
    if (r < 1.0f)
        roughnessAdjust = 0.5 * (1 - r * r) / (3 * r - r * r * r);
    return roughnessAdjust;
}
void ResetStream_id126()
{
}
void PrepareEnvironmentLight_id179(inout PS_STREAMS streams)
{
    float ambientAccessibility = streams.matAmbientOcclusion_id51;
    float3 sampleDirection = mul(streams.normalWS_id16, (float3x3)SkyMatrix_id176);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightDiffuseColor_id41 = Compute_id162(sampleDirection).rgb * Intensity_id177 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id58.x;
    sampleDirection = reflect(-streams.viewWS_id61, streams.normalWS_id16);
    sampleDirection = mul(sampleDirection, (float3x3)SkyMatrix_id176);
    sampleDirection = float3(sampleDirection.xy, -sampleDirection.z);
    streams.envLightSpecularColor_id42 = Compute_id167(streams, sampleDirection).rgb * Intensity_id177 * ambientAccessibility * streams.matDiffuseSpecularAlphaBlend_id58.y;
}
float3 ComputeEnvironmentLightContribution_id183(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor * streams.envLightDiffuseColor_id41;
}
void PrepareEnvironmentLight_id173(inout PS_STREAMS streams)
{
    float3 lightColor = AmbientLight_id171 * streams.matAmbientOcclusion_id51;
    streams.envLightDiffuseColor_id41 = lightColor;
    streams.envLightSpecularColor_id42 = lightColor;
}
void PrepareDirectLight_id156(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id76(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id77(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id157()
{
    return LightCount_id94;
}
int GetMaxLightCount_id158()
{
    return TMaxLightCount_id95;
}
void PrepareDirectLights_id154()
{
}
void PrepareDirectLight_id147(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id68(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id69(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id150(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y >> 16;
}
int GetMaxLightCount_id149(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y >> 16;
}
void PrepareDirectLights_id145()
{
}
float3 ComputeDirectLightContribution_id182(inout PS_STREAMS streams)
{
    float3 diffuseColor = streams.matDiffuseVisible_id62;
    return diffuseColor / PI_id183 * streams.lightColorNdotL_id40 * streams.matDiffuseSpecularAlphaBlend_id58.x;
}
void PrepareMaterialPerDirectLight_id27(inout PS_STREAMS streams)
{
    streams.H_id68 = normalize(streams.viewWS_id61 + streams.lightDirectionWS_id38);
    streams.NdotH_id69 = max(dot(streams.normalWS_id16, streams.H_id68), 0.0001f);
    streams.LdotH_id70 = max(dot(streams.lightDirectionWS_id38, streams.H_id68), 0.0001f);
    streams.VdotH_id71 = streams.LdotH_id70;
}
void PrepareDirectLight_id137(inout PS_STREAMS streams, int lightIndex)
{
    PrepareDirectLightCore_id60(streams, lightIndex);
    streams.NdotL_id43 = max(dot(streams.normalWS_id16, streams.lightDirectionWS_id38), 0.0001f);
    ComputeShadow_id61(streams, lightIndex);
    streams.lightColorNdotL_id40 = streams.lightColor_id39 * streams.shadowColor_id76 * streams.NdotL_id43 * streams.lightDirectAmbientOcclusion_id44;
}
int GetLightCount_id141(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y & 0xFFFF;
}
int GetMaxLightCount_id140(inout PS_STREAMS streams)
{
    return streams.lightData_id83.y & 0xFFFF;
}
void PrepareDirectLights_id139(inout PS_STREAMS streams)
{
    PrepareLightData_id64(streams);
}
void PrepareMaterialForLightingAndShading_id125(inout PS_STREAMS streams)
{
    streams.lightDirectAmbientOcclusion_id44 = lerp(1.0, streams.matAmbientOcclusion_id51, streams.matAmbientOcclusionDirectLightingFactor_id52);
    streams.matDiffuseVisible_id62 = streams.matDiffuse_id47.rgb * lerp(1.0f, streams.matCavity_id53, streams.matCavityDiffuse_id54) * streams.matDiffuseSpecularAlphaBlend_id58.r * streams.matAlphaBlendColor_id59;
    streams.matSpecularVisible_id64 = streams.matSpecular_id49.rgb * streams.matSpecularIntensity_id50 * lerp(1.0f, streams.matCavity_id53, streams.matCavitySpecular_id55) * streams.matDiffuseSpecularAlphaBlend_id58.g * streams.matAlphaBlendColor_id59;
    streams.NdotV_id65 = max(dot(streams.normalWS_id16, streams.viewWS_id61), 0.0001f);
    float roughness = 1.0f - streams.matGlossiness_id48;
    float roughnessAdjust = GetFilterSquareRoughnessAdjustment_id115(streams, streams.matNormal_id45);
    streams.alphaRoughness_id63 = max(roughness * roughness + roughnessAdjust, 0.001);
}
void ResetLightStream_id124(inout PS_STREAMS streams)
{
    streams.lightDirectionWS_id38 = 0;
    streams.lightColor_id39 = 0;
    streams.lightColorNdotL_id40 = 0;
    streams.envLightDiffuseColor_id41 = 0;
    streams.envLightSpecularColor_id42 = 0;
    streams.lightDirectAmbientOcclusion_id44 = 1.0f;
    streams.NdotL_id43 = 0;
}
void UpdateNormalFromTangentSpace_id19(float3 normalInTangentSpace)
{
}
float4 Compute_id180()
{
    return constantColor_id180;
}
void ResetStream_id129(inout PS_STREAMS streams)
{
    ResetStream_id126();
    streams.matBlend_id37 = 0.0f;
}
void Compute_id220(inout PS_STREAMS streams)
{
    UpdateNormalFromTangentSpace_id19(streams.matNormal_id45);
    ResetLightStream_id124(streams);
    PrepareMaterialForLightingAndShading_id125(streams);
    float3 directLightingContribution = 0;

    {
        PrepareDirectLights_id139(streams);
        const int maxLightCount = GetMaxLightCount_id140(streams);
        int count = GetLightCount_id141(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id137(streams, i);
            PrepareMaterialPerDirectLight_id27(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id182(streams);
            }
        }
    }

    {
        PrepareDirectLights_id145();
        const int maxLightCount = GetMaxLightCount_id149(streams);
        int count = GetLightCount_id150(streams);

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id147(streams, i);
            PrepareMaterialPerDirectLight_id27(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id182(streams);
            }
        }
    }

    {
        PrepareDirectLights_id154();
        const int maxLightCount = GetMaxLightCount_id158();
        int count = GetLightCount_id157();

        for (int i = 0; i < maxLightCount; i++)
        {
            if (i >= count)
            {
                break;
            }
            PrepareDirectLight_id156(streams, i);
            PrepareMaterialPerDirectLight_id27(streams);

            {
                directLightingContribution += ComputeDirectLightContribution_id182(streams);
            }
        }
    }
    float3 environmentLightingContribution = 0;

    {
        PrepareEnvironmentLight_id173(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id183(streams);
        }
    }

    {
        PrepareEnvironmentLight_id179(streams);

        {
            environmentLightingContribution += ComputeEnvironmentLightContribution_id183(streams);
        }
    }
    streams.shadingColor_id66 += directLightingContribution * PI_id183 + environmentLightingContribution;
    streams.shadingColorAlpha_id67 = streams.matDiffuse_id47.a;
}
void Compute_id205(inout PS_STREAMS streams)
{
    float4 colorBase = Compute_id180();
    streams.matDiffuse_id47 = colorBase;
    streams.matColorBase_id46 = colorBase;
}
void ResetStream_id131(inout PS_STREAMS streams)
{
    ResetStream_id129(streams);
    streams.matNormal_id45 = float3(0, 0, 1);
    streams.matColorBase_id46 = 0.0f;
    streams.matDiffuse_id47 = 0.0f;
    streams.matDiffuseVisible_id62 = 0.0f;
    streams.matSpecular_id49 = 0.0f;
    streams.matSpecularVisible_id64 = 0.0f;
    streams.matSpecularIntensity_id50 = 1.0f;
    streams.matGlossiness_id48 = 0.0f;
    streams.alphaRoughness_id63 = 1.0f;
    streams.matAmbientOcclusion_id51 = 1.0f;
    streams.matAmbientOcclusionDirectLightingFactor_id52 = 0.0f;
    streams.matCavity_id53 = 1.0f;
    streams.matCavityDiffuse_id54 = 0.0f;
    streams.matCavitySpecular_id55 = 0.0f;
    streams.matEmissive_id56 = 0.0f;
    streams.matEmissiveIntensity_id57 = 0.0f;
    streams.matDiffuseSpecularAlphaBlend_id58 = 1.0f;
    streams.matAlphaBlendColor_id59 = 1.0f;
    streams.matAlphaDiscard_id60 = 0.0f;
}
void PostTransformPosition_id6()
{
}
void PreTransformPosition_id4()
{
}
void Compute_id57(inout PS_STREAMS streams)
{

    {
        Compute_id205(streams);
    }

    {
        Compute_id220(streams);
    }
}
void ResetStream_id56(inout PS_STREAMS streams)
{
    ResetStream_id131(streams);
    streams.shadingColorAlpha_id67 = 1.0f;
}
void PostTransformPosition_id14(inout VS_STREAMS streams)
{
    PostTransformPosition_id6();
    streams.ShadingPosition_id0 = mul(streams.PositionWS_id19, ViewProjection_id26);
    streams.PositionH_id21 = streams.ShadingPosition_id0;
    streams.DepthVS_id20 = streams.ShadingPosition_id0.w;
}
void TransformPosition_id5()
{
}
void PreTransformPosition_id13(inout VS_STREAMS streams)
{
    PreTransformPosition_id4();
    streams.PositionWS_id19 = mul(streams.Position_id18, World_id29);
}
float4 Shading_id28(inout PS_STREAMS streams)
{
    streams.viewWS_id61 = normalize(Eye_id28.xyz - streams.PositionWS_id19.xyz);
    streams.shadingColor_id66 = 0;
    ResetStream_id56(streams);
    Compute_id57(streams);
    return float4(streams.shadingColor_id66, streams.shadingColorAlpha_id67);
}
void PSMain_id1()
{
}
void BaseTransformVS_id7(inout VS_STREAMS streams)
{
    PreTransformPosition_id13(streams);
    TransformPosition_id5();
    PostTransformPosition_id14(streams);
}
void VSMain_id0()
{
}
void PSMain_id3(inout PS_STREAMS streams)
{
    PSMain_id1();
    streams.ColorTarget_id1 = Shading_id28(streams);
}
void GenerateNormal_PS_id18(inout PS_STREAMS streams)
{
    streams.normalWS_id16 = normalize(streams.normalWS_id16);
}
void GenerateNormal_VS_id17(inout VS_STREAMS streams)
{
    streams.normalWS_id16 = mul(streams.meshNormal_id14, (float3x3)WorldInverseTranspose_id31);
}
void VSMain_id8(inout VS_STREAMS streams)
{
    VSMain_id0();
    BaseTransformVS_id7(streams);
}
PS_OUTPUT PSMain(VS_OUTPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.PositionWS_id19 = __input__.PositionWS_id19;
    streams.ShadingPosition_id0 = __input__.ShadingPosition_id0;
    streams.DepthVS_id20 = __input__.DepthVS_id20;
    streams.normalWS_id16 = __input__.normalWS_id16;
    GenerateNormal_PS_id18(streams);
    PSMain_id3(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id1 = streams.ColorTarget_id1;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id18 = __input__.Position_id18;
    streams.meshNormal_id14 = __input__.meshNormal_id14;
    VSMain_id8(streams);
    GenerateNormal_VS_id17(streams);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id19 = streams.PositionWS_id19;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.DepthVS_id20 = streams.DepthVS_id20;
    __output__.normalWS_id16 = streams.normalWS_id16;
    return __output__;
}
