#version 330 compatibility

out vec3 vertex_color;
uniform float	uTime;		// "Time", from Animate( )
 float	Ds;
out vec2  	vST;		// texture coords
vec4 a;
	float ux0, ux1, ux2, uy0, uy1, uy2, uz;
const float PI = 	3.14159265;
const float AMP = 	0.2;		// amplitude
const float W = 	2.;		// frequency

void
main( )
{ 
	
	vST = gl_MultiTexCoord0.st;
	vec3 vert = gl_Vertex.xyz;
	vert.x = PI * uTime;
	//vert.y = PI * uTime;
	//vert.z = PI * uTime;

	if(uz == 0){
	vertex_color = gl_Vertex.xyz - uTime;
	}
	else{
	vertex_color = gl_Vertex.xyz;

	}
		gl_Position = gl_ModelViewProjectionMatrix * vec4( vert, 1 );
}
