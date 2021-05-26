#Drum Room Lights
execute unless entity @e[type=falling_block,tag=BongoLight1] run summon minecraft:falling_block 1651 20 974 {Tags:["BongoLight","BongoLight1"],BlockState:{Name:"smooth_sandstone"},Time:-999999999,NoGravity:1b}
execute unless entity @e[type=falling_block,tag=BongoLight2] run summon minecraft:falling_block 1656 20 968 {Tags:["BongoLight","BongoLight2"],BlockState:{Name:"smooth_sandstone"},Time:-999999999,NoGravity:1b}
execute unless entity @e[type=falling_block,tag=BongoLight3] run summon minecraft:falling_block 1662 20 963 {Tags:["BongoLight","BongoLight3"],BlockState:{Name:"smooth_sandstone"},Time:-999999999,NoGravity:1b}
execute unless entity @e[type=falling_block,tag=BongoLight4] run summon minecraft:falling_block 1656 20 958 {Tags:["BongoLight","BongoLight4"],BlockState:{Name:"smooth_sandstone"},Time:-999999999,NoGravity:1b}
execute unless entity @e[type=falling_block,tag=BongoLight5] run summon minecraft:falling_block 1651 20 963 {Tags:["BongoLight","BongoLight5"],BlockState:{Name:"smooth_sandstone"},Time:-999999999,NoGravity:1b}
execute unless entity @e[type=falling_block,tag=BongoLight6] run summon minecraft:falling_block 1646 20 968 {Tags:["BongoLight","BongoLight6"],BlockState:{Name:"smooth_sandstone"},Time:-999999999,NoGravity:1b}
execute unless entity @e[type=falling_block,tag=BongoLight7] run summon minecraft:falling_block 1640 20 963 {Tags:["BongoLight","BongoLight7"],BlockState:{Name:"smooth_sandstone"},Time:-999999999,NoGravity:1b}
execute unless entity @e[type=falling_block,tag=BongoLight8] run summon minecraft:falling_block 1646 20 958 {Tags:["BongoLight","BongoLight8"],BlockState:{Name:"smooth_sandstone"},Time:-999999999,NoGravity:1b}
execute unless entity @e[type=falling_block,tag=BongoLight9] run summon minecraft:falling_block 1651 20 952 {Tags:["BongoLight","BongoLight9"],BlockState:{Name:"smooth_sandstone"},Time:-999999999,NoGravity:1b}
execute unless entity @e[type=falling_block,tag=BongoLight10] run summon minecraft:falling_block 1659 20 955 {Tags:["BongoLight","BongoLight10"],BlockState:{Name:"smooth_sandstone"},Time:-999999999,NoGravity:1b}
execute unless entity @e[type=falling_block,tag=BongoLight11] run summon minecraft:falling_block 1643 20 955 {Tags:["BongoLight","BongoLight11"],BlockState:{Name:"smooth_sandstone"},Time:-999999999,NoGravity:1b}
execute unless entity @e[type=falling_block,tag=BongoLight12] run summon minecraft:falling_block 1643 20 971 {Tags:["BongoLight","BongoLight12"],BlockState:{Name:"smooth_sandstone"},Time:-999999999,NoGravity:1b}
execute unless entity @e[type=falling_block,tag=BongoLight13] run summon minecraft:falling_block 1659 20 971 {Tags:["BongoLight","BongoLight13"],BlockState:{Name:"smooth_sandstone"},Time:-999999999,NoGravity:1b}

#Boss
execute if block 1652 15 962 minecraft:gold_block as @e[type=armor_stand,tag=BongoEye,tag=!Death] run data merge entity @s {HandItems:[{},{}]}
execute if block 1652 15 962 minecraft:gold_block unless entity @e[type=armor_stand,tag=BongoEye,tag=Death] as @e[type=armor_stand,tag=BongoTail] run data merge entity @s {HandItems:[{},{}]}

