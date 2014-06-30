AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
 
include( 'shared.lua' )
include( 'player.lua' )
function GM:PlayerConnect( name, ip )
    print("player: " .. name .. ", has joined the game.")
end
function GM:PlayerSpawn( ply )
    self.BaseClass:PlayerSpawn( ply )   
 
    ply:SetGravity  ( 1 )  
    ply:SetMaxHealth( 100, true )  
 
    ply:SetWalkSpeed( 190 )  
    ply:SetRunSpeed ( 300 ) 
 
end
function GM:PlayerAuthed( ply, steamId, uniqueID )
    print("player: " .. ply:Nick() .. ", has joined the game.")
end

function GM:PlayerLoadout( ply )
	
end

function GM:PlayerInitialSpawn( ply )
	   print("player: " .. ply:Nick() .. ", has been authed.")
end
