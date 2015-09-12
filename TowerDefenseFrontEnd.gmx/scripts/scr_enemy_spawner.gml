//Variables
var enemyType;

//Arguments
enemyType = argument0;

//Row Variables
row1 = 160;
row2 = 224;
row3 = 288;
row4 = 352;
row5 = 416;
row6 = 480;
row7 = 544;
row8 = 608;
row9 = 672;

/**************Randomely choose a row to spawn on (NEEDS DIFFICULTY CHECKS LATER)***************/
//Randomely picks a lane to spawn in
randomize();
randRow = irandom_range(1,9);
switch(randRow)
{
    case 1:
        spawnAt = row1;
        break;
    case 2:
        spawnAt = row2;
        break;
    case 3:
        spawnAt = row3;
        break;
    case 4:
        spawnAt = row4;
        break;
    case 5:
        spawnAt = row5;
        break;
    case 6:
        spawnAt = row6;
        break;
    case 7:
        spawnAt = row7;
        break;
    case 8:
        spawnAt = row8;
        break;
    case 9:
        spawnAt = row9;
        break;
}
//Spawns an enemy (NEEDS DIFICULTY CHECKS LATER)
newestEnemy = instance_create(50, spawnAt - 15, obj_enemy_basic)


/**************Assign the newest generated enemy it's attributes***************/
//Randmely picks an enemy type

switch(enemyType)
{
    case 1:
        newestEnemy.sprite_index = spr_enemy_1
        newestEnemy.myMovementSpeed = 1;
        break;
    case 2:
        newestEnemy.sprite_index = spr_enemy_2
        newestEnemy.myMovementSpeed = 2;
        break;
    case 3:
        newestEnemy.sprite_index = spr_enemy_3
        newestEnemy.myMovementSpeed = 3;
        break;
}


