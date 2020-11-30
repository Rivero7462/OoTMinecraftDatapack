execute if entity @a[nbt={Inventory:[{tag:{display:{Name:"{\"text\":\"Saria\"}"}}}]}] run advancement grant @a only minecraft:_secrets/saria
execute if entity @a[nbt={Inventory:[{tag:{display:{Name:"{\"text\":\"Items Shop Owner\"}"}}}]}] run advancement grant @a only minecraft:_secrets/item_shop_owner
execute if entity @a[nbt={Inventory:[{tag:{display:{Name:"{\"text\":\"Soldier\"}"}}}]}] run advancement grant @a only minecraft:_secrets/soldier
execute if entity @a[nbt={Inventory:[{tag:{display:{Name:"{\"text\":\"Zelda\"}"}}}]}] run advancement grant @a only minecraft:_secrets/zelda
execute if entity @a[nbt={Inventory:[{tag:{display:{Name:"{\"text\":\"Mutoh\"}"}}}]}] run advancement grant @a only minecraft:_secrets/mutoh
execute if entity @a[nbt={Inventory:[{tag:{display:{Name:"{\"text\":\"Princess Ruto\"}"}}}]}] run advancement grant @a only minecraft:_secrets/ruto
execute if entity @a[nbt={Inventory:[{tag:{display:{Name:"{\"text\":\"Curious Dog Guy\"}"}}}]}] run advancement grant @a only minecraft:_secrets/curious_dog_guy
execute if entity @a[nbt={Inventory:[{tag:{display:{Name:"{\"text\":\"Frog\"}"}}}]}] run advancement grant @a only minecraft:_secrets/frog
execute if entity @a[nbt={Inventory:[{tag:{display:{Name:"{\"text\":\"Phantom Ganon\"}"}}}]}] run advancement grant @a only minecraft:_secrets/phantom_ganon
execute if entity @a[nbt={Inventory:[{tag:{display:{Name:"{\"text\":\"Gerudo\"}"}}}]}] run advancement grant @a only minecraft:_secrets/gerudo
execute if entity @a[nbt={Inventory:[{tag:{display:{Name:"{\"text\":\"Redead\"}"}}}]}] run advancement grant @a only minecraft:_secrets/redead
execute if entity @a[nbt={Inventory:[{tag:{display:{Name:"{\"text\":\"Carpet Master\"}"}}}]}] run advancement grant @a only minecraft:_secrets/carpet_master
execute if entity @a[nbt={Inventory:[{tag:{display:{Name:"{\"text\":\"Nabooru\"}"}}}]}] run advancement grant @a only minecraft:_secrets/nabooru
execute if entity @a[nbt={Inventory:[{tag:{display:{Name:"{\"text\":\"Talon Sleeping\"}"}}}]}] run advancement grant @a only minecraft:_secrets/talon_sleeping
execute if entity @a[nbt={Inventory:[{tag:{display:{Name:"{\"text\":\"Darunia\"}"}}}]}] run advancement grant @a only minecraft:_secrets/darunia
execute if entity @a[nbt={Inventory:[{tag:{display:{Name:"{\"text\":\"Fisherman\"}"}}}]}] run advancement grant @a only minecraft:_secrets/fisherman

execute store result score @s lifetime run clear @a minecraft:player_head{SecretMask:1b}
scoreboard players operation @s timer += @s lifetime

execute if entity @s[scores={timer=1..}] run advancement grant @a only minecraft:_secrets/root

#Prizes
#1
execute unless block -605 44 -694 minecraft:gold_block if entity @s[scores={timer=4..}] run tellraw @a ["",{"text":"You got the "},{"text":"Omni Tunic","color":"red"},{"text":"! This chestplate can allow you to survive in hot temperatures, and breathe underwater! It also can't be stolen by Like Likes!"}]
execute unless block -605 44 -694 minecraft:gold_block if entity @s[scores={timer=4..}] run give @a minecraft:golden_chestplate{display:{Name:"{\"text\":\"Omni Tunic\"}"},Unbreakable:1b,GoronTunic:1b,ZoraTunic:1b,Omni:1b,HideFlags:46}
execute if entity @s[scores={timer=4..}] run fill -605 44 -694 -606 45 -694 minecraft:gold_block
#2
execute unless block -609 45 -694 minecraft:gold_block if entity @s[scores={timer=8..}] run tellraw @a ["",{"text":"You got the "},{"text":"Pegasus Boots","color":"red"},{"text":"! These boots allow you to run faster than anyone in Hyrule!"}]
execute unless block -609 45 -694 minecraft:gold_block if entity @s[scores={timer=8..}] run give @a minecraft:chainmail_boots{display:{color:16764969,Name:"{\"text\":\"Pegasus Boots\"}"},Unbreakable:1b,HideFlags:63,PegasusBoots:1b}
execute if entity @s[scores={timer=8..}] run fill -608 44 -694 -609 45 -694 minecraft:gold_block
#3
execute unless block -606 45 -702 minecraft:gold_block if entity @s[scores={timer=12..}] run tellraw @a {"text":"You now have infinite ammo for almost all items including infinite magic! Use items to your hearts content!"}
execute unless block -606 45 -702 minecraft:gold_block if entity @s[scores={timer=12..}] run fill 899 4 -638 899 4 -638 minecraft:redstone_block
execute if entity @s[scores={timer=12..}] run fill -605 44 -702 -606 45 -702 minecraft:gold_block
#4
execute unless block -609 45 -702 minecraft:gold_block if entity @s[scores={timer=16..}] run tellraw @a ["",{"text":"You obtained the Legendary Rocket! With this, you can travel anywhere in the world! To use, throw on the ground. (This is the most game breaking item. If you "},{"text":"haven't completed","color":"red"},{"text":" all the story, "},{"text":"don't","color":"red"},{"text":" use this item)"}]
execute unless block -609 45 -702 minecraft:gold_block if entity @s[scores={timer=16..}] run fill 923 4 -635 923 4 -635 minecraft:stone_button[face=floor]
execute unless block -609 45 -702 minecraft:gold_block if entity @s[scores={timer=16..}] run fill 975 4 -641 975 6 -643 minecraft:red_concrete
execute unless block -609 45 -702 minecraft:gold_block if entity @s[scores={timer=16..}] run fill 981 4 -637 979 6 -637 minecraft:red_concrete
execute unless block -609 45 -702 minecraft:gold_block if entity @s[scores={timer=16..}] run fill 985 4 -641 985 6 -643 minecraft:red_concrete
execute unless block -609 45 -702 minecraft:gold_block if entity @s[scores={timer=16..}] run fill 981 4 -648 981 4 -648 minecraft:air
execute unless block -609 45 -702 minecraft:gold_block if entity @s[scores={timer=16..}] run give @a minecraft:firework_rocket{Legendary:1b} 1
execute unless block -609 45 -702 minecraft:gold_block if entity @s[scores={timer=16..}] run tag @a add FinalSecret
execute if entity @s[scores={timer=16..}] run fill -608 44 -702 -609 45 -702 minecraft:gold_block

fill -610 44 -697 -610 44 -697 minecraft:stone_button[facing=east]
