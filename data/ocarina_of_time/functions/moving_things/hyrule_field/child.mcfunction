#Tree
execute unless block 809 62 2078 minecraft:dark_oak_log run clone 804 38 2073 814 53 2083 804 62 2073
fill 801 62 2043 811 77 2053 minecraft:air replace minecraft:oak_leaves
fill 801 62 2043 811 77 2053 minecraft:air replace minecraft:barrier
fill 801 62 2043 811 77 2053 minecraft:air replace minecraft:dark_oak_log
fill 806 61 2048 806 61 2048 minecraft:grass_block

#Bridge Morning
execute unless entity @a[scores={time=13001..23000}] unless entity @a[tag=ZeldaCastle] unless entity @a[tag=ZeldaCastle2] if block 981 71 1910 minecraft:fire run fill 981 71 1910 981 71 1910 minecraft:air
execute unless entity @a[scores={time=13001..23000}] unless entity @a[tag=ZeldaCastle] unless entity @a[tag=ZeldaCastle2] if block 966 71 1910 minecraft:fire run fill 966 71 1910 966 71 1910 minecraft:air
execute unless entity @a[scores={time=13001..23000}] unless entity @a[tag=ZeldaCastle] unless entity @a[tag=ZeldaCastle2] if block 965 61 1910 minecraft:redstone_block run fill 965 61 1910 964 61 1910 minecraft:air
execute unless entity @a[scores={time=13001..23000}] unless entity @a[tag=ZeldaCastle] unless entity @a[tag=ZeldaCastle2] if block 964 61 1910 minecraft:air run fill 964 61 1910 964 61 1910 minecraft:redstone_block
execute unless entity @a[scores={time=13001..23000}] unless entity @a[tag=ZeldaCastle] unless entity @a[tag=ZeldaCastle2] run fill 969 65 1917 978 64 1910 minecraft:water
execute unless entity @a[scores={time=13001..23000}] unless entity @a[tag=ZeldaCastle] unless entity @a[tag=ZeldaCastle2] if block 969 67 1906 minecraft:black_wool run fill 969 67 1906 978 74 1906 minecraft:air
execute unless entity @a[scores={time=13001..23000}] unless entity @a[tag=ZeldaCastle] unless entity @a[tag=ZeldaCastle2] if block 966 71 1910 minecraft:fire run fill 969 66 1907 978 66 1908 minecraft:smooth_stone
execute if block 978 66 1915 minecraft:air run fill 964 61 1910 964 61 1910 minecraft:air

#Bridge Night
execute if entity @a[scores={time=13001..23000}] unless entity @a[tag=ZeldaCastle2] run fill 969 66 1910 978 66 1920 minecraft:air
execute if entity @a[scores={time=13001..23000}] unless entity @a[tag=ZeldaCastle2] run fill 968 67 1920 978 77 1910 minecraft:air
execute if entity @a[scores={time=13001..23000}] unless entity @a[tag=ZeldaCastle2] run fill 981 71 1910 981 71 1910 minecraft:fire
execute if entity @a[scores={time=13001..23000}] unless entity @a[tag=ZeldaCastle2] run fill 966 71 1910 966 71 1910 minecraft:fire
execute if entity @a[scores={time=13001..23000}] unless entity @a[tag=ZeldaCastle2] run fill 965 61 1910 964 61 1910 minecraft:air
execute if entity @a[scores={time=13001..23000}] unless entity @a[tag=ZeldaCastle2] run fill 965 61 1910 965 61 1910 minecraft:redstone_block
execute if entity @a[scores={time=13001..23000}] unless entity @a[tag=ZeldaCastle2] run fill 969 65 1917 978 64 1910 minecraft:water
execute if entity @a[scores={time=13001..23000}] unless entity @a[tag=ZeldaCastle2] run fill 969 67 1906 978 74 1906 minecraft:air
execute if entity @a[scores={time=13001..23000}] unless entity @a[tag=ZeldaCastle2] run fill 969 66 1907 978 66 1908 minecraft:smooth_stone

#Fences
execute if block 886 61 2166 minecraft:oak_fence run fill 886 61 2166 844 67 2135 minecraft:air replace minecraft:oak_fence
#2
execute if block 994 69 2101 minecraft:oak_fence run fill 994 69 2101 940 74 2065 minecraft:air replace minecraft:oak_fence

#Boulders
fill 760 65 2051 760 65 2053 minecraft:air
fill 764 70 2065 765 71 2066 minecraft:air
fill 766 69 2034 767 70 2035 minecraft:air
fill 751 69 2063 752 70 2064 minecraft:air
