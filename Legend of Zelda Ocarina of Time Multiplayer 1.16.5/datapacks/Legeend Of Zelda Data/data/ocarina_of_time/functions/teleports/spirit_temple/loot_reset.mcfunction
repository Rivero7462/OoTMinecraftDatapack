#Pots
fill -24 82 887 -24 82 887 minecraft:flower_pot
fill -36 82 887 -36 82 887 minecraft:flower_pot
fill -68 87 834 -68 87 834 minecraft:flower_pot
fill -63 87 829 -63 87 829 minecraft:flower_pot
fill -60 87 826 -60 87 826 minecraft:flower_pot
fill -58 87 824 -58 87 824 minecraft:flower_pot
fill -66 88 852 -66 88 852 minecraft:flower_pot
fill -60 88 852 -60 88 852 minecraft:flower_pot
fill -64 88 842 -64 88 842 minecraft:flower_pot
fill -46 96 847 -46 96 847 minecraft:flower_pot
fill -44 96 847 -44 96 847 minecraft:flower_pot
fill -10 96 847 -10 96 847 minecraft:flower_pot
fill -8 96 847 -8 96 847 minecraft:flower_pot
fill -75 113 903 -75 113 903 minecraft:flower_pot
fill -81 113 903 -81 113 903 minecraft:flower_pot
fill -20 98 875 -20 98 875 minecraft:flower_pot
fill -20 98 879 -20 98 879 minecraft:flower_pot
fill -5 111 871 -5 111 871 minecraft:flower_pot

data merge entity @e[type=area_effect_cloud,tag=Pots,limit=1] {Tags:["Pots"]}

#Pillars and Thrones
fill -68 116 917 -68 120 917 minecraft:stone_brick_wall
fill -68 116 923 -68 120 923 minecraft:stone_brick_wall
fill -75 116 923 -75 120 923 minecraft:stone_brick_wall
fill -75 116 917 -75 120 917 minecraft:stone_brick_wall
fill -81 116 917 -81 120 917 minecraft:stone_brick_wall
fill -81 116 923 -81 120 923 minecraft:stone_brick_wall
fill -30 116 822 -30 120 822 minecraft:stone_brick_wall
fill -24 116 822 -24 120 822 minecraft:stone_brick_wall
fill -24 116 816 -24 120 816 minecraft:stone_brick_wall
fill -30 116 816 -30 120 816 minecraft:stone_brick_wall
fill -34 116 809 -34 120 809 minecraft:stone_brick_wall
fill -20 116 809 -20 120 809 minecraft:stone_brick_wall
fill -68 114 917 -68 114 917 minecraft:air
fill -68 114 923 -68 114 923 minecraft:air
fill -75 114 923 -75 114 923 minecraft:air
fill -75 114 917 -75 114 917 minecraft:air
fill -81 114 917 -81 114 917 minecraft:air
fill -81 114 923 -81 114 923 minecraft:air
fill -30 114 822 -30 114 822 minecraft:air
fill -24 114 822 -24 114 822 minecraft:air
fill -24 114 816 -24 114 816 minecraft:air
fill -30 114 816 -30 114 816 minecraft:air
fill -34 114 809 -34 114 809 minecraft:air
fill -20 114 809 -20 114 809 minecraft:air
fill 15 116 917 15 120 917 minecraft:stone_brick_wall
fill 15 116 923 15 120 923 minecraft:stone_brick_wall
fill 22 116 923 22 120 923 minecraft:stone_brick_wall
fill 22 116 917 22 120 917 minecraft:stone_brick_wall
fill 28 116 917 28 120 917 minecraft:stone_brick_wall
fill 28 116 923 28 120 923 minecraft:stone_brick_wall
fill 15 114 917 15 114 917 minecraft:air
fill 15 114 923 15 114 923 minecraft:air
fill 22 114 923 22 114 923 minecraft:air
fill 22 114 917 22 114 917 minecraft:air
fill 28 114 917 28 114 917 minecraft:air
fill 28 114 923 28 114 923 minecraft:air
clone -65 111 920 -64 113 920 -65 116 920
clone 11 111 920 12 113 920 11 116 920
clone -27 111 808 -27 113 809 -27 116 808
fill -64 114 920 -64 114 920 minecraft:air
fill 11 114 920 11 114 920 minecraft:air
fill -27 114 808 -27 114 808 minecraft:air

#Compass
tag @a remove Compass
execute unless entity @a[nbt={Inventory:[{tag:{Compass:1b}}]}] unless entity @a[tag=Compass] if block -20 87 836 minecraft:gold_block run give @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Compass\"}"},Unbreakable:1b,Damage:21,HideFlags:63,Compass:1b}
execute unless entity @a[tag=Compass] if block -20 87 836 minecraft:gold_block run tag @a add Compass

#Hearts
data remove block -8 134 888 Items
execute positioned -8 134 888 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
data remove block -10 134 888 Items
execute positioned -10 134 888 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
