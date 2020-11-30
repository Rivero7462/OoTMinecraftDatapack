execute unless entity @a[scores={click=0..}] run tp @a 747 56 2670
execute unless entity @a[scores={click=0..}] run scoreboard players set @s text 0
execute unless entity @a[scores={click=0..}] run tag @a remove TimedRace
execute unless entity @a[scores={click=0..}] run tag @a remove TimedRace2
execute unless entity @a[scores={click=0..}] run clear @a minecraft:shears{Frog:1b}
execute unless entity @a[scores={click=0..}] run scoreboard players reset @a RaceTime
execute unless entity @a[scores={click=0..}] run fill 746 57 2670 746 57 2670 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 747 57 2671 747 57 2671 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 747 57 2669 747 57 2669 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 748 57 2670 748 57 2670 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1
execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Dr. Mizumi:","color":"gold"},{"text":" Oh, wow!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Dr. Mizumi:","color":"gold"},{"text":" I haven't seen an "},{"text":"Eyeball Frog","color":"red"},{"text":" like this since Zora's Domain froze over!"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Dr. Mizumi:","color":"gold"},{"text":" These eyeballs are so delicious! Tonight I will cook fried eyeballs for the first time in a long time! Uhoy hoy hoo houy hoy!"}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Dr. Mizumi:","color":"gold"},{"text":" Such great stuff! Please say thank you to King Zora! Eh? What?"}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Dr. Mizumi:","color":"gold"},{"text":" These are for making "},{"text":"Biggoron's Eyedrops","color":"red"},{"text":"? Oh, how disappointing! You should have said so in the first place!"}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Dr. Mizumi:","color":"gold"},{"text":" Here it is."}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Dr. Mizumi:","color":"gold"},{"text":" This medicine doesn't have any preservatives in it. So it "},{"text":"won't last long ","color":"red"},{"text":"at this temperature."}]
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @a[scores={click=15}] run tellraw @a ["",{"text":"Dr. Mizumi:","color":"gold"},{"text":" Run as fast as you can to Death Mountain. You're young-you can do it!"}]
execute if entity @a[scores={click=15}] run scoreboard players set @a click 16
execute if entity @a[scores={click=17}] run tellraw @a ["",{"text":"You traded the Eyeball Frog for the "},{"text":"World's Finest Eyedrops","color":"red"},{"text":"! Take them to Biggoron before they go bad!"}]
execute if entity @a[scores={click=17}] run give @a minecraft:shears{display:{Name:"{\"text\":\"World's Finest Eyedrops\"}"},Unbreakable:1b,Damage:31,HideFlags:63,Eyedrops:1b}
execute if entity @a[scores={click=17}] run scoreboard players set @a click 18

execute if entity @a[scores={click=18}] run tag @a remove NoOcarina
execute if entity @a[scores={click=18}] run scoreboard players set @s text 1
execute if entity @a[scores={click=18}] run tag @s add stoptext
execute if entity @a[scores={click=18}] run fill 748 57 2671 746 57 2669 minecraft:air

execute if entity @a[scores={click=18}] run tag @a add TimedRace
execute if entity @a[scores={click=18}] run tag @a add TimedRace3
execute if entity @a[scores={click=18}] run tag @a remove GiveFrog1
execute if entity @a[scores={click=18}] run scoreboard objectives remove click
