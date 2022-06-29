/// @description 
var _left = keyboard_check(vk_left);
var _right = keyboard_check(vk_right);
var _up = keyboard_check(vk_up);
var _down = keyboard_check(vk_down);

var _horizontal = _right - _left;
var _vertical = _down - _up;

x += _horizontal * walkSpeed;
y += _vertical * walkSpeed;