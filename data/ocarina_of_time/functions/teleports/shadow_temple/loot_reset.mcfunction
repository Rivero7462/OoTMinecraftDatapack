#Pots
fill 1647 91 917 1647 91 917 minecraft:flower_pot
fill 1653 91 917 1653 91 917 minecraft:flower_pot
fill 1641 91 931 1641 91 931 minecraft:flower_pot
fill 1641 91 935 1641 91 935 minecraft:flower_pot
fill 1629 91 942 1629 91 942 minecraft:flower_pot
fill 1621 91 942 1621 91 942 minecraft:flower_pot
fill 1616 91 927 1616 91 927 minecraft:flower_pot
fill 1765 62 903 1765 62 903 minecraft:flower_pot
fill 1668 58 1022 1668 58 1022 minecraft:flower_pot
fill 1673 58 1022 1673 58 1022 minecraft:flower_pot
fill 1684 62 1022 1684 62 1022 minecraft:flower_pot
fill 1684 62 1026 1684 62 1026 minecraft:flower_pot
fill 1600 58 909 1600 58 909 minecraft:flower_pot
fill 1606 58 909 1606 58 909 minecraft:flower_pot
fill 1595 58 935 1595 58 935 minecraft:flower_pot
fill 1587 58 935 1587 58 935 minecraft:flower_pot
fill 1543 58 926 1543 58 926 minecraft:flower_pot
fill 1559 58 926 1559 58 926 minecraft:flower_pot
fill 1551 58 878 1551 58 878 minecraft:flower_pot

data merge entity @e[type=area_effect_cloud,tag=Pots,limit=1] {Tags:["Pots"]}

#Signs
clone 1698 88 934 1698 88 934 1698 91 934
clone 1682 54 1035 1682 54 1035 1682 58 1035

#Bird
clone 1687 90 951 1691 94 957 1688 91 937
fill 1685 90 945 1696 90 935 minecraft:stone_bricks replace minecraft:air

#Hearts
data remove block 1795 71 970 Items
execute positioned 1795 71 970 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=down]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
data remove block 1796 71 971 Items
execute positioned 1796 71 971 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=down]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
data remove block 1764 66 907 Items
execute positioned 1764 66 907 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
data remove block 1764 66 903 Items
execute positioned 1764 66 903 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
data remove block 1579 61 930 Items
execute positioned 1579 61 930 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
data remove block 1571 70 923 Items
execute positioned 1571 70 923 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
data remove block 1571 70 921 Items
execute positioned 1571 70 921 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy

fill 1650 53 964 1652 53 962 minecraft:air

#Compass
tag @a remove Compass
execute if block 1750 78 961 minecraft:gold_block unless entity @a[tag=Compass] unless entity @a[nbt={Inventory:[{tag:{Compass:1b}}]}] unless entity @a[tag=Compass] run give @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Compass\"}"},Unbreakable:1b,Damage:21,HideFlags:63,Compass:1b}
execute if block 1750 78 961 minecraft:gold_block unless entity @a[tag=Compass] run tag @a add Compass
