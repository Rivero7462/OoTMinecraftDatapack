#Hidden Wall Locations
execute if entity @s[tag=HoldLens] if entity @s[tag=InWell] run function ocarina_of_time:moving_things/well/walls/summon_fake_walls
execute if entity @s[tag=HoldLens] if entity @s[tag=InShadowTemple] run function ocarina_of_time:moving_things/shadow_temple/walls/summon_fake_walls
execute if entity @s[tag=HoldLens] if entity @s[tag=InTreasureShop] run function ocarina_of_time:moving_things/castle_town/minigames/lens/hide_chest
execute if entity @s[tag=HoldLens] if entity @s[tag=InTrainingGround] run function ocarina_of_time:moving_things/training_ground/walls/summon_fake_walls
execute if entity @s[tag=HoldLens] if entity @s[tag=InHauntedWasteland] run function ocarina_of_time:moving_things/haunted_wasteland/phantom_guide/hide
execute if entity @s[tag=HoldLens] if entity @s[tag=InSpiritTemple] run function ocarina_of_time:moving_things/spirit_temple/lens/off
execute if entity @s[tag=HoldLens] if entity @s[tag=InZoraFountain] run function ocarina_of_time:moving_things/zora_fountain/lens/off
execute if entity @s[tag=HoldLens] if entity @s[tag=InUndergroundGanonCastle] run function ocarina_of_time:moving_things/ganon_castle_underground/walls/summon_fake_walls

replaceitem entity @a weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Lens of Truth\"}"},Unbreakable:1b,Damage:23,HideFlags:63,LensOfTruth:1b,LensOfTruth1:1b}
tag @s remove HoldLens
clear @s minecraft:carved_pumpkin{HoldLens:1b}
kill @e[type=item,nbt={Item:{tag:{HoldLens:1b}}}]
scoreboard players set @a UseItem 0
