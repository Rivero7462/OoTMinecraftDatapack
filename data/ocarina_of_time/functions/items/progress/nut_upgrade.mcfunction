execute if entity @a[scores={DekuNuts=21..}] unless entity @s[tag=NutUpgrade1] unless entity @s[tag=NutUpgrade2] run scoreboard players set @a DekuNuts 20
execute if entity @a[scores={DekuNuts=31..}] unless entity @s[tag=NutUpgrade2] run scoreboard players set @a DekuNuts 30
execute if entity @a[scores={DekuNuts=41..}] if entity @s[tag=NutUpgrade2] run scoreboard players set @a DekuNuts 40
