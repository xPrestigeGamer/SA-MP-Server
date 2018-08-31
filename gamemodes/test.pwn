#include <a_samp>
#include <Dini>

//Farben
#define red		0xFF0000FF
#define blue	0x0000FFFF
#define orange	0xFF8700FF
#define green	0x00FF00FF
#define yellow	0xFFFF00FF
#define cyan	0x00FFFFFF
#define pink	0xFF38FFFF
#define black	0x000000FF
#define white	0xFFFFFFFF

//Dialoge 
#define DIALOG_CAR 1
#define DIALOG_REGISTER 2

main()
{
	print("\n----------------------------------");
	print(" Kevin is ne MTA fag");
	print("----------------------------------\n");
}

public OnGameModeInit()
{
	// Don't use these lines if it's a filterscript
	SetGameModeText("Kevin is ne MTA Fag");
	AddPlayerClass(0, 1958.3783, 1343.1572, 15.3746, 269.1425, 0, 0, 0, 0, 0, 0);
	return 1;
}

public OnGameModeExit()
{
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	SetPlayerPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraLookAt(playerid, 1958.3783, 1343.1572, 15.3746);
	return 1;
}

public OnPlayerConnect(playerid)
{
	SendClientMessage(playerid,cyan,"Hallo %s!"),playerName(playerid);
	
	new path[200];
	format(path,sizeof(path),"/user/%s.txt",playerName(playerid));
	
	if(!dini_Exists(path))
	{
		ShowPlayerDialog(playerid,DIALOG_REGISTER,DIALOG_STYLE_PASSWORD,"Account Registrierung:","Dieser Username ist noch nicht regestriert! \n Bitte gebe ein Passwort ein:","Server verlassen","Weiter");
	}
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	return 1;
}

public OnPlayerSpawn(playerid)
{
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	DestroyVehicle(GetPlayerVehicleID(killerid));
	return 1;
}

public OnPlayerText(playerid, text[])
{
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	if (strcmp("/v", cmdtext, true, 10) == 0)
	{
		ShowPlayerDialog(playerid,DIALOG_CAR,DIALOG_STYLE_INPUT,"Car Spawner","Gebe bitte die ID des Fahrzeuges ein, welches du spawnen möchtst:","Abbrechen","Weiter");
		return 1;
	}
	return 0;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	return 1;
}

public OnRconCommand(cmd[])
{
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return 1;
}

public OnObjectMoved(objectid)
{
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
	return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	return 1;
}

public OnPlayerExitedMenu(playerid)
{
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerUpdate(playerid)
{
	return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	if(dialogid == DIALOG_CAR)
	{
		if(response ==0)
		{
			SendClientMessage(playerid,red,"Du hast den Vorgang abgebrochen!");
		}
		if(response == 1)
		{
			if(inputtext[0] < 400)
			{
				SendClientMessage(playerid,red,"Nigge u stupid?");
			}
			if(inputtext[0] >611)
			{
				SendClientMessage(playerid,red,"Nigge u stupid?");
			}
			else
			{
				new Float:x, Float:y, Float:z, Float:fa;
				GetPlayerPos(playerid,x,y,z);
				GetPlayerFacingAngle(playerid,fa);
				CreateVehicle(inputtext[0],x,y,z,fa,0,0,0);
			}
		}
	}
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
}
stock playerName(pID)
{
	new name[MAX_PLAYER_NAME];
	GetPlayerName(pID,name,sizeof (name));
	return name;
}