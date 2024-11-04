uniform sampler2D uTexture;
uniform vec3 uColor;
void main() {
    float textureAlhpa = texture(uTexture, gl_PointCoord).r;
    gl_FragColor = vec4(uColor, textureAlhpa);
    #include <tonemapping_fragment>
    #include <colorspace_fragment>
}