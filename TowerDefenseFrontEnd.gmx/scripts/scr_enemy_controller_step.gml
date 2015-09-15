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
        //Enemy Attack
        canAttack = false;
        currentTarget.myCurrentHealth -= myDamage;
        
        //Player Attack
        myCurrentHealth -= currentTarget.myDamage;
        
        //Player Attack
        if(currentTarget.myCurrentHealth <= 0)
        {
            if(newY != 0)
            {
                currentState = "REROUTE";
            }
            else
            {
                currentState = "";
            }
        }
        alarm[0] = 15;
   }
}

//Death Check
if(myCurrentHealth <= 0)
{
    currentTarget.inCombat = false;
    
    coins += 25;
    deathCount += 1;
    
    if (deathCount = 7)
    {
        room_goto(rm_levelselect);
    }
    with(self)
    {
        instance_destroy();
    }
}

if (x > room_width)
{
    hitCount += 1;
}

if (hitCount >= 1)
{
    room_goto(rm_levelselect);
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
