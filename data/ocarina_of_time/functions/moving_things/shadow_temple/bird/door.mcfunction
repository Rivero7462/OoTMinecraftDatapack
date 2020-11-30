execute if entity @s[tag=SkullTorch1,tag=FaceTorch1,tag=!FakeTorch] run tag @s add Finish
execute if entity @s[tag=SkullTorch2,tag=FaceTorch2,tag=!FakeTorch] run tag @s add Finish
execute if entity @s[tag=SkullTorch3,tag=FaceTorch3,tag=!FakeTorch] run tag @s add Finish
execute if entity @s[tag=SkullTorch4,tag=FaceTorch4,tag=!FakeTorch] run tag @s add Finish
execute if entity @s[tag=SkullTorch5,tag=FaceTorch5,tag=!FakeTorch] run tag @s add Finish

scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1}] run fill 1685 90 945 1696 90 935 minecraft:air replace minecraft:stone_bricks
execute if entity @s[scores={lifetime=50..}] run fill 1685 90 945 1696 90 935 minecraft:stone_bricks replace minecraft:air
execute if entity @s[scores={lifetime=50..}] run tag @s remove Start
execute if entity @s[scores={lifetime=50..}] run scoreboard players set @s lifetime 0

execute if entity @s[tag=Finish] at @a facing 1708 91 940 run tp @a ~ ~ ~ ~ ~
execute if entity @s[tag=Finish] run fill 1708 92 940 1708 91 940 minecraft:air
execute if entity @s[tag=Finish] run fill 1685 90 945 1696 90 935 minecraft:stone_bricks replace minecraft:air
