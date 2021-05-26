#Doors
execute unless block 1537 76 1897 minecraft:dark_oak_door run clone 1537 72 1895 1537 73 1895 1537 76 1897
execute unless block 1543 73 1921 minecraft:dark_oak_door run clone 1537 72 1895 1537 73 1895 1543 73 1921
execute if block 1529 77 1902 minecraft:air if entity @a[scores={time=13001..23000}] run clone 1530 72 1895 1529 73 1895 1529 76 1902
execute unless block 1529 77 1902 minecraft:air unless entity @a[scores={time=13001..23000}] run clone 1530 72 1897 1529 73 1897 1529 76 1902
execute unless block 1522 76 1903 minecraft:iron_door if entity @a[scores={time=13001..23000}] run clone 1538 72 1893 1537 73 1893 1522 76 1903
execute if block 1522 76 1903 minecraft:iron_door unless entity @a[scores={time=13001..23000}] run clone 1538 72 1895 1537 73 1895 1522 76 1903
execute if block 1543 73 1921 minecraft:iron_door run clone 1537 72 1895 1538 73 1895 1543 73 1921

fill 1544 74 1921 1544 74 1921 minecraft:air
#Signs
fill 1544 70 1930 1544 70 1930 minecraft:air

fill 1527 78 1890 1527 78 1890 minecraft:air

#Crates
#1
fill 1567 70 1954 1566 70 1953 minecraft:grass_block
fill 1566 71 1955 1568 72 1953 minecraft:air
#2
fill 1555 74 1936 1556 74 1935 minecraft:grass_block
fill 1554 75 1934 1556 76 1937 minecraft:air
#3
fill 1555 69 1924 1556 69 1925 minecraft:grass_block
fill 1554 70 1923 1556 71 1926 minecraft:air
#4
fill 1512 72 1911 1513 72 1910 minecraft:grass_block
fill 1511 73 1912 1514 74 1910 minecraft:air
#5
fill 1528 67 1919 1529 67 1918 minecraft:grass_block
fill 1527 68 1920 1529 69 1918 minecraft:air
#6
execute unless block 1555 70 1919 minecraft:oak_planks run clone 1542 60 1951 1547 61 1949 1551 70 1918
fill 1555 70 1921 1552 70 1921 minecraft:oak_fence[north=false,east=true,west=true]
#7
execute unless block 1517 73 1911 minecraft:oak_planks run clone 1542 60 1950 1547 61 1952 1516 73 1910
#8
execute unless block 1531 68 1928 minecraft:oak_planks run clone 1542 60 1950 1547 61 1952 1530 68 1927
#9
execute unless block 1539 70 1903 minecraft:oak_planks run clone 1543 60 1953 1545 61 1958 1538 70 1902
#10
execute unless block 1512 70 1937 minecraft:oak_planks run clone 1542 60 1945 1544 61 1948 1511 70 1936
#11
execute unless block 1514 74 1951 minecraft:oak_planks run clone 1542 60 1953 1544 61 1958 1513 74 1950
#12
execute unless block 1532 72 1934 minecraft:oak_planks run clone 1542 60 1945 1545 61 1947 1531 72 1933
#13
execute unless block 1528 76 1897 minecraft:oak_planks run clone 1542 60 1945 1544 61 1948 1527 76 1896
#Pots
#1
fill 1516 76 1900 1518 76 1900 minecraft:air
execute unless entity @a[tag=KakarikoSheik2] run fill 1518 75 1900 1516 75 1900 minecraft:grass_block
#2
fill 1532 73 1905 1534 73 1905 minecraft:air
execute unless entity @a[tag=KakarikoSheik2] run fill 1532 72 1905 1534 72 1905 minecraft:grass_block
#3
fill 1545 73 1922 1544 73 1922 minecraft:air
execute unless entity @a[tag=KakarikoSheik2] run fill 1545 72 1922 1544 72 1922 minecraft:grass_block

#House
execute unless block 1531 72 1936 minecraft:cyan_terracotta run clone 1526 47 1930 1536 56 1938 1531 72 1936

#Bazaar
execute unless block 1523 81 1903 minecraft:gold_block run clone 1523 69 1902 1524 71 1906 1523 80 1903

#Item Shop
execute unless block 1530 79 1903 minecraft:lime_terracotta run clone 1530 66 1901 1530 67 1903 1530 79 1901

