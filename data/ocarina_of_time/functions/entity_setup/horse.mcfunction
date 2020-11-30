execute if entity @s[tag=Resist] run effect give @s minecraft:resistance 1 4 true

#Epona
execute if entity @a[tag=Adult] if entity @s[tag=Epona,tag=HideEpona,tag=!FakeEpona] store result entity @s Pos[1] double 1 run scoreboard players get @s Ypos
execute if entity @a[tag=Adult] if entity @s[tag=Epona,tag=HideEpona,tag=!FakeEpona] run tag @s remove HideEpona
execute if entity @a[tag=Adult] if entity @s[tag=Epona,tag=!HideEpona,tag=!FakeEpona] store result score @s Ypos run data get entity @s Pos[1]
execute unless entity @a[tag=Adult] if entity @s[tag=Epona,tag=!FakeEpona] run tag @s add HideEpona
execute unless entity @a[tag=Adult] if entity @s[tag=Epona,tag=!FakeEpona] run tp @s ~ 4 ~
