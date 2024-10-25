var _hori = keyboard_check(vk_right) - keyboard_check(vk_left);
var _vert = keyboard_check(vk_down) - keyboard_check(vk_up);

image_speed = 0;

if(point_distance(0, 0, _hori, _vert) == 0) {
  image_index = 0;
  exit;
}

hunger += .01;
image_speed = 1;
var _dir = point_direction(0, 0, _hori, _vert);

move_and_collide(
  lengthdir_x(3, _dir),
  lengthdir_y(3, _dir),
  objCrate);
 
image_xscale = abs(image_xscale);
switch(_dir % 360){
  case 180: image_xscale *= -1;
  case 0: sprite_index = sprEast; break;
  case 135: image_xscale *= -1;
  case 45: sprite_index = sprNorthEast; break;
  case 90: sprite_index = sprNorth; break;
  case 270: sprite_index = sprSouth; break;
  case 225: image_xscale *= -1;
  case 315: sprite_index = sprSouthEast; break;
}