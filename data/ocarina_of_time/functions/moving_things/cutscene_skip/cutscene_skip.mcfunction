execute unless entity @a[tag=SkipCutscene] if entity @a[scores={click=0..}] unless score @p click = @p Cutscene run function ocarina_of_time:moving_things/cutscene_skip/setup
execute if entity @a[tag=SkipCutscene] run scoreboard players add @a click 1
execute unless entity @a[scores={click=0..}] run tag @a remove SkipCutscene
