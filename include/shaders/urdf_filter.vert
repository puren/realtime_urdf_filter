#version 130
out vec4 normal;
out vec4 color;

void main() {
  gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex;

  vec3 temp = gl_NormalMatrix * gl_Normal;
  normal = vec4 (-temp.x, temp.y, -temp.z, 1.0);

  color = gl_Color;
  color[3] = 1.0;
}

