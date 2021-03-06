// emulated noperspective
#ifndef LOG_DEPTH
varying float v_WindowZ;
#endif
/**
 * Clamps a vertex to the far plane by writing the fragments depth.
 * <p>
 * The shader must enable the GL_EXT_frag_depth extension.
 * </p>
 *
 * @name czm_writeDepthClamp
 * @glslFunction
 *
 * @example
 * gl_FragColor = color;
 * czm_writeDepthClamp();
 *
 * @see czm_depthClamp
 */
void czm_writeDepthClamp()
{
#if defined(GL_EXT_frag_depth) && !defined(LOG_DEPTH)
    gl_FragDepthEXT = clamp(v_WindowZ * gl_FragCoord.w, 0.0, 1.0);
#endif
}
