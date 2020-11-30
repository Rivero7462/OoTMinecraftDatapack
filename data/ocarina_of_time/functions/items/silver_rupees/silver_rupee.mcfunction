tp @s ~ ~ ~ ~-5 ~
execute store result score @s BlueRupee if entity @e[type=armor_stand,tag=SilverRupeeSet1]
execute store result score @s BlueRupee2 if entity @e[type=armor_stand,tag=SilverRupeeSet2]
execute store result score @s RedRupee if entity @e[type=armor_stand,tag=SilverRupeeSet3]
execute store result score @s RedRupee2 if entity @e[type=armor_stand,tag=SilverRupeeSet4]

execute if entity @s[tag=SilverRupeeSet1,scores={BlueRupee=5}] if entity @a[distance=..1] run function ocarina_of_time:items/silver_rupees/collect_1
execute if entity @s[tag=SilverRupeeSet1,scores={BlueRupee=4}] if entity @a[distance=..1] run function ocarina_of_time:items/silver_rupees/collect_2
execute if entity @s[tag=SilverRupeeSet1,scores={BlueRupee=3}] if entity @a[distance=..1] run function ocarina_of_time:items/silver_rupees/collect_3
execute if entity @s[tag=SilverRupeeSet1,scores={BlueRupee=2}] if entity @a[distance=..1] run function ocarina_of_time:items/silver_rupees/collect_4
execute if entity @s[tag=SilverRupeeSet1,scores={BlueRupee=1}] if entity @a[distance=..1] run function ocarina_of_time:items/silver_rupees/collect_5

execute if entity @s[tag=SilverRupeeSet2,scores={BlueRupee2=5}] if entity @a[distance=..1] run function ocarina_of_time:items/silver_rupees/collect_1
execute if entity @s[tag=SilverRupeeSet2,scores={BlueRupee2=4}] if entity @a[distance=..1] run function ocarina_of_time:items/silver_rupees/collect_2
execute if entity @s[tag=SilverRupeeSet2,scores={BlueRupee2=3}] if entity @a[distance=..1] run function ocarina_of_time:items/silver_rupees/collect_3
execute if entity @s[tag=SilverRupeeSet2,scores={BlueRupee2=2}] if entity @a[distance=..1] run function ocarina_of_time:items/silver_rupees/collect_4
execute if entity @s[tag=SilverRupeeSet2,scores={BlueRupee2=1}] if entity @a[distance=..1] run function ocarina_of_time:items/silver_rupees/collect_5

execute if entity @s[tag=SilverRupeeSet3,scores={RedRupee=5}] if entity @a[distance=..1] run function ocarina_of_time:items/silver_rupees/collect_1
execute if entity @s[tag=SilverRupeeSet3,scores={RedRupee=4}] if entity @a[distance=..1] run function ocarina_of_time:items/silver_rupees/collect_2
execute if entity @s[tag=SilverRupeeSet3,scores={RedRupee=3}] if entity @a[distance=..1] run function ocarina_of_time:items/silver_rupees/collect_3
execute if entity @s[tag=SilverRupeeSet3,scores={RedRupee=2}] if entity @a[distance=..1] run function ocarina_of_time:items/silver_rupees/collect_4
execute if entity @s[tag=SilverRupeeSet3,scores={RedRupee=1}] if entity @a[distance=..1] run function ocarina_of_time:items/silver_rupees/collect_5

execute if entity @s[tag=SilverRupeeSet4,scores={RedRupee2=5}] if entity @a[distance=..1] run function ocarina_of_time:items/silver_rupees/collect_1
execute if entity @s[tag=SilverRupeeSet4,scores={RedRupee2=4}] if entity @a[distance=..1] run function ocarina_of_time:items/silver_rupees/collect_2
execute if entity @s[tag=SilverRupeeSet4,scores={RedRupee2=3}] if entity @a[distance=..1] run function ocarina_of_time:items/silver_rupees/collect_3
execute if entity @s[tag=SilverRupeeSet4,scores={RedRupee2=2}] if entity @a[distance=..1] run function ocarina_of_time:items/silver_rupees/collect_4
execute if entity @s[tag=SilverRupeeSet4,scores={RedRupee2=1}] if entity @a[distance=..1] run function ocarina_of_time:items/silver_rupees/collect_5
execute if entity @a[distance=..1] run kill @s[tag=!SilverRupeeCounter]
