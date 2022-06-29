/// @description 
with(objEnemyParent) {
	direction = point_direction(x, y, objPlayer.x, objPlayer.y);
	speed = walkSpeed;
}

alarm[0] = alarmTime;