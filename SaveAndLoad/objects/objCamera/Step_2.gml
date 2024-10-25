if(!instance_exists(objPlayer)) exit;

var _vw = camera_get_view_width(view_camera[0]);
var _vh = camera_get_view_height(view_camera[0]);
var _x = objPlayer.x - _vw / 2;
var _y = objPlayer.y - _vh / 2;

_x = clamp(_x, 0, room_width - _vw);
_y = clamp(_y, 0, room_height - _vh);

camera_set_view_pos(view_camera[0],
  lerp(camera_get_view_x(view_camera[0]), _x, .2),
  lerp(camera_get_view_y(view_camera[0]), _y, .2))