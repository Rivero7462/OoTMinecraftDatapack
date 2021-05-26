tellraw @a ["",{"text":"Navi:","color":"gold"},{"text":" Hey... Shouldn't we be heading back toward Princess Ruto right now, ","color":"aqua"},{"selector":"@p","color":"aqua"},{"text":"?","color":"aqua"}]
execute if entity @a[y=52,dy=3] run tp @s 1721 51.3 1294 -90 ~
execute unless entity @a[y=52,dy=3] run tp @s 1697 21.3 1300 120 ~
scoreboard players set @s text 2
tag @s remove HoldRuto
