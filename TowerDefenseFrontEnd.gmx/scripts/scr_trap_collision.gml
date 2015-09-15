currentTarget = other;

if(canTakeTrapDamage)
{
    if(currentTarget.trapChosen == "Pit")
    {
        with(currentTarget)
        {
            instance_destroy();
        }
        with(self)
        {
            instance_destroy();
        }
    }
    
    if(currentTarget.trapChosen == "Spikes")
    {
        alarm[1] = 10;
        canTakeTrapDamage = false;
        myCurrentHealth -= currentTarget.myDamage;
    }
}


