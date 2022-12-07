struct PixelShaderInput
{
	float4 pos : SV_POSITION;
	float3 color : COLOR0;
    float time : PSIZE0;
};

float4 main(PixelShaderInput input) : SV_TARGET
{
	float random_input = sin(input.time / 1000);
    float3 random_color = float3(0.0f, 0.0f, random_input);

    //return float4(input.color * random_color, 1.0f);
    return float4(random_color, 1.0f);
}
