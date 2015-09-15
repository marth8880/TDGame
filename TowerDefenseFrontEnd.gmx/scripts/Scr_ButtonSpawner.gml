//Scr_ButtonSpawner function script

var xx, yy, buttonText, canInteract, buttonFontType, buttonFontColor, buttonFontHAlign, buttonFontVAlign, buttonSprite, backdrop;

//args
xx = argument0;
yy = argument1;
buttonText = argument2;
canInteract = argument3;
buttonFontType = argument4;
buttonFontColor = argument5;
buttonFontHAlign = argument6;
buttonFontVAlign = argument7;
buttonSprite = argument8;
backdrop = argument9;

//do the shit :d
button = instance_create(xx, yy, obj_button);
button.myText = buttonText;
button.interactable = canInteract;
button.myFontType = buttonFontType;
button.myFontColor = buttonFontColor;
button.myFontHAlign = buttonFontHAlign;
button.myFontVAlign = buttonFontVAlign;
button.myButtonSprite = buttonSprite;
button.hasBackdrop = backdrop;
