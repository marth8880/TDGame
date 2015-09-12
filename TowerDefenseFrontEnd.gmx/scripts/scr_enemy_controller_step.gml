//Horizontal Obstacle Collision Checks
if(position_meeting(x + sprite_width/2 + myMovementSpeed, y, obj_obstacle_small))
{
    currentState = "REROUTE"
}

//Vertical Obstacle Collision Checks
/*if(currentState = "REROUTE")
{
    if(position_meeting(x, y + myMovementSpeed, obj_obstacle_small))
    {
        randRoute = 2;
    }
    
     if(position_meeting(x, y - myMovementSpeed, obj_obstacle_small))
    {
        randRoute = 1;
    }
}*/

//If no target is in front of the player, continue
if(!position_meeting(x + sprite_width/2 + myMovementSpeed, y, obj_obstacle_small))
{
    switch(currentState)
    {
        case "REROUTE":
        {
           
           alarm[0] = 3;
            
        }
        case "":
        {
            currentState = "";
            x += myMovementSpeed;
            randReroute = 0;
            canRandomize = true;
        }
    }
    
}


//RE-ROUTE STATE
if(currentState == "REROUTE")
{
    if(canRandomize)
    {
        canRandomize = false;
        randomize();
        randReroute = irandom_range(1,2);
    }
    
    switch(randReroute)
    {
        case 1:
        {
            y += myMovementSpeed;
        }
        
        case 2:
        {
            y -= myMovementSpeed;
        }
    }
}