#Diamond Room
fill 1565 58 910 1565 61 910 minecraft:barrier
fill 1564 58 909 1564 61 909 minecraft:barrier
fill 1563 58 908 1563 61 908 minecraft:barrier
fill 1562 58 907 1562 61 907 minecraft:barrier
fill 1560 58 905 1560 61 905 minecraft:barrier
fill 1559 58 904 1559 61 904 minecraft:barrier
fill 1558 58 903 1558 61 903 minecraft:barrier
fill 1557 58 902 1557 61 902 minecraft:barrier
fill 1555 58 892 1555 61 892 minecraft:barrier
fill 1554 58 893 1554 61 893 minecraft:barrier
fill 1553 58 894 1553 61 894 minecraft:barrier
fill 1552 58 895 1552 61 895 minecraft:barrier
fill 1550 58 897 1550 61 897 minecraft:barrier
fill 1549 58 898 1549 61 898 minecraft:barrier
fill 1548 58 899 1548 61 899 minecraft:barrier
fill 1547 58 900 1547 61 900 minecraft:barrier
fill 1552 58 907 1552 61 907 minecraft:barrier
fill 1553 58 908 1553 61 908 minecraft:barrier
fill 1554 58 909 1554 61 909 minecraft:barrier
fill 1555 58 910 1555 61 910 minecraft:barrier
fill 1555 58 912 1555 61 912 minecraft:barrier
fill 1554 58 913 1554 61 913 minecraft:barrier
fill 1553 58 914 1553 61 914 minecraft:barrier
fill 1552 58 915 1552 61 915 minecraft:barrier
fill 1542 58 915 1542 61 915 minecraft:barrier
fill 1543 58 914 1543 61 914 minecraft:barrier
fill 1544 58 913 1544 61 913 minecraft:barrier
fill 1545 58 912 1545 61 912 minecraft:barrier
fill 1537 58 902 1537 61 902 minecraft:barrier
fill 1538 58 903 1538 61 903 minecraft:barrier
fill 1539 58 904 1539 61 904 minecraft:barrier
fill 1540 58 905 1540 61 905 minecraft:barrier

#Boss Room
fill 1591 56 951 1591 33 953 minecraft:barrier
fill 1593 56 954 1589 33 955 minecraft:barrier
fill 1589 57 955 1593 57 954 minecraft:barrier
fill 1591 57 953 1591 57 951 minecraft:barrier
fill 1582 57 947 1583 57 952 minecraft:barrier
fill 1582 56 947 1583 33 952 minecraft:barrier
fill 1598 57 951 1599 57 955 minecraft:barrier
fill 1598 56 951 1599 33 955 minecraft:barrier
fill 1599 57 961 1594 57 962 minecraft:barrier
fill 1599 56 961 1594 33 962 minecraft:barrier
fill 1585 57 967 1585 57 961 minecraft:barrier
fill 1585 56 967 1585 33 961 minecraft:barrier
fill 1584 57 962 1584 57 961 minecraft:barrier
fill 1584 56 962 1584 33 961 minecraft:barrier
fill 1583 57 962 1582 57 957 minecraft:barrier
fill 1583 56 962 1582 33 957 minecraft:barrier

#Invisible Chests
execute unless block 1808 63 985 minecraft:gold_block run fill 1803 63 986 1803 63 986 minecraft:grindstone[face=floor,facing=east]
execute unless block 1795 59 935 minecraft:gold_block run fill 1792 58 937 1792 58 937 minecraft:grindstone[face=floor,facing=east]
execute unless block 1795 59 935 minecraft:gold_block run fill 1779 58 922 1779 58 922 minecraft:grindstone[face=floor,facing=west]

fill 1760 60 1012 1765 62 1017 minecraft:barrier
fill 1762 62 1017 1760 60 1017 minecraft:stone
fill 1769 60 1003 1774 62 1008 minecraft:barrier
fill 1731 55 989 1736 57 994 minecraft:barrier
fill 1734 57 981 1723 55 985 minecraft:barrier replace minecraft:red_nether_bricks
fill 1734 57 981 1723 55 985 minecraft:barrier replace minecraft:cobblestone
fill 1734 57 981 1723 55 985 minecraft:barrier replace minecraft:stone
fill 1720 55 983 1736 55 983 minecraft:iron_bars[east=true,west=true]
fill 1716 58 960 1717 61 961 minecraft:barrier
tag @e[type=area_effect_cloud,tag=MovingPlatforms] add Hidden

