execute unless entity @a[scores={click=0..}] run tp @a 2036 156 1351
execute unless entity @a[scores={click=0..}] run scoreboard players set @e[type=giant,tag=Biggoron] text 0
execute unless entity @a[scores={click=0..}] run tag @e[type=giant,tag=Biggoron] add stoptext
execute unless entity @a[scores={click=0..}] if entity @a[nbt={Inventory:[{tag:{BrokenKnife:1b}}]}] run tag @s add KnifeText
execute unless entity @a[scores={click=0..}] if entity @a[nbt={Inventory:[{tag:{GiantKnife:1b}}]}] run tag @s add KnifeText
execute unless entity @a[scores={click=0..}] run clear @a minecraft:shears{BrokenKnife:1b}
execute unless entity @a[scores={click=0..}] run clear @a minecraft:shears{ClaimCheck:1b}
execute unless entity @a[scores={click=0..}] run tag @a remove GetSword
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run fill 2035 157 1351 2035 157 1351 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 2036 157 1350 2036 157 1350 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 2037 157 1351 2037 157 1351 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 2036 157 1352 2036 157 1352 minecraft:barrier
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1
execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Biggoron: ","color":"gold"},{"text":"Yourrrr sworrrrd is my finest worrrrk!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] if entity @s[tag=KnifeText] run tellraw @a ["",{"text":"You traded the Giant's Kife for ","color":"white"},{"text":"Biggoron's Sword","color":"red"},{"text":"! This blade was forged by a master smith and won't break!"}]
execute if entity @a[scores={click=3}] unless entity @s[tag=KnifeText] run tellraw @a ["",{"text":"You handed in the Claim Check and got ","color":"white"},{"text":"Biggoron's Sword","color":"red"},{"text":"! This blade was forged by a master smith and won't break!"}]
execute if entity @a[scores={click=3}] run tag @e[type=area_effect_cloud,tag=Progress] add BiggoronSword
execute if entity @a[scores={click=3}] run give @a minecraft:golden_sword{display:{Name:"\"Biggoron's Sword\""},HideFlags:63,Unbreakable:1,CanDestroy:["minecraft:grass","minecraft:oak_sign","minecraft:fern","minecraft:flower_pot"],Enchantments:[{id:sharpness,lvl:19}],BiggoronSword:1b,MainHandItem:1b}
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4

execute if entity @a[scores={click=4}] run tag @a remove NoOcarina
execute if entity @a[scores={click=4}] run tag @a remove ClaimCheckStart
execute if entity @a[scores={click=4}] run fill 2037 157 1352 2035 157 1350 minecraft:air
execute if entity @a[scores={click=4}] run scoreboard players set @e[type=giant,tag=Biggoron] text 4

execute if entity @a[scores={click=4}] run tag @a remove ReceiveSword
execute if entity @a[scores={click=4}] run scoreboard objectives remove click
