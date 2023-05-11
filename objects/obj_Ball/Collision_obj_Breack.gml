audio_play_sound(snd_Explosion,1,false); 

move_bounce_all(true);

global.player_score += 15;
if(speed < 12) speed += 0.2;

instance_destroy(other);