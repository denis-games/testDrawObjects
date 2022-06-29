// Resize the grid
var inst_num = instance_number(objAllParent);
var dgrid = ds_depthgrid;

if(ds_grid_height(dgrid) != inst_num){
	ds_grid_resize(dgrid, 2, inst_num);
	
	// add instances to the grid only if new ones added
	var yy = 0; with(objAllParent) {
		dgrid[# 0, yy] = id;
		dgrid[# 1, yy] = y;
		yy += 1;
	}
}

// loop through the grid and draw instances

var _x1 = objPlayer.x - 170;
var _y1 = objPlayer.y - 120;
var _x2 = objPlayer.x + 170;
var _y2 = objPlayer.y + 120;

draw_rectangle(_x1, _y1, _x2, _y2, true);

var inst; var yy = 0; repeat(inst_num) {
	// pull out the id
	inst = dgrid[# 0, yy];

	// draw only if near the player
    if (point_in_rectangle(inst.x, inst.y, _x1, _y1, _x2, _y2)) {
		// draw yourself
		with(inst) {
			event_perform(ev_draw, 0);
		}
	}

	yy += 1;
}