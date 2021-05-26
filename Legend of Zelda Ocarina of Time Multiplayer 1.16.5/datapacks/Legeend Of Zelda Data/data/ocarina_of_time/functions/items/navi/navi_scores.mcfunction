execute if entity @a[scores={Navi2=10..}] run scoreboard players reset @a Navi
execute if entity @a[scores={Navi2=10..}] run scoreboard players reset @a Navi3
execute if entity @a[scores={Navi2=10..}] run scoreboard players reset @a Navi4
execute if entity @a[scores={Navi2=10..}] run scoreboard players reset @a Navi5
execute if entity @a[scores={Navi2=10..}] run scoreboard players reset @a Navi6
execute if entity @a[scores={Navi2=10..}] run kill @e[type=armor_stand,tag=HintNavi]
execute if entity @a[scores={Navi2=10..}] run scoreboard players reset @a Navi2

execute if entity @a[scores={Navi3=10..}] run scoreboard players reset @a Navi
execute if entity @a[scores={Navi3=10..}] run scoreboard players reset @a Navi2
execute if entity @a[scores={Navi3=10..}] run scoreboard players reset @a Navi4
execute if entity @a[scores={Navi3=10..}] run scoreboard players reset @a Navi5
execute if entity @a[scores={Navi3=10..}] run scoreboard players reset @a Navi6
execute if entity @a[scores={Navi3=10..}] run kill @e[type=armor_stand,tag=HintNavi]
execute if entity @a[scores={Navi3=10..}] run scoreboard players reset @a Navi3

execute if entity @a[scores={Navi4=10..}] run scoreboard players reset @a Navi
execute if entity @a[scores={Navi4=10..}] run scoreboard players reset @a Navi2
execute if entity @a[scores={Navi4=10..}] run scoreboard players reset @a Navi3
execute if entity @a[scores={Navi4=10..}] run scoreboard players reset @a Navi5
execute if entity @a[scores={Navi4=10..}] run scoreboard players reset @a Navi6
execute if entity @a[scores={Navi4=10..}] run kill @e[type=armor_stand,tag=HintNavi]
execute if entity @a[scores={Navi4=10..}] run scoreboard players reset @a Navi4

execute if entity @a[scores={Navi5=10..}] run scoreboard players reset @a Navi
execute if entity @a[scores={Navi5=10..}] run scoreboard players reset @a Navi2
execute if entity @a[scores={Navi5=10..}] run scoreboard players reset @a Navi3
execute if entity @a[scores={Navi5=10..}] run scoreboard players reset @a Navi4
execute if entity @a[scores={Navi5=10..}] run scoreboard players reset @a Navi6
execute if entity @a[scores={Navi5=10..}] run kill @e[type=armor_stand,tag=HintNavi]
execute if entity @a[scores={Navi5=10..}] run scoreboard players reset @a Navi5

execute if entity @a[scores={Navi6=10..}] run scoreboard players reset @a Navi
execute if entity @a[scores={Navi6=10..}] run scoreboard players reset @a Navi2
execute if entity @a[scores={Navi6=10..}] run scoreboard players reset @a Navi3
execute if entity @a[scores={Navi6=10..}] run scoreboard players reset @a Navi4
execute if entity @a[scores={Navi6=10..}] run scoreboard players reset @a Navi5
execute if entity @a[scores={Navi6=10..}] run kill @e[type=armor_stand,tag=HintNavi]
execute if entity @a[scores={Navi6=10..}] run scoreboard players reset @a Navi6

execute if entity @s[scores={Navi=1..}] run scoreboard players reset @s Navi2
execute if entity @s[scores={Navi=1..}] run scoreboard players reset @s Navi3
execute if entity @s[scores={Navi=1..}] run scoreboard players reset @s Navi4
execute if entity @s[scores={Navi=1..}] run scoreboard players reset @s Navi5
execute if entity @s[scores={Navi=1..}] run scoreboard players reset @s Navi6
execute if entity @s[scores={Navi=1..}] unless entity @a[tag=NoTeleport] unless entity @e[type=armor_stand,tag=HintNavi] run summon minecraft:armor_stand ~1 ~2 ~ {Tags:["HintNavi"],Small:1,NoGravity:1,Invisible:1,ArmorItems:[{},{},{},{id:"player_head",Count:1,tag:{display:{Name:"{\"text\":\"Navi\"}"},SkullOwner:{Name:"Navi",Id:[I;187647191,704335702,-1723810939,-35746885],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGEyNmUwN2UxZmYyZWRkNzJlNWUzMGJlYmRlZjExYjZhZTE0ODdiOWRhZGQzNzlhM2I1NjEwZWI3ZmU5ZWE4NSJ9fX0="}]}}}}]}
execute if entity @s[scores={Navi=3..}] rotated ~ 0 run tp @e[type=armor_stand,tag=HintNavi] ^-1 ^1.8 ^.5 ~ 0
execute if entity @s[scores={Navi=3..}] run scoreboard players set @s Navi 2
