#Doors
execute unless block 1537 76 1897 minecraft:iron_door run clone 1537 72 1897 1537 73 1897 1537 76 1897
execute unless block 1522 76 1903 minecraft:iron_door run clone 1537 72 1897 1537 73 1897 1522 76 1903
execute unless block 1529 77 1902 minecraft:air run clone 1530 72 1897 1529 73 1897 1529 76 1902
execute if block 1522 76 1903 minecraft:dark_oak_door run clone 1538 72 1897 1537 73 1897 1522 76 1903
execute unless block 1523 77 1903 minecraft:air run clone 1538 72 1897 1537 73 1897 1522 76 1903
execute if block 1543 73 1921 minecraft:dark_oak_door run clone 1537 72 1891 1538 73 1891 1543 73 1921

#Crates
#1
execute unless block 1567 71 1954 minecraft:oak_planks run clone 1543 60 1946 1545 61 1948 1566 71 1953
#2
execute unless block 1555 75 1935 minecraft:oak_planks run clone 1542 60 1945 1544 61 1948 1554 75 1934
#3
execute unless block 1555 70 1924 minecraft:oak_planks run clone 1542 60 1945 1544 61 1948 1554 70 1923
#4
execute unless block 1512 73 1911 minecraft:oak_planks run clone 1542 60 1946 1545 61 1948 1511 73 1910
#5
execute unless block 1528 68 1919 minecraft:oak_planks run clone 1542 60 1946 1544 61 1948 1527 68 1918
#6
fill 1555 69 1920 1552 69 1919 minecraft:grass_block
fill 1556 70 1918 1551 71 1920 minecraft:air replace minecraft:structure_void
fill 1556 70 1918 1551 71 1920 minecraft:air replace minecraft:oak_planks
#7
fill 1517 72 1911 1520 72 1910 minecraft:grass_block
fill 1516 73 1912 1521 74 1910 minecraft:air
#8
fill 1531 67 1928 1534 67 1927 minecraft:grass_block
fill 1530 68 1929 1535 69 1927 minecraft:air
#9
fill 1539 69 1906 1538 69 1903 minecraft:grass_block
fill 1540 70 1902 1538 71 1907 minecraft:air
#10
fill 1512 69 1938 1513 69 1937 minecraft:grass_block
fill 1511 70 1936 1513 71 1939 minecraft:air
#11
fill 1515 73 1952 1515 73 1954 minecraft:grass_block
fill 1514 73 1954 1514 73 1952 minecraft:grass_block
fill 1513 74 1950 1515 75 1955 minecraft:air replace minecraft:structure_void
fill 1513 74 1950 1515 75 1955 minecraft:air replace minecraft:oak_planks
#12
fill 1533 71 1934 1532 71 1935 minecraft:grass_block
fill 1531 72 1933 1534 73 1935 minecraft:air
#13
fill 1528 75 1898 1529 75 1897 minecraft:grass_block
fill 1527 76 1896 1529 77 1899 minecraft:air

#House
fill 1531 77 1936 1541 81 1944 minecraft:air replace minecraft:green_carpet
execute unless block 1531 76 1936 minecraft:air run fill 1531 76 1936 1541 81 1944 minecraft:air
fill 1535 71 1936 1532 71 1936 minecraft:grass_block
execute unless block 1540 75 1936 minecraft:oak_fence run clone 1531 59 1935 1541 62 1943 1531 72 1936

#Bazaar
fill 1523 80 1903 1524 82 1907 minecraft:air

#Item Shop
execute unless block 1530 79 1903 minecraft:quartz_pillar run clone 1530 69 1901 1530 70 1903 1530 79 1901

#Flower
fill 1616 75 1943 1616 75 1943 minecraft:air
fill 1619 73 1952 1619 73 1952 minecraft:dandelion

#Grave
fill 1616 74 1942 1616 74 1942 minecraft:grass_block

#Well
fill 1550 52 1929 1550 48 1931 minecraft:air replace minecraft:cobblestone
execute unless entity @a[tag=DrainWell] unless block 1565 43 1937 minecraft:gold_block run fill 1546 69 1928 1552 48 1932 water replace minecraft:air
execute unless entity @a[tag=DrainWell] unless block 1565 43 1937 minecraft:gold_block run fill 1546 48 1930 1546 69 1930 ladder[facing=east,waterlogged=true]
execute unless block 1546 70 1927 minecraft:oak_fence run clone 1550 61 1917 1554 64 1921 1546 70 1927

