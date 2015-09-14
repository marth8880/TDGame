if(other.canAttack)
{
    currentState = "COMBAT";
    currentTarget = other.id;
    currentTarget.inCombat = true;
}
