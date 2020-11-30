execute unless entity @a[scores={click=0..}] run fill 732 72 2758 732 72 2758 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 731 72 2759 731 72 2759 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 730 72 2758 730 72 2758 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 731 72 2757 731 72 2757 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a 731 71 2758 25 ~
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run function ocarina_of_time:music/owl_theme
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"What are you doing? You've come a long way to get up here..."}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"selector":"@p"},{"text":", this is a beautiful lake full of pure, clear water."}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"At the lake bottom there is a "},{"text":"Water Temple","color":"blue"},{"text":" used to worshop the water spirits. The "},{"text":"Zoras ","color":"blue"},{"text":"are guardians of the temple. Hoo hoo."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"The Zoras come from Zora's Domain in northwest Hyrule. An aquatic race, they are longtime allies of Hyrule's Royal Family."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"I heard that only the Royal Family of Hyrule can enter Zora's Domain... Hoo hoo!"}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"I'm on my way back to the "},{"text":"castle","color":"red"},{"text":". If you want to come with me, hold on to my talons!"}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12

execute if entity @a[scores={click=13..}] run tag @a remove NoOcarina
execute if entity @a[scores={click=13..}] unless entity @a[scores={time=13001..23000}] if entity @a[scores={time=0..13000}] run function ocarina_of_time:music/hyrule_field
execute if entity @a[scores={click=13..}] unless entity @a[scores={time=13001..23000}] if entity @a[scores={time=23001..24000}] run function ocarina_of_time:music/morning_hyrule_field
execute if entity @a[scores={click=13..}] if entity @a[scores={time=13001..23000}] run stopsound @a music
execute if entity @a[scores={click=13..}] run scoreboard players set @e[type=armor_stand,tag=OwlStand10] text 2
execute if entity @a[scores={click=13..}] run summon minecraft:armor_stand 733 72 2759 {Tags:["OwlFly"],Rotation:[-135f],ArmorItems:[{},{},{},{id:infested_cobblestone,Count:1b,tag:{CustomModelData:1}}],NoGravity:1b,Invisible:1b}
execute if entity @a[scores={click=13..}] run tp @e[type=armor_stand,tag=OwlStand10] 730 65 2761
execute if entity @a[scores={click=13..}] run fill 732 72 2759 730 72 2757 minecraft:air replace minecraft:barrier
execute if entity @a[scores={click=13..}] run tag @a remove LakeOwl
execute if entity @a[scores={click=13..}] run scoreboard objectives remove click
