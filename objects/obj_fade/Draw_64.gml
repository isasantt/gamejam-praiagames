// shader
if surface_exists(application_surface) {
    shader_set(shd_cozy);
    shader_set_uniform_f(shader_get_uniform(shd_cozy, "u_intensity"), cozy_intensidade);
    shader_set_uniform_f(shader_get_uniform(shd_cozy, "u_vignette"), cozy_vinheta);
    draw_surface_stretched(application_surface, 0, 0, display_get_gui_width(), display_get_gui_height());
    shader_reset();
}

// fade
if alpha > 0 {
    draw_set_alpha(alpha);
    draw_set_colour(c_black);
    draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
    draw_set_alpha(1);
}