execute if entity @a[scores={ArrowCount2=31..}] unless entity @s[tag=FairyBowUpgrade1] unless entity @s[tag=FairyBowUpgrade2] run scoreboard players set @a ArrowCount2 30
execute if entity @a[scores={ArrowCount2=41..}] unless entity @s[tag=FairyBowUpgrade2] run scoreboard players set @a ArrowCount2 40
execute if entity @a[scores={ArrowCount2=51..}] if entity @s[tag=FairyBowUpgrade2] run scoreboard players set @a ArrowCount2 50
