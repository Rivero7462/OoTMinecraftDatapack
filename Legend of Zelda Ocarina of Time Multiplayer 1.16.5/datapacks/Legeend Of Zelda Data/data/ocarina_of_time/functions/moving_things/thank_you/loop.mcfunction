execute as @e[type=area_effect_cloud,tag=Songs] run function ocarina_of_time:moving_things/thank_you/songs

#Models
function ocarina_of_time:moving_things/thank_you/models

#Wall of Donators
fill 890 5 -520 890 5 -520 minecraft:redstone_wire
fill 890 5 -522 890 5 -522 minecraft:air

effect give @a regeneration 1 50 true
