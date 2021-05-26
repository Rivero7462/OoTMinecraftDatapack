execute if entity @a[scores={StickCount=11..}] unless entity @s[tag=StickUpgrade1] unless entity @s[tag=StickUpgrade2] run clear @a minecraft:stick 1
execute if entity @a[scores={StickCount=21..}] unless entity @s[tag=StickUpgrade2] run clear @a minecraft:stick 1
execute if entity @a[scores={StickCount=31..}] if entity @s[tag=StickUpgrade2] run clear @a minecraft:stick 1
