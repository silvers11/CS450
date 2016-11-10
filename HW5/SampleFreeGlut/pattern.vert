#version 330 compatibility

out vec3 vertex_color;
uniform float	uTime;		// "Time", from Animate( )
 float	Ds;
out vec2  	vST;		// texture coords
	uniform bool uV;
const float PI = 	3.14159265;
const float AMP = 	0.2;		// amplitude
const float W = 	2.;		// frequency

void
main( )
{	
vec3 vert = gl_Vertex.xyz;
	
	vST = gl_MultiTexCoord0.st;
	
	
	//vert.y = PI * uTime;
	//vert.z = PI * uTime;

	if(uV == true){
	vertex_color = gl_Vertex.xyz;
	vert.x = PI * uTime;
	}
	else{
	//vertex_color = gl_Vertex.xyz;
	}
		gl_Position = gl_ModelViewProjectionMatrix * vec4( vert, 1 );
}
