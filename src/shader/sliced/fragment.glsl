varying vec3 vPosition;

void main(){
    float uSliceStart = 1.0;
    float uSliceArc = 1.5;

    // angle
    float angle = atan(vPosition.y, vPosition.x );
    angle -= uSliceStart;

    if ( angle > 0. && angle < uSliceArc)
        discard;
    csm_FragColor = vec4(vec3(angle), 1.0);
}