#if defined(VERTEX) || __VERSION__ > 100 || defined(GL_FRAGMENT_PRECISION_HIGH)
	#define PRECISION highp
#else
	#define PRECISION mediump
#endif


extern PRECISION vec2 goldfoil;
extern PRECISION number dissolve;
extern PRECISION number time;
extern PRECISION vec4 texture_details;
extern PRECISION vec2 image_details;
extern bool shadow;
extern PRECISION vec4 burn_colour_1;
extern PRECISION vec4 burn_colour_2;

vec4 dissolve_mask(vec4 tex, vec2 texture_coords, vec2 uv)
{
    if (dissolve < 0.001) {
        return vec4(shadow ? vec3(0.,0.,0.) : tex.xyz, shadow ? tex.a*0.3: tex.a);
    }

    float adjusted_dissolve = (dissolve*dissolve*(3.-2.*dissolve))*1.02 - 0.01; //Adjusting 0.0-1.0 to fall to -0.1 - 1.1 scale so the mask does not pause at extreme values

	float t = time * 10.0 + 2003.;
	vec2 floored_uv = (floor((uv*texture_details.ba)))/max(texture_details.b, texture_details.a);
    vec2 uv_scaled_centered = (floored_uv - 0.5) * 2.3 * max(texture_details.b, texture_details.a);
	
	vec2 field_part1 = uv_scaled_centered + 50.*vec2(sin(-t / 143.6340), cos(-t / 99.4324));
	vec2 field_part2 = uv_scaled_centered + 50.*vec2(cos( t / 53.1532),  cos( t / 61.4532));
	vec2 field_part3 = uv_scaled_centered + 50.*vec2(sin(-t / 87.53218), sin(-t / 49.0000));

    float field = (1.+ (
        cos(length(field_part1) / 19.483) + sin(length(field_part2) / 33.155) * cos(field_part2.y / 15.73) +
        cos(length(field_part3) / 27.193) * sin(field_part3.x / 21.92) ))/2.;
    vec2 borders = vec2(0.2, 0.8);

    float res = (.5 + .5* cos( (adjusted_dissolve) / 82.612 + ( field + -.5 ) *3.14))
    - (floored_uv.x > borders.y ? (floored_uv.x - borders.y)*(5. + 5.*dissolve) : 0.)*(dissolve)
    - (floored_uv.y > borders.y ? (floored_uv.y - borders.y)*(5. + 5.*dissolve) : 0.)*(dissolve)
    - (floored_uv.x < borders.x ? (borders.x - floored_uv.x)*(5. + 5.*dissolve) : 0.)*(dissolve)
    - (floored_uv.y < borders.x ? (borders.x - floored_uv.y)*(5. + 5.*dissolve) : 0.)*(dissolve);

    if (tex.a > 0.01 && burn_colour_1.a > 0.01 && !shadow && res < adjusted_dissolve + 0.8*(0.5-abs(adjusted_dissolve-0.5)) && res > adjusted_dissolve) {
        if (!shadow && res < adjusted_dissolve + 0.5*(0.5-abs(adjusted_dissolve-0.5)) && res > adjusted_dissolve) {
            tex.rgba = burn_colour_1.rgba;
        } else if (burn_colour_2.a > 0.01) {
            tex.rgba = burn_colour_2.rgba;
        }
    }

    return vec4(shadow ? vec3(0.,0.,0.) : tex.xyz, res > adjusted_dissolve ? (shadow ? tex.a*0.3: tex.a) : .0);
}

number hue(number s, number t, number h)
{
	number hs = mod(h, 1.)*6.;
	if (hs < 1.) return (t-s) * hs + s;
	if (hs < 3.) return t;
	if (hs < 4.) return (t-s) * (4.-hs) + s;
	return s;
}

vec4 RGB(vec4 c)
{
	if (c.y < 0.0001)
		return vec4(vec3(c.z), c.a);

	number t = (c.z < .5) ? c.y*c.z + c.z : -c.y*c.z + (c.y+c.z);
	number s = 2.0 * c.z - t;
	return vec4(hue(s,t,c.x + 1./3.), hue(s,t,c.x), hue(s,t,c.x - 1./3.), c.w);
}

vec4 HSL(vec4 c)
{
	number low = min(c.r, min(c.g, c.b));
	number high = max(c.r, max(c.g, c.b));
	number delta = high - low;
	number sum = high+low;

	vec4 hsl = vec4(.0, .0, .5 * sum, c.a);
	if (delta == .0)
		return hsl;

	hsl.y = (hsl.z < .5) ? delta / sum : delta / (2.0 - sum);

	if (high == c.r)
		hsl.x = (c.g - c.b) / delta;
	else if (high == c.g)
		hsl.x = (c.b - c.r) / delta + 2.0;
	else
		hsl.x = (c.r - c.g) / delta + 4.0;

	hsl.x = mod(hsl.x / 6., 1.);
	return hsl;
}
extern PRECISION float lines_offset;


vec4 gold_color = vec4(231., 164., 25., 0.) / 255.;

vec4 dissolve_mask(vec4 final_pixel, vec2 texture_coords, vec2 uv);


