#Adult/Child
execute if entity @a[tag=Adult] run function ocarina_of_time:moving_things/fishing_pond/adult
execute unless entity @a[tag=Adult] run function ocarina_of_time:moving_things/fishing_pond/child

#Start Fishing
execute unless entity @a[tag=StartFishing] if entity @a[nbt={Inventory:[{tag:{FishingRod:1b}}]}] run function ocarina_of_time:moving_things/fishing_pond/start_fishing

#Quit Fishing
execute if entity @a[tag=QuitFishing] run function ocarina_of_time:moving_things/fishing_pond/quit_fishing

#Leaving
execute if entity @a[tag=StartFishing] unless block 433 63 2719 minecraft:gold_block positioned 433 65 2719 if entity @a[distance=..1.1] run tellraw @a ["",{"text":"Fisherman: ","color":"gold"},{"text":"Hey! Hey! You can't take the rod out of here! When you quit fishing, return the rod to the counter. I'm serious!"}]
execute if entity @a[tag=StartFishing] unless block 433 63 2719 minecraft:gold_block positioned 433 65 2719 if entity @a[distance=..1.1] run fill 433 63 2719 433 63 2719 minecraft:gold_block
execute if entity @a[tag=StartFishing] positioned 433 65 2719 unless entity @a[distance=..1.1] run fill 433 63 2719 433 63 2719 minecraft:air

#Multiple Fish
kill @e[type=item,nbt={PickupDelay:40s,Item:{tag:{Fish:1b}}}]
execute as @e[type=armor_stand,tag=Fisherman1] run function ocarina_of_time:moving_things/fishing_pond/multiple_fish

#Items
execute as @e[type=item,x=428,y=65,z=2714,dx=5,dz=0] run tp @s 429 65 2717
