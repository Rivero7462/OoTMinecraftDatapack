execute unless block 1737 49 1316 minecraft:gold_block run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"This ","color":"aqua"},{"text":"switch"},{"text":"... it doesn't look like you can press it down with your weight alone, ","color":"aqua"},{"selector":"@p","color":"aqua"},{"text":"...","color":"aqua"}]
execute unless block 1737 49 1316 minecraft:gold_block run fill 1737 49 1316 1737 49 1316 minecraft:gold_block

execute if entity @e[type=armor_stand,tag=Ruto1,x=1737,y=53,z=1316,dx=0,dz=0] run fill 1737 52 1316 1737 52 1316 minecraft:air
execute if entity @e[type=armor_stand,tag=Ruto1,x=1737,y=53,z=1316,dx=0,dz=0] run fill 1739 52 1321 1735 56 1321 minecraft:air replace minecraft:vine
