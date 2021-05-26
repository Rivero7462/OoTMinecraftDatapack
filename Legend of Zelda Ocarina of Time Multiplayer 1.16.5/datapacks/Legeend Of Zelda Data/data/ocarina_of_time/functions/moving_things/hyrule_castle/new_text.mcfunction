scoreboard players set @e[type=armor_stand,tag=Zelda] text 2
execute if entity @e[type=armor_stand,tag=Zelda,scores={text=2}] run tag @a remove ZeldaText
