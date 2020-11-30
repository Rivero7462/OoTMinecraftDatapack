execute unless entity @a[scores={click=0..}] run kill @s
execute unless entity @a[scores={click=0..}] run fill 964 74 2043 964 74 2043 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 965 74 2042 965 74 2042 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 964 74 2041 964 74 2041 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 963 74 2042 963 74 2042 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a 964 73 2042 0 ~
execute unless entity @a[scores={click=0..}] run tag @a add StopStalchildSpawn
execute unless entity @a[scores={click=0..}] run tag @a add StopTime
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run tag @s add CompleteMask
execute unless entity @a[scores={click=0..}] run scoreboard players set @s lifetime 2461
execute unless entity @a[scores={click=0..}] run scoreboard players set @s text 0
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1..9}] run tp @s 965 72.3 2045 160.2 ~
execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Running Man: ","color":"gold"},{"text":"I bet with those long ears you could even hear the voices of spirits... Oh, these are genuine rabbit ears from the animal of legend!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Running Man: ","color":"gold"},{"text":"I don't care how expensive it is! Please sell it to me!"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Running Man: ","color":"gold"},{"text":"My longtime dream! Returning to the wild life! Finally, the actor, stage, and prop have been united!"}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a {"text":"It's a 50-Rupee mask, but he paid you a crazy amount of money for it-more money than you can count!"}
execute if entity @a[scores={click=7}] run clear @a minecraft:player_head{display:{Name:"\"Bunny Hood\""}} 1
execute if entity @a[scores={click=7}] run data merge entity @s {ArmorItems:[{id:"leather_boots",Count:1,tag:{display:{color:7025152}}},{id:"leather_leggings",Count:1,tag:{display:{color:149966}}},{id:"leather_chestplate",Count:1,tag:{display:{color:16777215}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"{\"text\":\"Bunny Hood\"}",Id:[I;-1768369996,-409842623,-1823819615,1459092386],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWY3ZTI4OGNjYjBjZDdiNWMzZmM2Y2MzNjVkMTBmYTliMjk3NzRhYjEzNTU1NzZlMTM5YTE1ZjliM2M3Mzk2NiJ9fX0="}]}}}}]}
execute if entity @a[scores={click=7}] run give @a minecraft:purple_dye{display:{Name:"{\"text\":\"Purple Rupee\"}"},Item:1b} 30
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Go back to the mask shop and pay back just "},{"text":"50 Rupees ","color":"red"},{"text":"of this money."}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10

execute if entity @a[scores={click=10..}] run tag @a remove StopStalchildSpawn
execute if entity @a[scores={click=10..}] run tag @a remove NoOcarina
execute if entity @a[scores={click=10..}] run tag @a add Mask8
execute if entity @a[scores={click=10..}] run tag @a remove StopTime
execute if entity @a[scores={click=10..}] run fill 909 74 2044 909 74 2044 minecraft:gold_block
execute if entity @a[scores={click=10..}] run scoreboard players set @s lifetime 2461
execute if entity @a[scores={click=10..}] run scoreboard players set @s text 2
execute if entity @a[scores={click=10..}] run fill 965 74 2043 963 74 2041 minecraft:air
execute if entity @a[scores={click=10..}] run tag @a remove BunnyHood
execute if entity @a[scores={click=10..}] run scoreboard objectives remove click
