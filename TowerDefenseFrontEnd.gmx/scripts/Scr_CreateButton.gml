//CreateButton function script

var buttonText, xx, yy;

xx = argument0;
yy = argument1;
buttonText = argument2;
roomID = argument3;

button = instance_create(xx, yy, obj_button);
button.text = buttonText;
button.gotoRoom = roomID;
