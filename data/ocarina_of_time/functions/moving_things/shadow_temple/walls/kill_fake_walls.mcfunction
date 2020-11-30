#Boss
execute if block 1652 15 962 minecraft:gold_block as @e[type=armor_stand,tag=BongoEye] run data merge entity @s {HandItems:[{id:cobblestone,Count:1b,tag:{CustomModelData:68}},{}]}
execute if block 1652 15 962 minecraft:gold_block as @e[type=armor_stand,tag=BongoHand] unless entity @s[tag=BigAttack] unless entity @s[tag=BigStun] as @e[type=armor_stand,tag=BongoEye] run data merge entity @s {HandItems:[{id:cobblestone,Count:1b,tag:{CustomModelData:71}},{}]}
execute if block 1652 15 962 minecraft:gold_block as @e[type=armor_stand,tag=BongoTail] run data merge entity @s {HandItems:[{id:cobblestone,Count:1b,tag:{CustomModelData:72}},{}]}

#Diamond Room
fill 1565 58 910 1565 61 910 minecraft:red_nether_bricks
fill 1564 58 909 1564 61 909 minecraft:red_nether_bricks
fill 1563 58 908 1563 61 908 minecraft:red_nether_bricks
fill 1562 58 907 1562 61 907 minecraft:red_nether_bricks
fill 1560 58 905 1560 61 905 minecraft:red_nether_bricks
fill 1559 58 904 1559 61 904 minecraft:red_nether_bricks
fill 1558 58 903 1558 61 903 minecraft:red_nether_bricks
fill 1557 58 902 1557 61 902 minecraft:red_nether_bricks
fill 1555 58 892 1555 61 892 minecraft:red_nether_bricks
fill 1554 58 893 1554 61 893 minecraft:red_nether_bricks
fill 1553 58 894 1553 61 894 minecraft:red_nether_bricks
fill 1552 58 895 1552 61 895 minecraft:red_nether_bricks
fill 1550 58 897 1550 61 897 minecraft:red_nether_bricks
fill 1549 58 898 1549 61 898 minecraft:red_nether_bricks
fill 1548 58 899 1548 61 899 minecraft:red_nether_bricks
fill 1547 58 900 1547 61 900 minecraft:red_nether_bricks
fill 1552 58 907 1552 61 907 minecraft:red_nether_bricks
fill 1553 58 908 1553 61 908 minecraft:red_nether_bricks
fill 1554 58 909 1554 61 909 minecraft:red_nether_bricks
fill 1555 58 910 1555 61 910 minecraft:red_nether_bricks
fill 1555 58 912 1555 61 912 minecraft:red_nether_bricks
fill 1554 58 913 1554 61 913 minecraft:red_nether_bricks
fill 1553 58 914 1553 61 914 minecraft:red_nether_bricks
fill 1552 58 915 1552 61 915 minecraft:red_nether_bricks
fill 1542 58 915 1542 61 915 minecraft:red_nether_bricks
fill 1543 58 914 1543 61 914 minecraft:red_nether_bricks
fill 1544 58 913 1544 61 913 minecraft:red_nether_bricks
fill 1545 58 912 1545 61 912 minecraft:red_nether_bricks
fill 1537 58 902 1537 61 902 minecraft:red_nether_bricks
fill 1538 58 903 1538 61 903 minecraft:red_nether_bricks
fill 1539 58 904 1539 61 904 minecraft:red_nether_bricks
fill 1540 58 905 1540 61 905 minecraft:red_nether_bricks

#Boss Room
fill 1591 56 951 1591 33 953 minecraft:stone
fill 1593 56 954 1589 33 955 minecraft:stone
fill 1589 57 955 1593 57 954 minecraft:cobblestone
fill 1591 57 953 1591 57 951 minecraft:cobblestone
fill 1582 57 947 1583 57 952 minecraft:cobblestone
fill 1582 56 947 1583 33 952 minecraft:stone
fill 1598 57 951 1599 57 955 minecraft:cobblestone
fill 1598 56 951 1599 33 955 minecraft:stone
fill 1599 57 961 1594 57 962 minecraft:cobblestone
fill 1599 56 961 1594 33 962 minecraft:stone
fill 1585 57 967 1585 57 961 minecraft:cobblestone
fill 1585 56 967 1585 33 961 minecraft:stone
fill 1584 57 962 1584 57 961 minecraft:cobblestone
fill 1584 56 962 1584 33 961 minecraft:stone
fill 1583 57 962 1582 57 957 minecraft:cobblestone
fill 1583 56 962 1582 33 957 minecraft:stone

kill @e[type=falling_block,tag=FakeShadowWall]
kill @e[type=armor_stand,tag=FakeShadowWall]
execute as @e[type=armor_stand,tag=FakeTorch] run data merge entity @s {ArmorItems:[{},{},{},{}]}

clone 1763 61 1021 1768 63 1026 1760 60 1012
clone 1763 61 1021 1768 63 1026 1769 60 1003
clone 1763 61 1021 1768 63 1026 1731 55 989
clone 1716 58 956 1717 61 957 1716 58 960
tag @e[type=area_effect_cloud,tag=MovingPlatforms] remove Hidden

data merge entity @e[type=armor_stand,tag=ScytheBladeTrap2,tag=Middle,limit=1] {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:60}}]}
execute as @e[type=armor_stand,tag=ScytheBladeTrap2,tag=Blade] run data merge entity @s {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:59}}]}

data merge entity @e[type=zombie,tag=Floormaster4,limit=1] {ArmorItems:[{},{},{},{id:black_glazed_terracotta,Count:1b}]}

#Invisible Chests
execute unless block 1808 63 985 minecraft:gold_block unless block 1803 63 986 minecraft:chest run clone 1808 63 986 1808 63 986 1803 63 986
execute unless block 1795 59 935 minecraft:gold_block unless block 1792 58 937 minecraft:chest run clone 1795 59 936 1795 59 936 1792 58 937
execute unless block 1778 58 921 minecraft:mossy_cobblestone unless block 1785 59 917 minecraft:gold_block unless block 1779 58 922 minecraft:chest run clone 1785 59 918 1785 59 918 1779 58 922
