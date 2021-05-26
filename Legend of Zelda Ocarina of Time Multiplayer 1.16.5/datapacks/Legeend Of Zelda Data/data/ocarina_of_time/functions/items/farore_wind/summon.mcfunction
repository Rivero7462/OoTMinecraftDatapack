#Summon
execute unless entity @e[type=armor_stand,tag=FaroreWind] run playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 1 .5
execute unless entity @e[type=armor_stand,tag=FaroreWind] run experience add @a -3 levels
execute unless entity @e[type=armor_stand,tag=FaroreWind] run summon minecraft:armor_stand ~ ~ ~ {Tags:["FaroreWind"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:player_head,Count:1b,tag:{display:{Name:"\"Farore's Wind\""},SkullOwner:{Id:[I;-362940603,1153453888,-1962919418,-893312084],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWJiMGRmMTk2MzBhYWM2OGRhODZlOGQ1Njk1ODlkNDg1MDc5N2Y2MjI4OGMyMDhjODM3YjVkODA3M2ZmZmJiYiJ9fX0="}]}}}}]}

#Dismiss
execute store result score @e[type=armor_stand,tag=FaroreWind] Xpos run data get entity @p Pos[0] 1000
execute store result score @e[type=armor_stand,tag=FaroreWind] Ypos run data get entity @p Pos[1] 1000
execute store result score @e[type=armor_stand,tag=FaroreWind] Zpos run data get entity @p Pos[2] 1000
#Scores
execute store result score @s Xpos run data get entity @p Pos[0] 1000
execute store result score @s Ypos run data get entity @p Pos[1] 1000
execute store result score @s Zpos run data get entity @p Pos[2] 1000

#Places
execute if entity @a[tag=InDekuTree] run tag @e[type=armor_stand,tag=FaroreWind] add InDekuTree
execute if entity @a[tag=InDodongoCavern] run tag @e[type=armor_stand,tag=FaroreWind] add InDodongoCavern
execute if entity @a[tag=InJabuJabu] run tag @e[type=armor_stand,tag=FaroreWind] add InJabuJabu
execute if entity @a[tag=InForestTemple] run tag @e[type=armor_stand,tag=FaroreWind] add InForestTemple
execute if entity @a[tag=InFireTemple] run tag @e[type=armor_stand,tag=FaroreWind] add InFireTemple
execute if entity @a[tag=InWaterTemple] run tag @e[type=armor_stand,tag=FaroreWind] add InWaterTemple
execute if entity @a[tag=InShadowTemple] run tag @e[type=armor_stand,tag=FaroreWind] add InShadowTemple
execute if entity @a[tag=InSpiritTemple] run tag @e[type=armor_stand,tag=FaroreWind] add InSpiritTemple
