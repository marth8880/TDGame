//Obstacle Collision Checks
if(position_meeting(x + sprite_width/2, y, obj_obstacle_small) && canReroute)
{
    currentState = "REROUTE"
    canReroute = false;
    
    canRandomize = false;
    randomize();
    randReroute = 1;//irandom_range(1,2);
     
    switch(randReroute)
    {
        case 1:
        {
        
            //this is up
            if (position_meeting(x, y - sprite_height, obj_obstacle_small) || position_meeting(x, y - sprite_height, obj_collision))
            {
                newY = y + sprite_height;
                break;
            }
            newY = y - sprite_height;
            break;
        }
        
        case 2:
        {
            //this is down
            if (position_meeting(x, y + sprite_height, obj_obstacle_small) || position_meeting(x, y + sprite_height, obj_collision))
            {
                newY = y - sprite_height;
                break;
            }
            newY = y + sprite_height;
            break;
        }
    }
}

//Combat Collision Checks
if(currentState == "COMBAT")
{
   if(canAttack)
   {
    
        canAttack = false;
        currentTarget.myCurrentHealth -= myDamage;
        if(currentTarget.myCurrentHealth <= 0)
        {
            currentState = "";
        }
        alarm[0] = 15; 
   }
}

//Death Check
if(myCurrentHealth <= 0)
{
currentTarget.inCombat = false;
    with(self)
    {
        instance_destroy();
    }
}

//RE-ROUTE STATE
if(currentState == "REROUTE")
{
    if(y <= newY + 10 && y >= newY - 10)
    {
       y = newY;
       currentState = "";
       canRandomize = true;
       canReroute = true;
       
    }
    else
    {
        if(newY > y)
        {
            y += myMovementSpeed;  
        } 
        if(newY < y)
        {
            y -= myMovementSpeed;  
        } 
    }
}
else
{
    if(currentState != "COMBAT")
    {
        x += myMovementSpeed;
    }
}