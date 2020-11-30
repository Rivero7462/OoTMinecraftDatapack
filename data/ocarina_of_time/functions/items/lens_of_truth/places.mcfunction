execute if entity @s[tag=InWell] run function ocarina_of_time:moving_things/well/walls/kill_fake_walls
execute if entity @s[tag=InShadowTemple] run function ocarina_of_time:moving_things/shadow_temple/walls/kill_fake_walls
execute if entity @s[tag=InTreasureShop] run function ocarina_of_time:moving_things/castle_town/minigames/lens/reveal_chest
execute if entity @s[tag=InTrainingGround] run function ocarina_of_time:moving_things/training_ground/walls/kill_fake_walls
execute if entity @s[tag=InHauntedWasteland] run function ocarina_of_time:moving_things/haunted_wasteland/phantom_guide/reveal
execute if entity @s[tag=InSpiritTemple] run function ocarina_of_time:moving_things/spirit_temple/lens/on
execute if entity @s[tag=InZoraFountain] run function ocarina_of_time:moving_things/zora_fountain/lens/on
execute if entity @s[tag=InUndergroundGanonCastle] run function ocarina_of_time:moving_things/ganon_castle_underground/walls/kill_fake_walls
replaceitem entity @a weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Lens of Truth\"}"},Unbreakable:1b,Damage:24,HideFlags:63,LensOfTruth:1b,LensOfTruth2:1b}
replaceitem entity @s armor.head minecraft:carved_pumpkin{HoldLens:1b,display:{Name:"{\"text\":\"Lens of Truth\"}"}} 1
tag @s add HoldLens
