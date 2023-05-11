partSys = part_system_create();

//Exhaust
partTypeExhaust = part_type_create();
part_type_sprite(partTypeExhaust, spr_exhaust, false, false, false);
part_type_size(partTypeExhaust,.4,.4,0.05, 0);
part_type_color3(partTypeExhaust,c_white,c_fuchsia,c_purple);
part_type_alpha3(partTypeExhaust, 1,1,0);
part_type_life(partTypeExhaust,20,20);

partTypeEnemyExhaust = part_type_create();
part_type_sprite(partTypeEnemyExhaust, spr_exhaust, false, false, false);
part_type_size(partTypeEnemyExhaust,.4,.4,0.05, 0);
part_type_color3(partTypeEnemyExhaust,c_yellow,c_orange,c_red);
part_type_alpha3(partTypeEnemyExhaust, 1,1,0);
part_type_life(partTypeEnemyExhaust,20,20);

//Destrocos
partTypeAsteroidesDebris = part_type_create();
part_type_sprite(partTypeAsteroidesDebris, spr_asteroid_debris_strip4, false,false,true);
part_type_direction(partTypeAsteroidesDebris,0,359,0, false);
part_type_orientation(partTypeAsteroidesDebris,0,359,1,false,false);
part_type_alpha3(partTypeAsteroidesDebris, .8,.8,0);
part_type_life(partTypeAsteroidesDebris,60,80);
part_type_speed(partTypeAsteroidesDebris,2,2.4,-0.02,0);

partTypeNaveDebris = part_type_create();
part_type_sprite(partTypeNaveDebris, spr_ship_debris_strip5, false,false,true);
part_type_size(partTypeEnemyExhaust,.5,1,0,0);
part_type_direction(partTypeNaveDebris,0,359,0, false);
part_type_orientation(partTypeNaveDebris,0,359,1,false,false);
part_type_alpha3(partTypeNaveDebris, .6,.6,0);
part_type_life(partTypeNaveDebris,60,80);
part_type_speed(partTypeNaveDebris,3,4,-0.05,0);