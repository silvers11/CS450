#version 330 compatibility

in vec3 vertex_color;
uniform float	uTime;		// "Time", from Animate( )
uniform bool uf;
in vec2  	vST;		// texture coords

void
main( )
{	
	vec3 myColor = vec3( 1.0, .2, .0 );
	if(uf == true){
	gl_FragColor = vec4( vertex_color,  1. );
	}
	else{
	
	gl_FragColor = vec4( myColor,  1. );
	}

}