execute unless entity @a[scores={click=0..}] run fill 926 5 -636 926 5 -636 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 925 5 -635 925 5 -635 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 926 5 -634 926 5 -634 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a 926 4 -635
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"AlaskanGopher: ","color":"gold"},{"text":"Hey! You look like a Adventurer, just like me! This guy who looked like the Hero of Time...except for his brown hair gave me a list to read to you!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"AlaskanGopher: ","color":"gold"},{"text":"There are "},{"text":"16 secrets ","color":"red"},{"text":"scattered across Hyrule. You will receive something for every 4 you redeem. There is a alcove hidden somewhere in the "},{"text":"lost woods ","color":"green"},{"text":"where you can redeem these but only if you have a secret "},{"text":"on you","color":"red"},{"text":"."}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"AlaskanGopher: ","color":"gold"},{"text":"Be warned. Some of the treasures are so great they could tear the fabric of this very world! Here is a list of locations."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"AlaskanGopher:","color":"gold"},{"text":"\n"},{"text":"Kokiri Forest","color":"green"},{"text":"\n"},{"text":"Two in Castle Town","color":"aqua"},{"text":"\nThe field outside of "},{"text":"Hyrule Castle","color":"light_purple"},{"text":"\n"},{"text":"Hyrule Castle","color":"light_purple"},{"text":"\n"},{"text":"Kakariko Village","color":"red"},{"text":"\n"},{"text":"Goron City","color":"gold"},{"text":"\n"},{"text":"Zora's Domain","color":"blue"},{"text":"\n"},{"text":"Fishing Pond","color":"aqua"},{"text":"\n"},{"text":"Destroyed Castle Town","color":"red"},{"text":"\n"},{"text":"Zora's Domain ","color":"blue"},{"text":"(Adult)\n"},{"text":"Zora's Fountain ","color":"aqua"},{"text":"(Adult)\n"},{"text":"Inside Gerudo Fortress","color":"yellow"},{"text":"\n"},{"text":"Haunted Wasteland","color":"gold"},{"text":"\n"},{"text":"Desert Colossus","color":"yellow"},{"text":"\n"},{"text":"Outside Ganon's Castle","color":"red"},{"text":". Good Luck!"}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8

execute if entity @a[scores={click=8}] run tag @a remove NoOcarina
execute if entity @a[scores={click=8}] run scoreboard players set @s text 1
execute if entity @a[scores={click=8}] run fill 925 5 -634 926 5 -636 minecraft:air
execute if entity @a[scores={click=8}] run fill 929 4 -636 929 4 -636 minecraft:gold_block
execute if entity @a[scores={click=8}] run tag @a remove SecretStart
execute if entity @a[scores={click=8}] run scoreboard objectives remove click
