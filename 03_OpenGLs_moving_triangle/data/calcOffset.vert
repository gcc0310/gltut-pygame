#version 130

in vec4 position;

uniform float period;
uniform float time;

void main()
{
	float timeScale = 3.14159f * 2.0f / period;

	float currTime = mod(time, period);
	vec4 totalOffset = vec4(
		cos(currTime * timeScale) * 0.5f,
		sin(currTime * timeScale) * 0.5f,
		0.0f,
		0.0f);

	gl_Position = position + totalOffset;
}
