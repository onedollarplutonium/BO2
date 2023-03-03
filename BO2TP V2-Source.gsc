
init()

{
	level thread onplayerconnect();

}

onplayerconnect()
{
	for(;;)
	{
	level waittill( "connected", player );
	player thread onplayerspawned();
	player setclientdvar( "r_lodBiasRigid", "-1000" );
	player setclientdvar( "r_lodBiasSkinned", "-1000" );
	player setclientdvar( "r_dof_enable", "0" );
    player setclientdvar( "r_lodScaleSkinned", "1" );
	player setclientdvar( "r_lodScaleRigid", "1" );
	player setclientdvar( "r_forcelod", "0" );
	player setclientdvar( "cg_thirdPerson", "1" );
	player setclientdvar( "cg_fov_default_thirdperson", "105" );
	player setclientdvar( "aim_automelee_enabled", "0" );
    player iPrintlnBold( "^7Third Person ^2Loaded" );
	
    
	
	}

}

onplayerspawned()
{
	self endon( "disconnect" );
	for(;;)
	{
	self waittill( "spawned_player" );
	
	
	
	
	}

}

