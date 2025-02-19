
# Set viewport and background
cmd.viewport(800, 800)
cmd.bg_color("white")

# General settings
cmd.set("orthoscopic", 1)
cmd.set("two_sided_lighting", 1)
cmd.set("antialias", 1)
cmd.set("ray_shadow", 0)
cmd.set("ray_trace_mode", 1)

# Set color space
cmd.space("cmyk")

# Shader and rendering settings
cmd.set("antialias_shader", 2)
cmd.set("line_smooth", "on")
cmd.set("depth_cue", "on")
cmd.set("specular", 1.00000)
cmd.set("surface_quality", 1)
cmd.set("cartoon_sampling", 14)
cmd.set("ribbon_sampling", 10)
cmd.set("transparency_mode", 2)
cmd.set("use_shaders", "on")

# Enable shaders for various representations
cmd.set("cartoon_use_shader", "on")
cmd.set("cgo_use_shader", "on")
cmd.set("dash_use_shader", "on")
cmd.set("dot_use_shader", "on")
cmd.set("line_use_shader", "on")
cmd.set("mesh_use_shader", "on")
cmd.set("nonbonded_use_shader", "on")
cmd.set("ribbon_use_shader", "on")
cmd.set("sphere_use_shader", "on")
cmd.set("stick_use_shader", "on")
cmd.set("surface_use_shader", "on")

cmd.set("nb_spheres_use_shader", 1)

# Set cylinder representations
cmd.set("render_as_cylinders", "on")
cmd.set("alignment_as_cylinders", "on")
cmd.set("dash_as_cylinders", "on")
cmd.set("line_as_cylinders", "on")
cmd.set("mesh_as_cylinders", "on")
cmd.set("nonbonded_as_cylinders", "on")
cmd.set("ribbon_as_cylinders", "on")
cmd.set("stick_as_cylinders", "on")

cmd.set("cartoon_nucleic_acid_as_cylinders", 1)

# Other representation settings
cmd.set("dot_as_spheres", "on")
cmd.set("stick_ball", "off")
cmd.set("sphere_mode", 9)
cmd.set("nb_spheres_quality", 3)

# Lighting and effects
cmd.set("cartoon_transparency", 0.1)
cmd.set("light_count", 8)
cmd.set("spec_count", 1)
cmd.set("spec_reflect", 0)
cmd.set("ray_shadow_decay_factor", 0.1)

# Additional commands
cmd.do("rebuild")
util.cnc("all", _self=cmd)
cmd.spectrum("count", selection="(all)&elem C")

print("PyMOL startup script executed successfully.")