data merge entity @e[type=armor_stand,tag=ScytheBladeTrap2,tag=Middle,limit=1] {ArmorItems:[{},{},{},{}]}
execute as @e[type=armor_stand,tag=ScytheBladeTrap2,tag=Blade] run data merge entity @s {ArmorItems:[{},{},{},{}]}
data merge entity @e[type=zombie,tag=Floormaster4,limit=1] {ArmorItems:[{},{},{},{}]}

execute as @e[type=armor_stand,tag=FakeTorch] run data merge entity @s {ArmorItems:[{},{},{},{id:cobblestone,Count:1,tag:{CustomModelData:58}}]}

summon minecraft:armor_stand 1660.8 90.8 933 {Tags:["FakeWall","FakeShadowWall","Text1","Npc"],Marker:1b,Rotation:[-90f],Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:wither_skeleton_skull,Count:1}],DisabledSlots:4144959}
summon minecraft:armor_stand 1660.2 90.8 933 {Tags:["FakeWall","FakeShadowWall"],Marker:1b,Rotation:[90f],Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:wither_skeleton_skull,Count:1}],DisabledSlots:4144959}
summon minecraft:armor_stand 1650 90.8 923.8 {Tags:["FakeWall","FakeShadowWall","Text2","Npc"],Marker:1b,Rotation:[0f],Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:wither_skeleton_skull,Count:1}],DisabledSlots:4144959}
summon minecraft:armor_stand 1650 90.8 923.2 {Tags:["FakeWall","FakeShadowWall"],Marker:1b,Rotation:[180f],Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:wither_skeleton_skull,Count:1}],DisabledSlots:4144959}
summon minecraft:armor_stand 1640.8 90.8 933 {Tags:["FakeWall","FakeShadowWall","Text2","Npc"],Marker:1b,Rotation:[-90f],Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:wither_skeleton_skull,Count:1}],DisabledSlots:4144959}
summon minecraft:armor_stand 1640.2 90.8 933 {Tags:["FakeWall","FakeShadowWall"],Marker:1b,Rotation:[90f],Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:wither_skeleton_skull,Count:1}],DisabledSlots:4144959}
summon minecraft:armor_stand 1635.8 90.8 933 {Tags:["FakeWall","FakeShadowWall","Text3","Npc"],Marker:1b,Rotation:[-90f],Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:wither_skeleton_skull,Count:1}],DisabledSlots:4144959}
summon minecraft:armor_stand 1635.2 90.8 933 {Tags:["FakeWall","FakeShadowWall"],Marker:1b,Rotation:[90f],Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:wither_skeleton_skull,Count:1}],DisabledSlots:4144959}
summon minecraft:armor_stand 1615.8 90.8 925 {Tags:["FakeWall","FakeShadowWall"],Marker:1b,Rotation:[-90f],Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:wither_skeleton_skull,Count:1}],DisabledSlots:4144959}
summon minecraft:armor_stand 1615.2 90.8 925 {Tags:["FakeWall","FakeShadowWall"],Marker:1b,Rotation:[90f],Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:wither_skeleton_skull,Count:1}],DisabledSlots:4144959}

scoreboard players set @e[type=armor_stand,tag=FakeWall,tag=Npc] text 1