vec4 effect( vec4 colour, Image texture, vec2 texture_coords, vec2 screen_coords )
{
    vec2 uv = (((texture_coords)*(image_details)) - texture_details.xy*texture_details.ba)/texture_details.ba;
    vec4 pixel = Texel(texture, texture_coords);
    vec4 tex = Texel( texture, texture_coords);

    vec2 adjusted_uv = uv - vec2(0.5, 0.5);
    adjusted_uv.x = adjusted_uv.x*texture_details.b/texture_details.a;

    number low = min(tex.r, min(tex.g, tex.b));
    number high = max(tex.r, max(tex.g, tex.b));
	number delta = min(high, max(0.6, 1. - low));

    number fac = 0.8 + 0.9*sin(11.*uv.x+4.32*uv.y + goldfoil.r*12. + cos(goldfoil.r*5.3 + uv.y*4.2 - uv.x*4.));
    number fac2 = 0.5 + 0.5*sin(8.*uv.x+2.32*uv.y + goldfoil.r*5. - cos(goldfoil.r*2.3 + uv.x*8.2));
    number fac3 = 0.5 + 0.5*sin(10.*uv.x+5.32*uv.y + goldfoil.r*6.111 + sin(goldfoil.r*5.3 + uv.y*3.2));
    number fac4 = 0.5 + 0.5*sin(3.*uv.x+2.32*uv.y + goldfoil.r*8.111 + sin(goldfoil.r*1.3 + uv.y*11.2));
    number fac5 = sin(0.9*16.*uv.x+5.32*uv.y + goldfoil.r*12. + cos(goldfoil.r*5.3 + uv.y*4.2 - uv.x*4.));

    vec4 hsl = HSL(tex);
    
    hsl.y = 0.02;
    hsl.z *= (0.5 - adjusted_uv.x*(cos(goldfoil.r*0.512)));
    hsl.z *= (1.5 - adjusted_uv.y*(cos(goldfoil.r*0.512)));
    tex = RGB(hsl)+gold_color*0.6;

    number maxfac = 0.37*max(max(fac, max(fac2, max(fac3,0.8))) + (fac+fac2+fac3*fac4), 0.);
    tex.b = tex.b-delta + delta*maxfac*(0.6 - fac5*0.3) - 0.3;
    tex.r = tex.r-delta + delta*maxfac*(0.6 - fac5*0.1) - 0.1;
    tex.g = tex.g-delta + delta*maxfac*(0.6 - fac5*0.1) - 0.1;

    fac = max(min(2.*sin((length(90.*adjusted_uv) + goldfoil.r*2.) + 3.*(1.+0.8*cos(length(113.1121*adjusted_uv) - goldfoil.r*3.121))) - 1. - max(5.-length(90.*adjusted_uv), 0.), 1.), 0.);
    vec2 rotater = vec2(cos(goldfoil.r*0.1221), sin(goldfoil.r*0.3512));
    number angle = dot(rotater, adjusted_uv)/(length(rotater)*length(adjusted_uv));
    fac2 = max(min(5.*cos(goldfoil.g*0.3 + angle*3.14*(2.2+0.9*sin(goldfoil.r*1.65 + 0.2*goldfoil.g))) - 4. - max(2.-length(20.*adjusted_uv), 0.), 1.), 0.);
    fac3 = 0.3*max(min(2.*sin(goldfoil.r*5. + uv.x*3. + 3.*(1.+0.5*cos(goldfoil.r*7.))) - 1., 1.), -1.);
    fac4 = 0.3*max(min(2.*sin(goldfoil.r*6.66 + uv.y*3.8 + 3.*(1.+0.5*cos(goldfoil.r*3.414))) - 1., 1.), -1.);

    maxfac = max(max(fac, max(fac2, max(fac3, max(fac4, 1.5)))) + 2.2*(fac+fac2+fac3+fac4), 2.);

    tex.r = tex.r+delta*maxfac*0.15;
    tex.g = tex.g+delta*maxfac*0.1;
    tex.b = tex.b+delta*maxfac*0.0;
    //tex.a = 0.2*tex.a + 0.2*min(0.2, maxfac*0.1);

    if (uv.x > 2. * uv.x) {
        uv = goldfoil;
    }

    return dissolve_mask(tex, texture_coords, uv);
}

extern PRECISION vec2 mouse_screen_pos;
extern PRECISION float hovering;
extern PRECISION float screen_scale;

#ifdef VERTEX
vec4 position( mat4 transform_projection, vec4 vertex_position )
{
    if (hovering <= 0.){
        return transform_projection * vertex_position;
    }
    float mid_dist = length(vertex_position.xy - 0.5*love_ScreenSize.xy)/length(love_ScreenSize.xy);
    vec2 mouse_offset = (vertex_position.xy - mouse_screen_pos.xy)/screen_scale;
    float scale = 0.2*(-0.03 - 0.3*max(0., 0.3-mid_dist))
                *hovering*(length(mouse_offset)*length(mouse_offset))/(2. -mid_dist);

    return transform_projection * vertex_position + vec4(0,0,0,scale);
}
#endif