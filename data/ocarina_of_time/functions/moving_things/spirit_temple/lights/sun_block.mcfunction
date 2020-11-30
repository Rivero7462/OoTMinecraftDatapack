summon minecraft:armor_stand ~ ~ ~ {Tags:["SunBlock2","SunBlock"],Marker:1b,Rotation:[180f],Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:92}}],DisabledSlots:4144959}
fill ~ ~ ~ ~ ~ ~ minecraft:barrier
execute at @a run playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1 1
fill -78 110 893 -78 110 893 minecraft:stone_pressure_plate
fill -78 107 893 -78 107 893 minecraft:gold_block
