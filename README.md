# testDrawObjects
A project for testing drawing of thousands of objects

The project is using 

1) A persistent *objGame* for:
* spawing bunch of enemry by pressing Control (100 each time)
* change direction of all enemies every 20 frames
* drawing the number of enemies at the top left of the GUI

2) A persistent *objDepthSorter* for:
* use a ds_grid to store all enemies & player objects
* for drawing them one by one only if near the player

I drew a sample rectangle around the player to show the area where the sprite of the enemies should be drawn.
