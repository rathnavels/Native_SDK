#version 300 es

in highp vec3 vNormal;
in highp vec3 vLightDirection;

layout (location = 0) out lowp vec4 oColor;

void main()
{
	highp float inv_lightdist = 1.0 / length(vLightDirection);
	highp float diffuse = max(dot(normalize(vNormal), vLightDirection * inv_lightdist), 0.0);
	
	oColor = vec4(vec3(diffuse) * inv_lightdist * 20.0, 1.0);
}
