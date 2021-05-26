#Bombs
execute if entity @s[nbt={Item:{tag:{display:{Name:"\"Bomb\""}}}}] at @s unless entity @s[nbt={Item:{tag:{BombPickup:1b}}}] run function ocarina_of_time:items/bombs

#Fire Arrow
execute if entity @s[nbt={Item:{id:"minecraft:tipped_arrow",tag:{FireArrow:1b}}}] at @s run particle minecraft:firework ~ ~.2 ~ .1 .1 .1 0 1 force
#Ice Arrow
execute if entity @s[nbt={Item:{id:"minecraft:tipped_arrow",tag:{IceArrow:1b}}}] at @s run particle minecraft:soul_fire_flame ~ ~.2 ~ .1 .1 .1 0 1 force
#Light Arrow
execute if entity @s[nbt={Item:{id:"minecraft:tipped_arrow",tag:{LightArrow:1b}}}] at @s run particle minecraft:end_rod ~ ~.2 ~ .1 .1 .1 0 1 force

#Gold Skull Token
execute if entity @s[nbt={Item:{tag:{Token:1b}}}] at @s run particle minecraft:dust 1 1 0 .5 ~ ~.3 ~ .15 .2 .15 0 2 force

#Grass
execute if entity @s[nbt={Item:{tag:{FlexDrop:1b}}}] at @s run function ocarina_of_time:items/item_drops/grass/grass_flex_drop

#Item Return
execute if entity @s[tag=Return] run tp @s @p
execute if entity @s[nbt={Age:10s}] unless entity @s[nbt={Item:{tag:{Item:1b}}}] run data merge entity @s {Age:9s}

#Item drops
execute if entity @s[nbt={Item:{tag:{AmmoDrop:1b}}}] at @s run function ocarina_of_time:items/item_drops/general_drops/ammo_drop_1
execute if entity @s[nbt={Item:{tag:{AmmoDrop2:1b}}}] at @s run function ocarina_of_time:items/item_drops/general_drops/ammo_drop_2
execute if entity @s[nbt={Item:{tag:{AmmoDrop3:1b}}}] at @s run function ocarina_of_time:items/item_drops/general_drops/ammo_drop_3
execute if entity @s[nbt={Item:{tag:{JarDrop:1b}}}] at @s run function ocarina_of_time:items/item_drops/general_drops/magic_drop
execute if entity @s[nbt={Item:{tag:{BlueHeart:1b}}}] at @s run function ocarina_of_time:items/item_drops/general_drops/blue_heart_drop

execute if entity @s[nbt={Item:{tag:{Item:1b}}}] run scoreboard players add @s timer 1
execute if entity @s[nbt={Item:{tag:{Item:1b}}},scores={timer=200..}] at @s unless entity @e[type=armor_stand,tag=Boomerang,distance=..4] run kill @s

#Kill Tile Drops
kill @s[nbt={Item:{id:"minecraft:red_carpet"}}]
kill @s[nbt={Item:{id:"minecraft:pumpkin_seeds"}}]
kill @s[nbt={Item:{id:"minecraft:saddle"}}]
kill @s[nbt={Item:{id:"minecraft:iron_horse_armor"}}]
kill @s[nbt={Item:{id:"minecraft:wheat_seeds"}}]
kill @s[nbt={Item:{id:"minecraft:dirt"}}]
kill @s[nbt={Item:{id:"minecraft:torch"}}]
kill @s[nbt={Item:{id:"minecraft:barrier"}}]
kill @s[nbt={Item:{id:"minecraft:iron_door"}}]
kill @s[nbt={Item:{id:"minecraft:dark_oak_door"}}]
kill @s[nbt={Item:{id:"minecraft:oak_sign"}}]
kill @s[nbt={Item:{id:"minecraft:flower_pot"}}]
kill @s[nbt={Item:{id:"minecraft:chest"}}]
kill @s[nbt={Item:{id:"minecraft:dispenser"}}]
kill @s[nbt={Item:{id:"minecraft:ladder"}}]
kill @s[nbt={Item:{id:"minecraft:cobblestone"}}]
kill @s[nbt={Item:{id:"minecraft:dark_oak_sign"}}]
kill @s[nbt={Item:{id:"minecraft:smoker"}}]
kill @s[nbt={Item:{id:"minecraft:light_weighted_pressure_plate"}}]
kill @s[nbt={Item:{id:"minecraft:stone_button"}}]
kill @s[nbt={Item:{id:"minecraft:orange_tulip"}}]
kill @s[nbt={Item:{id:"minecraft:arrow",tag:{NormalArrowFake:1b}}}]
kill @s[nbt={Item:{id:"minecraft:tipped_arrow",tag:{FireArrowFake:1b}}}]
kill @s[nbt={Item:{id:"minecraft:tipped_arrow",tag:{IceArrowFake:1b}}}]
kill @s[nbt={Item:{id:"minecraft:tipped_arrow",tag:{LightArrowFake:1b}}}]
kill @s[nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{Compass:1b}}}]
kill @s[nbt={Item:{tag:{HoldLens:1b}}}]

#Secret Teleport
scoreboard players add @s[nbt={Item:{tag:{Legendary:1b}}}] timer 1
execute if entity @s[nbt={Item:{tag:{Legendary:1b}}},scores={timer=5..}] at @s run function ocarina_of_time:teleports/remove_other
execute if entity @s[nbt={Item:{tag:{Legendary:1b}}},scores={timer=5..}] at @s run function ocarina_of_time:teleports/remove_teleports
execute if entity @s[nbt={Item:{tag:{Legendary:1b}}},scores={timer=5..}] at @s run function ocarina_of_time:teleports/remove_entities
execute if entity @s[nbt={Item:{tag:{Legendary:1b}}},scores={timer=5..}] at @s run tp @a 980 4 -642 180 ~
execute if entity @s[nbt={Item:{tag:{Legendary:1b}}},scores={timer=5..}] at @s run kill @s
#Phase
execute if entity @s[nbt={Item:{tag:{Phase:1b}}}] run replaceitem entity @a weapon.mainhand minecraft:firework_rocket{Phase:1b} 64
execute if entity @s[nbt={Item:{tag:{Phase:1b}}}] as @a at @s run tp @s ^ ^ ^5
execute if entity @s[nbt={Item:{tag:{Phase:1b}}}] run kill @s

#Fairies
execute if entity @s[nbt={Item:{tag:{Fairy:1b}}}] run data merge entity @s {Age:0}
