execute unless entity @s[team=BladeTrap] run team join BladeTrap @s
execute if entity @a[distance=..1] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
scoreboard players add @s timer 1
