-- calcul the shader with the Phong lighting model
-- thanks to this vid, great tutorial https://www.youtube.com/watch?v=BkxN2pwwRPM

shader_code = [[
#define NUM_LIGHTS 32

struct Light {
	vec2	position;
	vec3	diffuse;
	float	power;
};

extern Light lights[NUM_LIGHTS];
extern int num_lights;
extern vec2 screen;

const float constant = 1.0;
const float linear = 0.09;
const float quadratic = 0.032;

vec4 effect(vec4 color, Image image, vec2 uvs, vec2 screen_coords)
{
	vec4 pixel = Texel(image, uvs);

	vec2 norm_screen = screen_coords / screen;
	vec3 diffuse = vec3(0);

	for (int i = 0; i < num_lights; i++)
	{
		Light light = lights[i];

		vec2 norm_pos = light.position / screen;

		float distance = length(norm_pos - norm_screen) * light.power;

		float attenuation = 1.0 / (constant + linear * distance + quadratic * (distance * distance));

		diffuse += light.diffuse * attenuation;
	}

	diffuse = clamp(diffuse, 0.0, 1.0);


	return (pixel * vec4(diffuse, 1.0));
}

]]

function kitchenShader()
	-- SHADER PARAMETERS
	-- size of the screen
	shader:send("screen", {
		love.graphics.getWidth(),
		love.graphics.getHeight()
	})
	shader:send("num_lights", 1)
	-- shader position on the screen
	shader:send("lights[0].position", {
		369,
		255
	})
	-- color of the light
	shader:send("lights[0].diffuse", {
		1.0, 1.0, 1.0
	})
	-- power of the light, on n num of pixels
	shader:send("lights[0].power", 16)
end

