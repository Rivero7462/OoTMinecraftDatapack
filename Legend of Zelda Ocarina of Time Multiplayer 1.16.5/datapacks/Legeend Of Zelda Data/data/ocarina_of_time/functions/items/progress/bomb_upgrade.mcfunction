execute if entity @a[scores={BombCount=21..}] unless entity @s[tag=BombUpgrade1] unless entity @s[tag=BombUpgrade2] run clear @a minecraft:tnt 1
execute if entity @a[scores={BombCount=31..}] unless entity @s[tag=BombUpgrade2] run clear @a minecraft:tnt 1
execute if entity @a[scores={BombCount=41..}] if entity @s[tag=BombUpgrade2] run clear @a minecraft:tnt 1
