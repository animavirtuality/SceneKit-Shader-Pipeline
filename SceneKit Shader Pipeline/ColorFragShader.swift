//
//  ColorFragShader.swift
//  SceneKit Shader Pipeline
//
//  Created by Grant Jarvis on 10/12/21.
//

//https://github.com/xybp888/iOS-SDKs/blob/master/iPhoneOS13.0.sdk/System/Library/Frameworks/SceneKit.framework/Headers/SCNShadable.h

let colorFragShader =
"""
#include <metal_stdlib>
using namespace metal;


#pragma transparent
#pragma body

//Convert from view space to world space.
const float3 worldFragmentPosition = (float4(_surface.position, 1.0f) * scn_frame.inverseViewTransform).xyz;

//Final add
_output.color.rgb = worldFragmentPosition;
"""
