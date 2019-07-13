#version 330 core
out vec4 FragColor;
in vec2 texCoord;

uniform sampler2D ourTexture;
uniform sampler2D ourTexture2;
uniform float alpha;

void main()
{
    FragColor = mix(texture(ourTexture, texCoord), texture(ourTexture2, vec2(1.0 - texCoord.x, texCoord.y)), alpha);
}