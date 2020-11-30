data merge entity @e[type=armor_stand,tag=Fisherman1,limit=1] {ArmorItems:[{},{},{id:leather_chestplate,Count:1b,tag:{display:{color:493036}}},{id:player_head,Count:1b,tag:{SkullOwner:{Id:[I;-90955986,-219788438,-2006239003,-792279934],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTc3YWM4YTZjMzgxNWJkYjU4MGE1Y2E2ODliODMyNzg1NTYwZGEwOGQwMGU3MmE2NjU1ZjE4NDBjNGViZmZlMSJ9fX0="}]}}}}]}
tellraw @a ["",{"text":"Fisherman: ","color":"gold"},{"text":"What? What are you doing to me?!"}]
scoreboard players set @e[type=armor_stand,tag=Fisherman1] text 3
tag @a add StealCap
