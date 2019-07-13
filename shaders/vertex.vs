#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec2 aTexCoord;

out vec2 texCoord;

uniform mat4 model;
uniform mat4 view;
uniform mat4 proj;

uniform mat4 transform;

void main()
{
    gl_Position = proj * view * model * vec4(aPos, 1.0f);
    texCoord = vec2(aTexCoord.x, aTexCoord.y);
}