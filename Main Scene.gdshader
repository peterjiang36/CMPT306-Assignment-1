shader_type canvas_item;

void fragment() {
    // Use the built-in TIME variable to animate the color
    // Create an RGB color that changes over time
    float red = abs(sin(TIME * 0.5));      // Red component oscillates with time
    float green = abs(sin(TIME + 1.0));  // Green component, phase shifted by 2
    float blue = abs(sin(TIME + 4.0));   // Blue component, phase shifted by 4

    // Set the alpha to 1 (fully opaque)
    vec4 color = vec4(red, green, blue, 1.0);

    // Output the color to the fragment
    COLOR = color;
}

