//Variables
var enemyType;

//Arguments
enemyType = argument0;

//Row Variables
row1X = obj_lane_1_spawn_point.x;
row1Y = obj_lane_1_spawn_point.y;

row2X = obj_lane_2_spawn_point.x;
row2Y = obj_lane_2_spawn_point.y;

row3X = obj_lane_3_spawn_point.x;
row3Y = obj_lane_3_spawn_point.y;

row4X = obj_lane_4_spawn_point.x;
row4Y = obj_lane_4_spawn_point.y;

/**************Randomly choose a row to spawn on (NEEDS DIFFICULTY CHECKS LATER)***************/
//Randomely picks a lane to spawn in
randomize();
randRow = irandom_range(1,4);
switch(randRow)
{
    case 1:
        spawnAtX = row1X;
        spawnAtY = row1Y;
        break;
    case 2:
        spawnAtX = row2X;
        spawnAtY = row2Y;
        break;
    case 3:
        spawnAtX = row3X;
        spawnAtY = row3Y;
        break;
    case 4:
        spawnAtX = row4X;
        spawnAtY = row4Y;
        break;
}
//Spawns an enemy (NEEDS DIFFICULTY CHECKS LATER)
newestEnemy = instance_create(spawnAtX, spawnAtY, obj_enemy_basic) 


/**************Assign the newest generated enemy its attributes***************/
//Randomly picks an enemy type

switch(enemyType)
{
    case 1:
        newestEnemy.sprite_index = Spr_Seed;
        newestEnemy.image_speed = 1/7;
        newestEnemy.myMovementSpeed = 2;
        newestEnemy.myDamage = 30;
        break;
    case 2:
        newestEnemy.sprite_index = Spr_flyguy;
        newestEnemy.image_speed = 1/7;
        newestEnemy.myMovementSpeed = 3;
        newestEnemy.myDamage = 20;
        break;
    case 3:
        newestEnemy.sprite_index = Spr_Mushroom;
        newestEnemy.image_speed = 1/7;
        newestEnemy.myMovementSpeed = 4;
        newestEnemy.myDamage = 15;
        break;
}