/// @description 

repeat(100) {
	var _dir = irandom_range(0, 359);
	var _x = objPlayer.x + lengthdir_x(220, _dir);
	var _y = objPlayer.y + lengthdir_y(220, _dir);
	var _enemy = choose(objEnemy1, objEnemy2);

	instance_create_layer(_x, _y, "Instances", _enemy);
}