#version 330 compatibility

in vec3 vertex_color;
uniform float	uTime;		// "Time", from Animate( )
int uz;
in vec2  	vST;		// texture coords

void
main( )
{	
	if(uz == 0){
	vec3 myColor = vec3( 1.0, .2, .0 );
		gl_FragColor = vec4( vertex_color,  1. );
		}
	else{
	vec3 myColor = vec3( 1.0, .2, .0 );
	//if( uTime <.5 )
	{
	//	myColor = vec3( .0, .5, 1.0 );
	}

	gl_FragColor = vec4( myColor,  1. );
	}
}