//
//  Shaders.metal
//  Pipeline
//
//  Created by linyongzhi on 2019/3/5.
//  Copyright © 2019 BabyTiger. All rights reserved.
//

#include <metal_stdlib>
using namespace metal;

struct VertexIn {
    float4 position [[ attribute(0) ]];
};

vertex float4 vertex_main(const VertexIn vertexIn [[ stage_in ]],
                          constant float &timer [[ buffer(1) ]]) {
    float4 position = vertexIn.position;
    position.x += timer;
    return position;
}

fragment float4 fragment_main() {
    return float4(0, 0, 1, 1);
}
