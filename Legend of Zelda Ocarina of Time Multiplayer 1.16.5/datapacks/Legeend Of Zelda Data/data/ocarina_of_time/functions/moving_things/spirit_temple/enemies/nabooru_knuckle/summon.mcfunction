summon minecraft:zombie -27 116 810.0 {Tags:["NabooruKnuckle","Invisible"],Rotation:[0f],Health:85,Attributes:[{Name:generic.max_health,Base:85}],NoGravity:1b,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/nothing",NoAI:1b}
summon minecraft:armor_stand -27 116 810.0 {Tags:["NabooruKnuckle"],NoGravity:1b,ShowArms:1b,Marker:1b,Invisible:1b,Rotation:[0f],Pose:{RightArm:[-90f,-40f,90f]},ArmorItems:[{},{},{},{id:"cobblestone",Count:1,tag:{CustomModelData:99}}],HandItems:[{id:"cobblestone",Count:1b,tag:{CustomModelData:100}},{id:"cobblestone",Count:1b,tag:{CustomModelData:101}}],DisabledSlots:4144959}
tag @e[type=armor_stand,tag=NabooruKnuckle] add Attack
function ocarina_of_time:music/mini_boss
fill -25 112 799 -25 112 799 minecraft:gold_block
