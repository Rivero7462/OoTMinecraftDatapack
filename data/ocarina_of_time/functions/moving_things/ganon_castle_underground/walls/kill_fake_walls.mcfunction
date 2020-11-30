kill @e[type=falling_block,tag=FakeGanonWall]

fill -430 30 1893 -430 30 1892 minecraft:white_stained_glass
fill -429 30 1892 -429 30 1891 minecraft:white_stained_glass
fill -428 30 1891 -427 30 1891 minecraft:white_stained_glass
fill -427 30 1890 -426 30 1890 minecraft:white_stained_glass
fill -426 30 1889 -426 30 1889 minecraft:white_stained_glass
fill -426 31 1888 -426 31 1887 minecraft:white_stained_glass
fill -427 31 1887 -427 31 1886 minecraft:white_stained_glass
fill -428 31 1886 -428 31 1885 minecraft:white_stained_glass
fill -429 31 1881 -429 31 1879 minecraft:white_stained_glass
fill -429 32 1878 -429 32 1876 minecraft:white_stained_glass
fill -428 32 1876 -428 32 1875 minecraft:white_stained_glass
fill -427 32 1875 -427 32 1874 minecraft:white_stained_glass
fill -426 32 1874 -426 32 1873 minecraft:white_stained_glass
fill -425 32 1873 -425 32 1872 minecraft:white_stained_glass
fill -440 30 1893 -441 30 1893 minecraft:white_stained_glass
fill -441 30 1892 -442 30 1892 minecraft:white_stained_glass
fill -443 31 1892 -444 31 1892 minecraft:white_stained_glass
fill -444 31 1891 -445 31 1891 minecraft:white_stained_glass
fill -445 31 1890 -445 31 1888 minecraft:white_stained_glass
fill -444 31 1888 -444 31 1887 minecraft:white_stained_glass
fill -443 31 1887 -443 31 1885 minecraft:white_stained_glass
fill -442 30 1885 -442 30 1884 minecraft:white_stained_glass
fill -441 30 1884 -441 30 1882 minecraft:white_stained_glass
fill -440 30 1882 -440 30 1881 minecraft:white_stained_glass

#Enemies
effect clear @e[type=bat,tag=Keese67] invisibility
effect clear @e[type=bat,tag=Keese68] invisibility
effect clear @e[type=bat,tag=Keese69] invisibility
data merge entity @e[type=zombie,tag=Skulltula25,limit=1] {ArmorItems:[{},{},{},{id:brown_mushroom_block,Count:1b}]}

#Invisible Chests
execute unless block -556 32 2020 minecraft:gold_block unless block -550 31 2019 minecraft:chest run clone -556 32 2019 -556 32 2019 -550 31 2019
