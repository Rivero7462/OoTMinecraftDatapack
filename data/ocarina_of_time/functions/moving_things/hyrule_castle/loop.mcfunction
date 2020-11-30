function ocarina_of_time:moving_things/hyrule_castle/windows
execute if entity @a[tag=ZeldaText] run function ocarina_of_time:moving_things/hyrule_castle/new_text

#Music
execute if entity @a[scores={time=23600}] unless entity @a[tag=Indoors] run function ocarina_of_time:music/castle_courtyard
execute if entity @a[scores={time=23600}] unless entity @a[tag=Indoors] run time add 5
execute if entity @a[scores={time=13001..23000}] run stopsound @a music minecraft:castle_courtyard

#Guards
function ocarina_of_time:moving_things/hyrule_castle/soldiers/loop
