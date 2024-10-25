if(!instance_exists(objPlayer))
  instance_create_layer(0,0,"Instances", objPlayer);
objPlayer.x = targetEntrance.x;
objPlayer.y = targetEntrance.y;
instance_destroy();