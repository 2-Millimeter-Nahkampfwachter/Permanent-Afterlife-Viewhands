init(){
    if(getdvar( "mapname" ) == "zm_prison"){
        waittillframeend;
        level.afterlife_give_loadout2 = level.afterlife_give_loadout;
	    level.afterlife_give_loadout = ::afterlifegive;
    }
}

afterlifegive(){
    self [[level.afterlife_give_loadout2]]();
    self setviewmodel( "c_zom_ghost_viewhands" );
}
