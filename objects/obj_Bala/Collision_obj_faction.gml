if(other.id == creator) exit;//o id deve ser adcionado na nova versão

instance_destroy();

//Checar se o objeto faz parte do faction
if(other.faction == faction) exit;

//Dano do objeto
with(other) event_perform(ev_other, ev_user1);