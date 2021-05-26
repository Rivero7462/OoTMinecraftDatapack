summon minecraft:falling_block -490 20 2002 {Tags:["FakeWall","FakeGanonWall"],BlockState:{Name:"mossy_stone_bricks"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block -491 20 2002 {Tags:["FakeWall","FakeGanonWall"],BlockState:{Name:"mossy_stone_bricks"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block -492 20 2002 {Tags:["FakeWall","FakeGanonWall"],BlockState:{Name:"mossy_stone_bricks"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block -490 21 2002 {Tags:["FakeWall","FakeGanonWall"],BlockState:{Name:"mossy_stone_bricks"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block -491 21 2002 {Tags:["FakeWall","FakeGanonWall"],BlockState:{Name:"mossy_stone_bricks"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block -492 21 2002 {Tags:["FakeWall","FakeGanonWall"],BlockState:{Name:"mossy_stone_bricks"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block -490 22 2002 {Tags:["FakeWall","FakeGanonWall"],BlockState:{Name:"mossy_stone_bricks"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block -491 22 2002 {Tags:["FakeWall","FakeGanonWall"],BlockState:{Name:"mossy_stone_bricks"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block -492 22 2002 {Tags:["FakeWall","FakeGanonWall"],BlockState:{Name:"mossy_stone_bricks"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block -491 23 2002 {Tags:["FakeWall","FakeGanonWall"],BlockState:{Name:"mossy_stone_bricks"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block -598 24 1974 {Tags:["FakeWall","FakeGanonWall"],BlockState:{Name:"chiseled_polished_blackstone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block -598 22 1974 {Tags:["FakeWall","FakeGanonWall"],BlockState:{Name:"chiseled_polished_blackstone"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block -598 21 1975 {Tags:["FakeWall","FakeGanonWall"],BlockState:{Name:"polished_andesite"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block -598 21 1974 {Tags:["FakeWall","FakeGanonWall"],BlockState:{Name:"polished_andesite"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block -598 21 1973 {Tags:["FakeWall","FakeGanonWall"],BlockState:{Name:"polished_andesite"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block -598 22 1975 {Tags:["FakeWall","FakeGanonWall"],BlockState:{Name:"polished_andesite"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block -598 23 1973 {Tags:["FakeWall","FakeGanonWall"],BlockState:{Name:"polished_andesite"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block -598 23 1975 {Tags:["FakeWall","FakeGanonWall"],BlockState:{Name:"polished_andesite"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block -598 23 1974 {Tags:["FakeWall","FakeGanonWall"],BlockState:{Name:"polished_andesite"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block -598 22 1973 {Tags:["FakeWall","FakeGanonWall"],BlockState:{Name:"polished_andesite"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block -598 24 1975 {Tags:["FakeWall","FakeGanonWall"],BlockState:{Name:"polished_andesite"},Time:-999999999,NoGravity:1b}
summon minecraft:falling_block -598 24 1973 {Tags:["FakeWall","FakeGanonWall"],BlockState:{Name:"polished_andesite"},Time:-999999999,NoGravity:1b}

fill -430 30 1893 -430 30 1892 minecraft:barrier
fill -429 30 1892 -429 30 1891 minecraft:barrier
fill -428 30 1891 -427 30 1891 minecraft:barrier
fill -427 30 1890 -426 30 1890 minecraft:barrier
fill -426 30 1889 -426 30 1889 minecraft:barrier
fill -426 31 1888 -426 31 1887 minecraft:barrier
fill -427 31 1887 -427 31 1886 minecraft:barrier
fill -428 31 1886 -428 31 1885 minecraft:barrier
fill -429 31 1881 -429 31 1879 minecraft:barrier
fill -429 32 1878 -429 32 1876 minecraft:barrier
fill -428 32 1876 -428 32 1875 minecraft:barrier
fill -427 32 1875 -427 32 1874 minecraft:barrier
fill -426 32 1874 -426 32 1873 minecraft:barrier
fill -425 32 1873 -425 32 1872 minecraft:barrier
fill -440 30 1893 -441 30 1893 minecraft:barrier
fill -441 30 1892 -442 30 1892 minecraft:barrier
fill -443 31 1892 -444 31 1892 minecraft:barrier
fill -444 31 1891 -445 31 1891 minecraft:barrier
fill -445 31 1890 -445 31 1888 minecraft:barrier
fill -444 31 1888 -444 31 1887 minecraft:barrier
fill -443 31 1887 -443 31 1885 minecraft:barrier
fill -442 30 1885 -442 30 1884 minecraft:barrier
fill -441 30 1884 -441 30 1882 minecraft:barrier
fill -440 30 1882 -440 30 1881 minecraft:barrier

#Enemies
effect give @e[type=bat,tag=Keese67] invisibility 10000 0 true
effect give @e[type=bat,tag=Keese68] invisibility 10000 0 true
effect give @e[type=bat,tag=Keese69] invisibility 10000 0 true
data merge entity @e[type=zombie,tag=Skulltula25,limit=1] {ArmorItems:[{},{},{},{}]}

#Invisible Chests
execute unless block -556 32 2020 minecraft:gold_block run fill -550 31 2019 -550 31 2019 minecraft:grindstone[face=floor,facing=east]
