init(){
    if(getdvar( "mapname" ) == "zm_prison"){
        waittillframeend;
        level.original_afterlife_give_loadout = level.afterlife_give_loadout;
	    level.afterlife_give_loadout = ::afterlifegive;
    }
}

afterlifegive(){
    self [[level.original_afterlife_give_loadout]]();
    self setviewmodel( "c_zom_ghost_viewhands" );
}