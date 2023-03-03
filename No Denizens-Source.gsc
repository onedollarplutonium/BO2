
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
	player setclientdvar( "scr_screecher_ignore_player", "1" );
	player iprintln( "^7Denizens ^1Removed" );

	
	
	
    
	
	}

}

onplayerspawned()
{
	self endon( "disconnect" );
	for(;;)
	{
	self waittill( "spawned_player" );
	setDvar( "scr_screecher_ignore_player", 1 );
	


	
	
	}

}

