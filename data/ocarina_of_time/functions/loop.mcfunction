execute unless entity @a[tag=NoNightVision] run effect give @a minecraft:night_vision 1000000 0 true
execute if entity @a[tag=NoNightVision] run effect clear @a minecraft:night_vision

#Teleports
function ocarina_of_time:teleports/loop

#Jump Cutscenes
function ocarina_of_time:jump_cutscenes/loop

#Entities
function ocarina_of_time:entity_setup/loop

#Moving Things
function ocarina_of_time:moving_things/loop

#Items
function ocarina_of_time:items/loop

#Always Active
stopsound @a music minecraft:music.game
stopsound @a music minecraft:music.creative
stopsound @a music minecraft:music.menu
stopsound @a ambient minecraft:ambient.cave

#testing -Gopher
