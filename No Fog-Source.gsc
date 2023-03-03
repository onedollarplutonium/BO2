
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
	player setclientdvar( "r_fog", "0" );
	player setclientdvar( "r_dof_enable", "0" );
    player iPrintln( "^7Fog ^1Removed" );
	
    
	
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

