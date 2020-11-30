#Castle Field
execute if entity @s[x=959,y=88,z=430,dx=0,dz=1] run function ocarina_of_time:teleports/hyrule_castle/castle_field/to
execute if entity @s[x=880,y=83,z=417,dx=0,dz=0] run function ocarina_of_time:teleports/hyrule_castle/castle_field/from

#Zelda
execute if entity @s[x=852,y=88,z=408,dx=1,dz=4] run function ocarina_of_time:teleports/hyrule_castle/zelda/inside

execute if entity @s[x=849,y=88,z=408,dx=1,dz=4] run function ocarina_of_time:teleports/hyrule_castle/zelda/outside

#Impa
execute if entity @s[tag=ImpaCastleTeleport] run function ocarina_of_time:teleports/hyrule_castle/impa

#Respawn
execute if entity @s[x=878,y=83,z=417,dx=0,dz=0] run function ocarina_of_time:teleports/hyrule_castle/respawn