#Flower
fill 1616 75 1943 1616 75 1943 minecraft:dandelion
fill 1619 73 1952 1619 73 1952 minecraft:air

#Grave
fill 1616 74 1942 1616 74 1942 minecraft:air

#Well
fill 1550 52 1929 1550 48 1931 minecraft:cobblestone
fill 1546 69 1928 1552 48 1932 air replace minecraft:water
fill 1546 48 1930 1546 69 1930 ladder[facing=east,waterlogged=false]
execute if block 1550 66 1928 minecraft:gold_block run fill 1546 70 1927 1550 73 1931 minecraft:air replace minecraft:oak_fence
execute unless block 1550 66 1928 minecraft:gold_block unless block 1546 70 1927 minecraft:oak_fence run clone 1550 61 1917 1554 64 1921 1546 70 1927

#Honey and Darling
scoreboard players add @e[type=armor_stand,tag=Honey2] timer 1
execute as @e[type=armor_stand,tag=Honey2] if entity @s[scores={timer=1..3}] run tp @s 1567.75 81 1931.75 225 ~
execute as @e[type=armor_stand,tag=Darling2] if entity @e[type=armor_stand,tag=Honey2,scores={timer=1..3}] run tp @s 1568.25 81 1931.25 45 ~
execute as @e[type=armor_stand,tag=Honey2] if entity @s[scores={timer=4..6}] run tp @s 1567.50 81 1931.50 281 ~
execute as @e[type=armor_stand,tag=Darling2] if entity @e[type=armor_stand,tag=Honey2,scores={timer=4..6}] run tp @s 1568.50 81 1931.50 90 ~
execute as @e[type=armor_stand,tag=Honey2] if entity @s[scores={timer=7..9}] run tp @s 1567.75 81 1931.25 315 ~
execute as @e[type=armor_stand,tag=Darling2] if entity @e[type=armor_stand,tag=Honey2,scores={timer=7..9}] run tp @s 1568.25 81 1931.75 135 ~
execute as @e[type=armor_stand,tag=Honey2] if entity @s[scores={timer=10..12}] run tp @s 1568.0 81 1931.0 360 ~
execute as @e[type=armor_stand,tag=Darling2] if entity @e[type=armor_stand,tag=Honey2,scores={timer=10..12}] run tp @s 1568.0 81 1932.0 180 ~
execute as @e[type=armor_stand,tag=Honey2] if entity @s[scores={timer=13..15}] run tp @s 1568.25 81 1931.25 45 ~
execute as @e[type=armor_stand,tag=Darling2] if entity @e[type=armor_stand,tag=Honey2,scores={timer=13..15}] run tp @s 1567.75 81 1931.75 225 ~
execute as @e[type=armor_stand,tag=Honey2] if entity @s[scores={timer=16..18}] run tp @s 1568.50 81 1931.50 90 ~
execute as @e[type=armor_stand,tag=Darling2] if entity @e[type=armor_stand,tag=Honey2,scores={timer=16..18}] run tp @s 1567.50 81 1931.50 270 ~
execute as @e[type=armor_stand,tag=Honey2] if entity @s[scores={timer=19..21}] run tp @s 1568.25 81 1931.75 135 ~
execute as @e[type=armor_stand,tag=Darling2] if entity @e[type=armor_stand,tag=Honey2,scores={timer=19..21}] run tp @s 1567.75 81 1931.25 315 ~
execute as @e[type=armor_stand,tag=Honey2] if entity @s[scores={timer=22..24}] run tp @s 1568.0 81 1932.0 180 ~
execute as @e[type=armor_stand,tag=Darling2] if entity @e[type=armor_stand,tag=Honey2,scores={timer=22..24}] run tp @s 1568.0 81 1931.0 360 ~
execute as @e[type=armor_stand,tag=Honey2] if entity @s[scores={timer=24..}] run scoreboard players set @s timer 0

