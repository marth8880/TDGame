//ParentalGatePass function script
global.clicks += 1;

if (global.clicks >= 3)
{
    global.gatePassed = true;
    obj_overlord.alarm[1] = 75;
}