summon minecraft:falling_block 1681 91 948 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"polished_andesite"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1681 92 948 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"polished_andesite"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1681 93 948 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"polished_andesite"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1681 91 947 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"polished_andesite"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1681 92 947 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"polished_andesite"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1681 93 947 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"polished_andesite"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1681 91 946 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"polished_andesite"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1681 92 946 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"polished_andesite"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1681 93 946 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"polished_andesite"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1681 91 934 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"polished_andesite"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1681 92 934 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"polished_andesite"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1681 93 934 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"polished_andesite"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1681 91 933 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"polished_andesite"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1681 92 933 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"polished_andesite"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1681 93 933 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"polished_andesite"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1681 91 932 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"polished_andesite"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1681 92 932 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"polished_andesite"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1681 93 932 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"polished_andesite"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1660 91 934 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1660 92 934 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1660 93 934 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1660 91 933 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1660 92 933 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1660 93 933 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1660 91 932 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1660 92 932 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1660 93 932 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1651 91 923 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1651 92 923 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1651 93 923 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1650 91 923 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1650 92 923 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1650 93 923 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1649 91 923 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1649 92 923 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1649 93 923 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1640 91 934 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1640 92 934 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1640 93 934 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1640 91 933 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1640 92 933 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1640 93 933 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1640 91 932 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1640 92 932 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1640 93 932 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1635 91 934 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1635 92 934 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1635 93 934 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1635 91 933 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1635 92 933 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1635 93 933 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1635 91 932 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1635 92 932 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1635 93 932 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1615 91 926 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1615 92 926 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1615 93 926 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1615 91 925 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1615 92 925 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1615 93 925 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1615 91 924 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1615 92 924 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1615 93 924 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"dirt"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1749 77 935 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"mossy_cobblestone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1749 78 935 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"mossy_cobblestone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1749 79 935 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"mossy_cobblestone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1749 80 935 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"mossy_cobblestone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1750 77 935 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"mossy_cobblestone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1750 78 935 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"mossy_cobblestone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1750 79 935 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"mossy_cobblestone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1750 80 935 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"mossy_cobblestone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1751 77 935 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"mossy_cobblestone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1751 78 935 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"mossy_cobblestone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1751 79 935 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"mossy_cobblestone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1751 80 935 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"mossy_cobblestone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1749 77 945 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"mossy_cobblestone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1749 78 945 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"mossy_cobblestone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1749 79 945 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"mossy_cobblestone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1749 80 945 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"mossy_cobblestone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1750 77 945 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"mossy_cobblestone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1750 78 945 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"mossy_cobblestone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1750 79 945 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"mossy_cobblestone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1750 80 945 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"mossy_cobblestone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1751 77 945 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"mossy_cobblestone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1751 78 945 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"mossy_cobblestone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1751 79 945 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"mossy_cobblestone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1751 80 945 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"mossy_cobblestone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1763 76 911 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1764 76 911 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1765 76 911 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1766 76 911 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1763 76 912 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1764 76 912 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1765 76 912 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1766 76 912 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1763 76 913 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1764 76 913 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1765 76 913 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1766 76 913 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1763 76 914 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1764 76 914 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1765 76 914 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1766 76 914 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1677 58 1026.501 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"stone_bricks"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1677 59 1026.501 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"stone_bricks"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1677 60 1026.501 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"stone_bricks"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1678 58 1026.501 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"stone_bricks"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1678 59 1026.501 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"stone_bricks"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1678 60 1026.501 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"stone_bricks"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1679 58 1026.501 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"stone_bricks"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1679 59 1026.501 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"stone_bricks"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1679 60 1026.501 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"stone_bricks"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1724 57 968 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1725 57 968 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1726 57 968 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1727 57 968 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1728 57 968 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1724 57 969 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1725 57 969 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1726 57 969 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1727 57 969 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1728 57 969 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1720 57 964 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1720 57 965 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1720 57 966 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1721 57 964 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1721 57 965 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1721 57 966 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1731 57 964 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1731 57 965 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1731 57 966 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1732 57 964 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1732 57 965 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1732 57 966 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"smooth_stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1726 68.98 961 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"stone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1717 66 959.501 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"red_nether_bricks"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1734.499 64 969.499 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"red_nether_bricks"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1774 58 928 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"stone_bricks"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1774 59 928 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"stone_bricks"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1774 60 928 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"stone_bricks"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1775 58 928 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"stone_bricks"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1775 59 928 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"stone_bricks"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1775 60 928 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"stone_bricks"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1776 58 928 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"stone_bricks"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1776 59 928 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"stone_bricks"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block 1776 60 928 {Tags:["FakeWall","FakeShadowWall"],BlockState:{Name:"stone_bricks"},Time:-999999999,NoGravity:1b}