#Npcs
execute as @e[type=armor_stand,tag=Grog] if block 1550 66 1942 minecraft:gold_block run tp @s 1509 62 1928
execute as @e[type=armor_stand,tag=Mutoh] if block 1550 66 1942 minecraft:gold_block run tp @s 1509 62 1928
execute as @e[type=armor_stand,tag=BlueTwin2] at @s unless entity @s[tag=NightText] if block 1550 66 1942 minecraft:gold_block run tp @s 1509.7 68 1930.0 148 0
execute as @e[type=armor_stand,tag=BlueTwin2,tag=NightText] at @s if block 1550 66 1942 minecraft:gold_block run tp @s 1509.7 63 1930.0 0 0
execute as @e[type=armor_stand,tag=RedTwin2] at @s unless entity @s[tag=NightText] if block 1550 66 1942 minecraft:gold_block run tp @s 1508.6 68 1928.2 -29 ~
execute as @e[type=armor_stand,tag=RedTwin2,tag=NightText] at @s if block 1550 66 1942 minecraft:gold_block run tp @s 1535 59 1922 -45 ~
execute as @e[type=armor_stand,tag=Shikashi2] at @s unless entity @s[tag=NightText] if block 1550 66 1942 minecraft:gold_block run tp @s 1521 70 1948.0
execute as @e[type=armor_stand,tag=Shikashi2,tag=NightText] at @s if block 1550 66 1942 minecraft:gold_block run tp @s 1541 59.06250 1918
execute as @e[type=armor_stand,tag=BeardGuy2] at @s unless entity @s[tag=NightText] if block 1550 66 1942 minecraft:gold_block run tp @s 1554 70 1922 45 ~
execute as @e[type=armor_stand,tag=BeardGuy2,tag=NightText] at @s if block 1550 66 1942 minecraft:gold_block run tp @s 1538 59 1926 -165 ~
execute if block 1550 66 1942 minecraft:gold_block unless entity @a[tag=KakarikoSheik2] run tp @e[type=armor_stand,tag=PlatformGuy2] 1531 85 1917.2
execute unless entity @a[tag=KakarikoSheik2] as @e[type=armor_stand,tag=Beggar2] at @s if block 1550 66 1942 minecraft:gold_block run tp @s ~ 72.5 ~
execute as @e[type=armor_stand,tag=ItemShopOwner] at @s if block 1550 66 1942 minecraft:gold_block run tp @s ~ 56 ~
execute as @e[type=villager,tag=ItemRupeeConvert] at @s if block 1550 66 1942 minecraft:gold_block run tp @s ~ 56 ~
execute as @e[type=armor_stand,tag=Ichiro1] at @s if block 1550 66 1942 minecraft:gold_block run tp @s ~ 52 ~
clone 1533 57 1896 1533 57 1896 1530 57 1896
fill 1527 56 1891 1527 59 1891 minecraft:air
execute as @e[type=armor_stand,tag=GuruGuru] at @s if block 1550 66 1942 minecraft:gold_block run tp @s ~ 43 ~
execute as @e[type=armor_stand,tag=GuruGuru2] at @s if block 1550 66 1942 minecraft:gold_block run tp @s ~ 49 ~
execute as @e[type=armor_stand,tag=MamamuYan2] at @s if block 1550 66 1942 minecraft:gold_block run tp @s ~ 59.06250 ~
execute as @e[type=armor_stand,tag=MamamuYanHair2] at @s if block 1550 66 1942 minecraft:gold_block run tp @s ~ 60.2 ~
execute as @e[type=armor_stand,tag=VillageTalonSleep1] unless block 1542 55 1916 minecraft:gold_block if block 1550 66 1942 minecraft:gold_block run tp @s 1543.8 58.1 1917.0
execute as @e[type=armor_stand,tag=VillageTalonSleep2] unless block 1542 55 1916 minecraft:gold_block if block 1550 66 1942 minecraft:gold_block run tp @s 1544 58.8 1917.0
execute as @e[type=armor_stand,tag=VillageTalonSleep1] if block 1542 55 1916 minecraft:gold_block if block 1550 66 1942 minecraft:gold_block run tp @s 1543.8 55.1 1917.0
execute as @e[type=armor_stand,tag=VillageTalonSleep2] if block 1542 55 1916 minecraft:gold_block if block 1550 66 1942 minecraft:gold_block run tp @s 1544 55.8 1917.0
execute as @e[type=armor_stand,tag=VillageTalon] at @s if block 1542 55 1916 minecraft:gold_block unless block 1540 55 1916 minecraft:gold_block if block 1550 66 1942 minecraft:gold_block run tp @s ~ 59.56250 ~

#Ladders
fill 1556 70 1918 1556 71 1918 minecraft:ladder[facing=west]

#Bean Spot
execute as @e[type=area_effect_cloud,tag=BeanSpot] at @a run function ocarina_of_time:moving_things/kakariko_village/bean_spot
fill 1613 74 1942 1613 74 1942 minecraft:grass_block
