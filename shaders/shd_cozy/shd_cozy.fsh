//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_intensity;
uniform float u_vignette;

void main()
{
    vec4 base = texture2D( gm_BaseTexture, v_vTexcoord ) * v_vColour;

	//tons (vermelho, verde, azul) - botei azul mais pra baixo e vermelho mais pra cima pra deixar meio alaranjado
	vec3 tint = vec3(1.15, 0.95, 0.75);
    vec3 graded = base.rgb * tint;

    // aqui é pra contraste
    graded = (graded - 0.5) * 1.05 + 0.5;

    graded = mix(base.rgb, graded, u_intensity);

    // vinheta q eu nao sei se vou manter
    vec2 uv = v_vTexcoord - 0.5;
    float vig = 1.0 - dot(uv, uv) * u_vignette;
    graded *= vig;

    gl_FragColor = vec4(graded, base.a);
}