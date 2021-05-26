#Fisherman
#Fish
execute as @s[tag=Fisherman1,scores={text=0}] at @s if entity @a[distance=..2.5] if entity @a[nbt={Inventory:[{tag:{Fish:1b}}]}] unless entity @s[tag=stoptext] run function ocarina_of_time:distance_text/fishing_pond/fish
#0
execute as @s[tag=Fisherman1,scores={text=0}] at @s if entity @a[distance=..2.5] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Fisherman: ","color":"gold"},{"text":"What do you want?"}]
execute as @s[tag=Fisherman1,scores={text=0}] at @s if entity @a[distance=..2.5] unless entity @s[tag=stoptext] run tellraw @a {"text":"I want to quit","color":"green","clickEvent":{"action":"run_command","value":"/execute unless entity @a[tag=StealCap] run tag @a add QuitFishing"}}
execute as @s[tag=Fisherman1,scores={text=0}] at @s if entity @a[distance=..2.5] run tag @s add stoptext
#1
execute as @s[tag=Fisherman1,scores={text=1}] at @s if entity @a[distance=..2.5] unless entity @s[tag=stoptext] if entity @a[tag=Adult] run fill 411 57 2720 411 57 2720 minecraft:gold_block
execute as @s[tag=Fisherman1,scores={text=1}] at @s if entity @a[distance=..2.5] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Fisherman: ","color":"gold"},{"text":"Well, do you want to go fishing for "},{"text":"20 Rupees","color":"red"},{"text":"?"}]
execute as @s[tag=Fisherman1,scores={text=1}] at @s if entity @a[distance=..2.5] run tag @s add stoptext
#2
execute as @s[tag=Fisherman1,scores={text=2}] at @s if entity @a[distance=..2.5] run fill 411 57 2720 411 57 2720 minecraft:gold_block
execute as @s[tag=Fisherman1,scores={text=2}] at @s if entity @a[distance=..2.5] run tellraw @a ["",{"text":"Fisherman: ","color":"gold"},{"text":"Hey, mister! I remember you! It's been a long time! How many years has it been? Seven years?! What have you been doing all this time?! You're my only customer. I'm almost out of business! Seriously! On top of that, my hair... Uh, I mean, never mind... Well, do you want to go fishing? It costs only "},{"text":"20 Rupees","color":"red"},{"text":"!"}]
execute as @s[tag=Fisherman1,scores={text=2}] at @s if entity @a[distance=..2.5] run tag @s add stoptext
execute as @s[tag=Fisherman1,scores={text=2}] at @s if entity @a[distance=..2.5] run scoreboard players set @s text 1
#3
execute as @s[tag=Fisherman1,scores={text=3}] at @s if entity @a[distance=..2.5] unless entity @e[type=fishing_bobber] run tellraw @a ["",{"text":"Fisherman: ","color":"gold"},{"text":"Hey, what are you doing? I told you not to do that! You're terrible! Seriously! Give me back my hat! You're a kindhearted kid! But don't tell anyone about this. Seriously!"}]
execute as @s[tag=Fisherman1,scores={text=3}] at @s if entity @a[distance=..2.5] unless entity @e[type=fishing_bobber] run data merge entity @e[type=armor_stand,tag=Fisherman1,limit=1] {ArmorItems:[{},{},{id:leather_chestplate,Count:1b,tag:{display:{color:493036}}},{id:player_head,Count:1b,tag:{SkullOwner:{Id:[I;-307533085,1359626889,-1640353966,689722561],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzY5OTAyOWVlY2ZiYWE2ZjUwMmJkNWFiZjQ3NjFjOWQzMmE5MTk0M2U0NjA2ZjI2NDVmMWQwYjE2NjQ1MzZmZSJ9fX0="}]}}}}]}
execute as @s[tag=Fisherman1,scores={text=3}] at @s if entity @a[distance=..2.5] unless entity @e[type=fishing_bobber] run kill @e[tag=FishingCap]
execute as @s[tag=Fisherman1,scores={text=3}] at @s if entity @a[distance=..2.5] unless entity @e[type=fishing_bobber] run tag @a remove StealCap
execute as @s[tag=Fisherman1,scores={text=3}] at @s if entity @a[distance=..2.5] unless entity @e[type=fishing_bobber] run tag @s add stoptext
execute as @s[tag=Fisherman1,scores={text=3}] at @s if entity @a[distance=..2.5] unless entity @e[type=fishing_bobber] run scoreboard players set @s text 0
