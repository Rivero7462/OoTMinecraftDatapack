execute if entity @a[scores={DekuSeeds2=31..}] unless entity @s[tag=SlingshotUpgrade1] unless entity @s[tag=SlingshotUpgrade2] run scoreboard players set @a DekuSeeds2 30
execute if entity @a[scores={DekuSeeds2=41..}] unless entity @s[tag=SlingshotUpgrade2] run scoreboard players set @a DekuSeeds2 40
execute if entity @a[scores={DekuSeeds2=51..}] if entity @s[tag=SlingshotUpgrade2] run scoreboard players set @a DekuSeeds2 50