#Npcs
execute as @e[type=armor_stand,tag=BlueTwin2] at @s if block 1550 66 1942 minecraft:gold_block run tp @s 1509.7 63 1930.0 148 0
execute as @e[type=armor_stand,tag=RedTwin2] at @s if block 1550 66 1942 minecraft:gold_block run tp @s 1535 55 1922 -45 ~
execute if block 1550 66 1942 minecraft:gold_block run tp @e[type=armor_stand,tag=Shikashi2] 1521 70 1954
execute as @e[type=armor_stand,tag=BeardGuy2] at @s if block 1550 66 1942 minecraft:gold_block run tp @s 1554 65 1922
execute if block 1550 66 1942 minecraft:gold_block run tp @e[type=armor_stand,tag=Honey2] 1567 76 1931
execute if block 1550 66 1942 minecraft:gold_block run tp @e[type=armor_stand,tag=Darling2] 1567 76 1931
execute if block 1550 66 1942 minecraft:gold_block run tp @e[type=armor_stand,tag=PlatformGuy2] 1532 69 1917
execute as @e[type=armor_stand,tag=Beggar2] at @s if block 1550 66 1942 minecraft:gold_block run tp @s ~ 69 ~
execute as @e[type=armor_stand,tag=ItemShopOwner] at @s if block 1550 66 1942 minecraft:gold_block run tp @s ~ 52 ~
execute as @e[type=villager,tag=ItemRupeeConvert] at @s if block 1550 66 1942 minecraft:gold_block run tp @s ~ 52 ~
execute as @e[type=armor_stand,tag=Ichiro1] at @s if block 1550 66 1942 minecraft:gold_block run tp @s ~ 56 ~
fill 1530 57 1896 1530 57 1896 minecraft:air
fill 1527 56 1891 1527 59 1891 minecraft:barrier
execute as @e[type=armor_stand,tag=GuruGuru2] at @s if block 1550 66 1942 minecraft:gold_block run tp @s ~ 43 ~
execute as @e[type=armor_stand,tag=GuruGuru] at @s if block 1550 66 1942 minecraft:gold_block run tp @s ~ 49 ~
execute as @e[type=armor_stand,tag=MamamuYan2] at @s if block 1550 66 1942 minecraft:gold_block run tp @s ~ 55 ~
execute as @e[type=armor_stand,tag=MamamuYanHair2] at @s if block 1550 66 1942 minecraft:gold_block run tp @s ~ 55 ~
execute as @e[type=armor_stand,tag=VillageTalonSleep1] if block 1550 66 1942 minecraft:gold_block run tp @s 1543.8 55.1 1917.0
execute as @e[type=armor_stand,tag=VillageTalonSleep2] if block 1550 66 1942 minecraft:gold_block run tp @s 1544 55.8 1917.0
execute as @e[type=armor_stand,tag=VillageTalon] at @s if block 1550 66 1942 minecraft:gold_block run tp @s ~ 55 ~

#Ladders
fill 1556 70 1918 1556 71 1918 minecraft:ladder[facing=west]

#Bean Spot
fill 1613 74 1942 1613 74 1942 minecraft:farmland[moisture=0]
execute if entity @a[x=1613,y=75,z=1942,dx=0,dz=0] unless entity @e[type=area_effect_cloud,tag=BeanSpot,tag=PlantBean5] if entity @a[nbt={SelectedItem:{tag:{MagicBean:1b}}}] positioned 1613 75 1942 run function ocarina_of_time:items/magic_bean
execute if block 1613 75 1942 minecraft:pumpkin_stem[age=6] as @e[type=area_effect_cloud,tag=BeanSpot] unless entity @s[tag=PlantBean5] run tag @s add PlantBean5

#Gold Skulltula
execute unless block 1611 74 1942 minecraft:gold_block as @e[type=turtle,tag=FakeBug,x=1612,y=75,z=1941,dx=2,dz=2] run summon minecraft:zombie 1613 75 1944 {Tags:["GoldSkull6","GoldSkull","Floor","Invisible"],Rotation:[0f],NoAI:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:10}}],Health:7,Invulnerable:1b,PersistenceRequired:1b,IsBaby:1b,Silent:1,DeathLootTable:"ocarina_of_time:entities/gold_skulltula",ArmorDropChances:[0f,0f,0f,0f]}
execute unless block 1611 74 1942 minecraft:gold_block as @e[type=turtle,tag=FakeBug,x=1612,y=75,z=1941,dx=2,dz=2] run fill 1611 74 1942 1611 74 1942 minecraft:gold_block
execute unless block 1611 74 1942 minecraft:gold_block as @e[type=turtle,tag=FakeBug,x=1612,y=75,z=1941,dx=2,dz=2] run kill @s
