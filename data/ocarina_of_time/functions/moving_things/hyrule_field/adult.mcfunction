#Tree
fill 804 62 2073 814 77 2083 minecraft:air replace minecraft:oak_leaves
fill 804 62 2073 814 77 2083 minecraft:air replace minecraft:barrier
fill 804 62 2073 814 77 2083 minecraft:air replace minecraft:dark_oak_log
fill 809 61 2078 809 61 2078 minecraft:grass_block
execute if block 806 77 2048 minecraft:air run clone 804 37 2051 814 53 2061 801 61 2043

#Adult Bridge
fill 969 67 1920 978 77 1908 minecraft:air replace minecraft:iron_bars
execute unless block 969 64 1914 minecraft:coarse_dirt run clone 982 52 1921 991 49 1910 969 64 1909
fill 969 68 1909 978 77 1908 minecraft:air
fill 966 71 1910 981 71 1910 minecraft:air replace minecraft:fire
fill 969 67 1906 978 74 1906 minecraft:black_wool
fill 969 66 1907 978 66 1908 minecraft:andesite

#Owls
execute if entity @a[gamemode=adventure] run kill @e[type=armor_stand,tag=OwlStand1]
execute if entity @a[gamemode=adventure] run kill @e[type=armor_stand,tag=OwlStand2]
execute if entity @a[gamemode=adventure] run kill @e[type=armor_stand,tag=OwlStand3]
execute if entity @a[gamemode=adventure] run kill @e[type=armor_stand,tag=OwlStand4]

#Fences
execute unless block 886 61 2166 minecraft:oak_fence run clone 844 58 2134 886 52 2165 844 61 2135 filtered minecraft:oak_fence
#2
execute unless block 994 69 2101 minecraft:oak_fence run clone 940 58 2065 994 53 2101 940 69 2065 filtered minecraft:oak_fence

#Running Man
kill @e[type=armor_stand,tag=RunningMan]

#Boulders
#1
execute unless block 759 65 2051 minecraft:gold_block unless block 760 65 2051 minecraft:gold_block run fill 764 70 2065 765 71 2066 minecraft:dead_horn_coral_block
execute unless block 759 65 2051 minecraft:gold_block unless block 760 65 2051 minecraft:gold_block run fill 760 65 2051 760 65 2051 minecraft:gold_block
execute if block 759 65 2051 minecraft:air unless blocks 764 70 2065 765 71 2066 759 64 2056 all run fill 764 70 2065 765 71 2066 minecraft:air
execute if block 759 65 2051 minecraft:air unless blocks 764 70 2065 765 71 2066 759 64 2056 all run fill 759 65 2051 759 65 2051 minecraft:gold_block
#2
execute unless block 759 65 2052 minecraft:gold_block unless block 760 65 2052 minecraft:gold_block run fill 766 69 2034 767 70 2035 minecraft:dead_horn_coral_block
execute unless block 759 65 2052 minecraft:gold_block unless block 760 65 2052 minecraft:gold_block run fill 760 65 2052 760 65 2052 minecraft:gold_block
execute if block 759 65 2052 minecraft:air unless blocks 766 69 2034 767 70 2035 759 64 2056 all run fill 766 69 2034 767 70 2035 minecraft:air
execute if block 759 65 2052 minecraft:air unless blocks 766 69 2034 767 70 2035 759 64 2056 all run fill 759 65 2052 759 65 2052 minecraft:gold_block
#3
execute unless block 759 65 2053 minecraft:gold_block unless block 760 65 2053 minecraft:gold_block run fill 751 69 2063 752 70 2064 minecraft:dead_horn_coral_block
execute unless block 759 65 2053 minecraft:gold_block unless block 760 65 2053 minecraft:gold_block run fill 760 65 2053 760 65 2053 minecraft:gold_block
execute if block 759 65 2053 minecraft:air unless blocks 751 69 2063 752 70 2064 759 64 2056 all run fill 751 69 2063 752 70 2064 minecraft:air
execute if block 759 65 2053 minecraft:air unless blocks 751 69 2063 752 70 2064 759 64 2056 all run fill 759 65 2053 759 65 2053 minecraft:gold_block
