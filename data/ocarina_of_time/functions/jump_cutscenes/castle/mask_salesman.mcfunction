execute unless entity @a[scores={click=0..}] run fill 894 53 1393 894 53 1393 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 895 53 1394 895 53 1394 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 894 53 1395 894 53 1395 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 893 53 1394 893 53 1394 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a 894 52.06250 1394
execute unless entity @a[scores={click=0..}] run tag @s add Prize
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run tag @s add CompleteMask
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Mask Salesman: ","color":"gold"},{"text":"Oh yeah!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Mask Salesman: ","color":"gold"},{"text":"Very well done! All the masks are sold out."}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Mask Salesman: ","color":"gold"},{"text":"I knew I could trust you!"}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Mask Salesman: ","color":"gold"},{"text":"As a reward...I will lend you this special mask."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Mask Salesman: ","color":"gold"},{"text":"This is the "},{"text":"Mask of Truth","color":"red"},{"text":". It is a mysterious mask passed down by the Sheikah."}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Mask Salesman: ","color":"gold"},{"text":"With this mask, you can see into other people's minds... It's useful, but scary!"}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Mask Salesman: ","color":"gold"},{"text":"Why is it scary?"}]
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @a[scores={click=15}] run tellraw @a ["",{"text":"Mask Salesman: ","color":"gold"},{"text":"You may find out as you grow older and wiser in the ways of the world..."}]
execute if entity @a[scores={click=15}] run scoreboard players set @a click 16
execute if entity @a[scores={click=17}] run tellraw @a ["",{"text":"Mask Salesman: ","color":"gold"},{"text":"Ho ho ho!"}]
execute if entity @a[scores={click=17}] run scoreboard players set @a click 18
execute if entity @a[scores={click=19}] run tellraw @a ["",{"text":"You borrowed the "},{"text":"Mask of Truth","color":"red"},{"text":". Wear it to show it off! Show it to many people!"}]
execute if entity @a[scores={click=19}] run scoreboard players set @a click 20
execute if entity @a[scores={click=21}] run tellraw @a ["",{"text":"Mask Salesman: ","color":"gold"},{"text":"From now on you can borrow any mask you want. Just have faith..."}]
execute if entity @a[scores={click=21}] run scoreboard players set @a click 22

execute if entity @a[scores={click=22}] run tag @a remove NoOcarina
execute if entity @a[scores={click=22}] run fill 893 53 1393 895 53 1395 minecraft:air
execute if entity @a[scores={click=22}] run tag @a remove TruthMask
execute if entity @a[scores={click=22}] run scoreboard objectives remove click
