#Ganon's Tower
execute if entity @a[x=-602,y=42,z=276,dx=0,dz=0] run function ocarina_of_time:teleports/final_platform/escape

#Die
execute if entity @a[x=-602,y=42,z=278,dx=0,dz=0] run function ocarina_of_time:teleports/final_platform/die
execute if entity @a[x=-638,y=91,z=909,dx=0,dz=0] run tag @a remove InFinalPlatform
execute if entity @a[x=-638,y=91,z=909,dx=0,dz=0] run tag @a add EscapeGanonCastle
