execute if entity @s[tag=StickUpgrade1] run tag @s add StickUpgrade2
execute if entity @s[tag=StickUpgrade2] run advancement grant @a only minecraft:_upgrades/stick_upgrade_2
execute if entity @s[tag=StickUpgrade2] run tellraw @a ["",{"text":"You can now pick up even more "},{"text":"Deku Sticks","color":"red"},{"text":"! You can carry up to "},{"text":"30 ","color":"yellow"},{"text":"of them!"}]
execute if entity @s[tag=StickUpgrade2] run give @a stick{display:{Name:"{\"text\":\"Deku Stick\"}"},DekuStick:1b,Item:1b} 30
execute unless entity @s[tag=StickUpgrade1] run tag @s add StickUpgrade1
execute if entity @s[tag=StickUpgrade1] unless entity @s[tag=StickUpgrade2] run advancement grant @a only minecraft:_upgrades/stick_upgrade_1
execute if entity @s[tag=StickUpgrade1] unless entity @s[tag=StickUpgrade2] run tellraw @a ["",{"text":"Now you can pick up more "},{"text":"Deku Sticks","color":"red"},{"text":"! You can carry up to "},{"text":"20 ","color":"yellow"},{"text":"of them!"}]
execute if entity @s[tag=StickUpgrade1] unless entity @s[tag=StickUpgrade2] run give @a stick{display:{Name:"{\"text\":\"Deku Stick\"}"},DekuStick:1b,Item:1b} 20
fill -629 62 -609 -629 62 -609 minecraft:gold_block
clear @a minecraft:stick{DekuStickUpgrade:1b}
