execute unless entity @s[scores={timer=651..}] run scoreboard players add @s timer 1

#Effects
execute if entity @s[scores={timer=1..585}] run particle minecraft:flame 1518 78 1937 1 1 1 0.05 10 force
execute if entity @s[scores={timer=1}] run tag @a add NoOcarina
execute if entity @s[scores={timer=1}] run tag @a add NoHookshot
execute if entity @s[scores={timer=1}] run stopsound @a music
execute if entity @s[scores={timer=1}] run fill 1509 68 1929 1511 68 1927 minecraft:air replace minecraft:grass
execute if entity @s[scores={timer=1}] run fill 1510 66 1935 1510 66 1935 minecraft:campfire
execute if entity @s[scores={timer=1}] run fill 1511 68 1937 1511 68 1937 minecraft:campfire
execute if entity @s[scores={timer=1}] run fill 1544 81 1922 1544 81 1922 minecraft:campfire
execute if entity @s[scores={timer=1}] run fill 1544 80 1924 1544 80 1924 minecraft:campfire

#Teleport 1
execute if entity @s[scores={timer=1}] run time set 14000
execute if entity @s[scores={timer=1}] run tp @a 1490 69 1933
execute if entity @s[scores={timer=1}] run tag @a remove KakarikoSheik
execute if entity @s[scores={timer=1}] run summon minecraft:zombie 1549 71 1928 {Tags:["WellCutscene","Invisible","Fire"],Rotation:[0f],DeathLootTable:"ocarina_of_time:entities/spike",Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:26}}],ArmorDropChances:[0f,0f,0f,0f],NoAI:1b}
execute if entity @s[scores={timer=1}] run fill 1550 66 1928 1550 66 1928 minecraft:gold_block
execute if entity @s[scores={timer=1}] run fill 1489 70 1933 1489 70 1933 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill 1490 70 1932 1490 70 1932 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill 1491 70 1933 1491 70 1933 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill 1490 70 1934 1490 70 1934 minecraft:barrier

#Teleport 2
execute if entity @s[scores={timer=50}] run fill 1491 70 1934 1489 70 1932 minecraft:air
execute if entity @s[scores={timer=50}] run tp @a 1542 70 1929 -70 ~
execute if entity @s[scores={timer=50}] run fill 1542 71 1930 1542 71 1930 minecraft:barrier
execute if entity @s[scores={timer=50}] run fill 1543 71 1929 1543 71 1929 minecraft:barrier
execute if entity @s[scores={timer=50}] run fill 1542 71 1928 1542 71 1928 minecraft:barrier
execute if entity @s[scores={timer=50}] run fill 1541 71 1929 1541 71 1929 minecraft:barrier

#Just before Bongo Appears
execute if entity @s[scores={timer=5..80}] run tp @e[type=armor_stand,tag=RoofGuy] 1538 78 1920.95
execute if entity @s[scores={timer=5..80}] as @e[type=armor_stand,tag=Beggar2] at @s run tp @s ~ 69 ~
execute if entity @s[scores={timer=5..80}] run tp @e[type=armor_stand,tag=PlatformGuy2] 1532 69 1917
execute if entity @s[scores={timer=5..80}] run tp @s 1544 70 1930
execute if entity @s[scores={timer=80}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"Get back, "},{"selector":"@p"},{"text":"!"}]
execute if entity @s[scores={timer=110}] positioned 1548 71 1928 run playsound minecraft:block.bamboo.fall ambient @a ~ ~ ~ 1 .5
execute if entity @s[scores={timer=110}] positioned 1548 71 1928 run playsound minecraft:block.wood.place ambient @a ~ ~ ~ 1 .5
execute if entity @s[scores={timer=110..130}] as @e[type=zombie,tag=WellCutscene] at @s run tp @s ~-.3 ~1 ~
execute if entity @s[scores={timer=131..140}] as @e[type=zombie,tag=WellCutscene] at @s run tp @s ~-.2 ~.1 ~
execute if entity @s[scores={timer=141..}] as @e[type=zombie,tag=WellCutscene] at @s run tp @s ~-.2 ~-1 ~
execute if entity @s[scores={timer=170}] positioned 1535 68 1929 run playsound minecraft:entity.armor_stand.break ambient @a ~ ~ ~ 1 1
execute if entity @s[scores={timer=170..}] as @e[type=zombie,tag=WellCutscene] at @s run tp @s ~ ~-10 ~
execute if entity @s[scores={timer=170..}] run kill @e[type=zombie,tag=WellCutscene]

execute if entity @s[scores={timer=110..140}] as @e[type=zombie,tag=WellCutscene] at @s run tp @s ~ ~ ~ ~60 ~
execute if entity @s[scores={timer=141..}] as @e[type=zombie,tag=WellCutscene] at @s run tp @s ~ ~ ~ ~-40 ~
execute if entity @s[scores={timer=110..120}] as @e[type=zombie,tag=WellCutscene] at @s run tp @s ~ ~ ~ ~ ~-5
execute if entity @s[scores={timer=121..130}] as @e[type=zombie,tag=WellCutscene] at @s run tp @s ~ ~ ~ ~ ~10
execute if entity @s[scores={timer=131..140}] as @e[type=zombie,tag=WellCutscene] at @s run tp @s ~ ~ ~ ~ ~-10
execute if entity @s[scores={timer=141..150}] as @e[type=zombie,tag=WellCutscene] at @s run tp @s ~ ~ ~ ~ ~10
execute if entity @s[scores={timer=151..160}] as @e[type=zombie,tag=WellCutscene] at @s run tp @s ~ ~ ~ ~ ~-10

execute if entity @s[scores={timer=180}] positioned 1548 71 1930 run playsound minecraft:item.elytra.flying hostile @a ~ ~ ~ .5 .5
execute if entity @s[scores={timer=180}] positioned 1548 71 1930 run data merge entity @s {Pose:{Head:[0f,-30f,0f],RightArm:[0f,0f,10f],LeftArm:[0f,0f,-10f]}}
execute if entity @s[scores={timer=200}] positioned 1548 71 1930 run data merge entity @s {Pose:{Head:[0f,30f,0f]}}
execute if entity @s[scores={timer=220}] positioned 1548 71 1930 run data merge entity @s {Pose:{Head:[-10f,0f,0f],RightArm:[0f,0f,40f],LeftArm:[0f,0f,-40f],RightLeg:[0f,0f,20f],LeftLeg:[0f,0f,-20f]}}

#Bongo Appears
execute if entity @s[scores={timer=220}] at @s run playsound minecraft:entity.player.hurt ambient @a ~ ~ ~ 1 1
execute if entity @s[scores={timer=220}] run tp @s 1549 74 1931 90 ~
execute if entity @s[scores={timer=225}] run tp @s 1546 71 1928 80 ~
execute if entity @s[scores={timer=230..260}] run tp @s ^ ^ ^.8 ~-20 ~
execute if entity @s[scores={timer=261}] run data merge entity @s {NoGravity:0b}
execute if entity @s[scores={timer=261}] run tp @s 1549 72 1929 90 ~
execute if entity @s[scores={timer=262..280}] run data merge entity @s {Motion:[-0.5,1.0,0.0]}

execute if entity @s[scores={timer=290}] run data merge entity @s {Pose:{Head:[40f,0f,0f],RightArm:[-30f,0f,40f],LeftArm:[0f,40f,-40f],RightLeg:[-80f,0f,0f],LeftLeg:[-80f,0f,0f]}}

execute if entity @s[scores={timer=325}] run data merge entity @s {NoGravity:1b}
execute if entity @s[scores={timer=325}] at @s run playsound minecraft:entity.player.hurt ambient @a ~ ~ ~ 1 1
execute if entity @s[scores={timer=325}] run tp @s 1535.0 67.3 1929

execute if entity @s[scores={timer=340}] run fill 1543 71 1930 1541 71 1928 minecraft:air
execute if entity @s[scores={timer=340}] run tp @a 1534 68 1930 180 45
execute if entity @s[scores={timer=340}] run fill 1533 69 1930 1533 69 1930 minecraft:barrier
execute if entity @s[scores={timer=340}] run fill 1534 69 1931 1534 69 1931 minecraft:barrier
execute if entity @s[scores={timer=340}] run fill 1535 69 1930 1535 69 1930 minecraft:barrier
execute if entity @s[scores={timer=340}] run fill 1534 69 1929 1534 69 1929 minecraft:barrier
execute if entity @s[scores={timer=340}] run fill 1544 80 1924 1544 81 1922 minecraft:air replace minecraft:campfire

execute if entity @s[scores={timer=380}] run gamemode spectator @a
execute if entity @s[scores={timer=380..430}] run tp @a 1539 91 1927 -142 50

#Shadow 1
execute if entity @s[scores={timer=400}] run summon minecraft:area_effect_cloud 1547 84 1928 {Tags:["Shadow","Shadow1"],Rotation:[180f],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[scores={timer=401..429}] as @e[type=area_effect_cloud,tag=Shadow1] at @s run tp @s ~-.7 ~ ~-1
execute if entity @s[scores={timer=430}] run kill @e[type=area_effect_cloud,tag=Shadow1]

execute if entity @s[scores={timer=403}] run fill 1545 70 1930 1549 70 1928 minecraft:smooth_stone replace minecraft:black_wool
execute if entity @s[scores={timer=404}] run fill 1549 69 1926 1544 69 1929 minecraft:grass_block replace minecraft:black_wool

execute if entity @s[scores={timer=407}] run fill 1548 69 1924 1543 69 1927 minecraft:grass_block replace minecraft:black_wool
execute if entity @s[scores={timer=408}] run fill 1547 72 1923 1542 72 1926 minecraft:smooth_stone replace minecraft:black_wool
execute if entity @s[scores={timer=408}] run fill 1542 71 1926 1547 70 1923 minecraft:stone_bricks replace minecraft:black_wool
execute if entity @s[scores={timer=408}] run fill 1546 72 1922 1544 72 1919 minecraft:grass_block replace minecraft:black_wool
execute if entity @s[scores={timer=414}] run fill 1543 74 1926 1537 73 1918 minecraft:bricks replace minecraft:black_wool

execute if entity @s[scores={timer=406}] run fill 1543 75 1926 1543 77 1926 minecraft:dark_oak_log
execute if entity @s[scores={timer=406}] run fill 1543 78 1926 1543 78 1926 minecraft:dark_oak_wood[axis=x]
execute if entity @s[scores={timer=406}] run clone 1540 75 1926 1540 79 1926 1542 75 1926
execute if entity @s[scores={timer=407}] run fill 1543 79 1926 1543 79 1926 minecraft:cyan_carpet
execute if entity @s[scores={timer=407}] run clone 1539 78 1926 1543 79 1926 1539 79 1925
execute if entity @s[scores={timer=408}] run clone 1539 78 1926 1543 79 1926 1539 80 1924
execute if entity @s[scores={timer=409}] run clone 1539 78 1926 1543 79 1926 1539 81 1923
execute if entity @s[scores={timer=410}] run clone 1539 78 1926 1543 79 1926 1539 82 1922
execute if entity @s[scores={timer=411}] run clone 1539 78 1926 1543 79 1926 1539 81 1921
execute if entity @s[scores={timer=412}] run clone 1537 78 1926 1543 79 1926 1537 80 1920
execute if entity @s[scores={timer=413}] run clone 1537 78 1926 1543 79 1926 1537 79 1919
execute if entity @s[scores={timer=413}] run clone 1537 75 1925 1537 78 1925 1537 75 1919
execute if entity @s[scores={timer=414}] run clone 1537 78 1926 1543 79 1926 1537 78 1918
execute if entity @s[scores={timer=414}] run clone 1537 75 1926 1543 77 1926 1537 75 1918
execute if entity @s[scores={timer=414}] run clone 1537 75 1918 1537 81 1926 1543 75 1918
execute if entity @s[scores={timer=414}] run fill 1542 74 1921 1542 73 1921 minecraft:black_wool
execute if entity @s[scores={timer=415}] run fill 1538 72 1918 1543 70 1916 minecraft:stone_bricks replace minecraft:black_wool
execute if entity @s[scores={timer=415}] run fill 1540 69 1916 1538 69 1917 minecraft:grass_block replace minecraft:black_wool
execute if entity @s[scores={timer=415}] run clone 1537 70 1907 1537 72 1908 1537 70 1916
execute if entity @s[scores={timer=415}] run fill 1536 72 1916 1535 72 1917 minecraft:grass_block
execute if entity @s[scores={timer=416}] run clone 1528 69 1916 1540 72 1916 1528 69 1915
execute if entity @s[scores={timer=416}] run fill 1541 69 1914 1541 69 1915 minecraft:grass_block
execute if entity @s[scores={timer=417}] run clone 1528 69 1916 1540 72 1916 1528 69 1914
execute if entity @s[scores={timer=418}] run clone 1528 69 1916 1540 72 1916 1528 69 1913
execute if entity @s[scores={timer=419}] run clone 1528 69 1916 1540 72 1916 1528 69 1912
execute if entity @s[scores={timer=420}] run clone 1528 69 1916 1540 72 1916 1528 69 1911
execute if entity @s[scores={timer=421}] run clone 1528 69 1916 1540 72 1916 1528 69 1910
execute if entity @s[scores={timer=422}] run clone 1528 69 1916 1540 72 1916 1528 69 1909
execute if entity @s[scores={timer=423}] run clone 1528 69 1916 1540 72 1916 1528 69 1908
execute if entity @s[scores={timer=424}] run clone 1528 69 1916 1540 72 1916 1528 69 1907
execute if entity @s[scores={timer=425}] run clone 1528 69 1916 1540 72 1916 1528 69 1906
execute if entity @s[scores={timer=425}] run fill 1539 70 1906 1538 70 1906 minecraft:oak_planks
execute if entity @s[scores={timer=426}] run clone 1528 69 1916 1540 72 1916 1528 69 1905
execute if entity @s[scores={timer=426}] run fill 1539 70 1905 1538 70 1905 minecraft:oak_planks
execute if entity @s[scores={timer=427}] run fill 1527 74 1905 1534 73 1904 minecraft:stone_bricks replace minecraft:black_wool
execute if entity @s[scores={timer=427}] run fill 1534 75 1904 1527 75 1904 minecraft:smooth_stone
execute if entity @s[scores={timer=427}] run fill 1534 76 1904 1530 76 1904 minecraft:stone_bricks
execute if entity @s[scores={timer=427}] run clone 1537 77 1904 1537 81 1904 1530 77 1904
execute if entity @s[scores={timer=427}] run clone 1535 77 1904 1536 81 1904 1531 77 1904
execute if entity @s[scores={timer=427}] run clone 1531 80 1904 1532 81 1904 1533 80 1904
execute if entity @s[scores={timer=427}] run fill 1533 79 1904 1534 77 1904 dark_oak_log
execute if entity @s[scores={timer=428}] run clone 1530 80 1904 1533 81 1904 1530 81 1903
execute if entity @s[scores={timer=428}] run fill 1526 75 1903 1529 75 1903 minecraft:grass_block
execute if entity @s[scores={timer=428}] run fill 1530 76 1903 1530 75 1899 minecraft:stone_bricks replace minecraft:black_wool
execute if entity @s[scores={timer=428}] run fill 1530 77 1903 1530 82 1901 minecraft:quartz_pillar replace minecraft:black_wool
execute if entity @s[scores={timer=428}] run fill 1530 77 1900 1530 83 1899 minecraft:dark_oak_log
execute if entity @s[scores={timer=429}] run clone 1530 80 1904 1533 81 1904 1530 82 1902
execute if entity @s[scores={timer=429}] run fill 1525 75 1902 1529 75 1902 minecraft:grass_block
execute if entity @s[scores={timer=430}] run clone 1530 80 1904 1533 81 1904 1530 83 1901
execute if entity @s[scores={timer=430}] run clone 1530 80 1904 1533 81 1904 1530 84 1900
execute if entity @s[scores={timer=430}] run clone 1530 80 1904 1533 81 1904 1530 84 1899
execute if entity @s[scores={timer=430}] run fill 1526 76 1897 1526 76 1897 minecraft:stone_bricks
execute if entity @s[scores={timer=430}] run fill 1525 75 1901 1529 75 1897 minecraft:grass_block replace minecraft:black_wool
execute if entity @s[scores={timer=430}] run fill 1543 72 1921 1543 72 1921 minecraft:magenta_terracotta
execute if entity @s[scores={timer=431}] run gamemode adventure @a
execute if entity @s[scores={timer=431}] run tp @a 1534 68 1930 110 -10

#Shadow 2
execute if entity @s[scores={timer=450}] run summon minecraft:area_effect_cloud 1508 94 1906 {Tags:["Shadow","Shadow2"],Rotation:[180f],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[scores={timer=451..495}] as @e[type=area_effect_cloud,tag=Shadow2] at @s run tp @s ~-.35 ~ ~.5
execute if entity @s[scores={timer=496..516}] as @e[type=area_effect_cloud,tag=Shadow2] at @s run tp @s ~ ~ ~.7
execute if entity @s[scores={timer=517..528}] as @e[type=area_effect_cloud,tag=Shadow2] at @s run tp @s ~.7 ~ ~
execute if entity @s[scores={timer=529..549}] as @e[type=area_effect_cloud,tag=Shadow2] at @s run tp @s ~.1 ~ ~-.6
execute if entity @s[scores={timer=550..586}] as @e[type=area_effect_cloud,tag=Shadow2] at @s run tp @s ~.8 ~ ~
execute if entity @s[scores={timer=587}] run kill @e[type=area_effect_cloud,tag=Shadow2]

execute if entity @s[scores={timer=455}] run summon minecraft:area_effect_cloud 1510.049 94 1903.0 {Tags:["CleanShadow","Shadow3"],Rotation:[180f],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[scores={timer=456..507}] as @e[type=area_effect_cloud,tag=Shadow3] at @s run tp @s ~-.35 ~ ~.5
execute if entity @s[scores={timer=508..528}] as @e[type=area_effect_cloud,tag=Shadow3] at @s run tp @s ~ ~ ~.7
execute if entity @s[scores={timer=529..540}] as @e[type=area_effect_cloud,tag=Shadow3] at @s run tp @s ~.7 ~ ~
execute if entity @s[scores={timer=541..561}] as @e[type=area_effect_cloud,tag=Shadow3] at @s run tp @s ~.1 ~ ~-.6
execute if entity @s[scores={timer=562..598}] as @e[type=area_effect_cloud,tag=Shadow3] at @s run tp @s ~.8 ~ ~
execute if entity @s[scores={timer=602}] run kill @e[type=area_effect_cloud,tag=Shadow3]
execute if entity @s[scores={timer=603}] run clone 1535 68 1933 1538 71 1933 1531 68 1933

#Bongo Attacks
execute if entity @s[scores={timer=496}] run data merge entity @s {Pose:{Head:[0f,0f,0f],LeftArm:[-90f,0f,0f]}}
execute if entity @s[scores={timer=496}] run clone 1533 69 1929 1535 69 1931 1531 69 1929 replace move
execute if entity @s[scores={timer=496}] run gamemode spectator @a
execute if entity @s[scores={timer=496..546}] run tp @a 1479.0 77 1941.0 -111 15

execute if entity @s[scores={timer=547}] run gamemode adventure @a
execute if entity @s[scores={timer=547}] run tp @a 1532 68 1930 90 ~

execute if entity @s[scores={timer=584}] run fill 1510 66 1935 1511 68 1937 minecraft:air replace minecraft:campfire
execute if entity @s[scores={timer=584}] run tp @a 1531 64 1931
execute if entity @s[scores={timer=584}] run effect give @a minecraft:resistance 5 100 true
execute if entity @s[scores={timer=585}] run effect give @a minecraft:wither 2 3 true
execute if entity @s[scores={timer=585}] run data merge entity @s {Rotation:[0f],Pose:{Head:[30f,0f,0f],RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f],RightLeg:[-30f,0f,0f],LeftLeg:[10f,0f,0f]}}
execute if entity @s[scores={timer=585}] run tp @s 1534 68 1929
execute if entity @s[scores={timer=585}] run fill 1534 69 1931 1534 69 1931 minecraft:birch_trapdoor
execute if entity @s[scores={timer=585}] run clone 1531 69 1929 1533 69 1931 1533 68 1930 replace move
execute if entity @s[scores={timer=585}] run clone 1533 68 1930 1535 68 1932 1533 70 1930
execute if entity @s[scores={timer=585}] run time set midnight
execute if entity @s[scores={timer=585}] run weather rain

execute if entity @s[scores={timer=650}] run tp @a 1534 68 1931 180 0

#Jump Cutscene
execute unless entity @s[scores={timer=1..650}] unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @s[scores={timer=1..650}] unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute unless entity @s[tag=Part2] unless entity @s[tag=PlaySong] if entity @a[scores={click=0}] run scoreboard players set @a click 1
execute unless entity @s[tag=Part2] unless entity @s[tag=PlaySong] if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Sheik:","color":"gold"},{"text":" Looks like you're finally coming around..."}]
execute unless entity @s[tag=Part2] unless entity @s[tag=PlaySong] if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute unless entity @s[tag=Part2] unless entity @s[tag=PlaySong] if entity @a[scores={click=3}] run fill 1534 69 1931 1534 69 1931 minecraft:air
execute unless entity @s[tag=Part2] unless entity @s[tag=PlaySong] if entity @a[scores={click=3}] run tp @s 1534 68 1929
execute unless entity @s[tag=Part2] unless entity @s[tag=PlaySong] if entity @a[scores={click=3}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f]}}
execute unless entity @s[tag=Part2] unless entity @s[tag=PlaySong] if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Sheik:","color":"gold"},{"text":" "},{"selector":"@p"},{"text":"... A terrible thing has happened! The "},{"text":"evil shadow spirit ","color":"red"},{"text":"has been released!"}]
execute unless entity @s[tag=Part2] unless entity @s[tag=PlaySong] if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute unless entity @s[tag=Part2] unless entity @s[tag=PlaySong] if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Sheik:","color":"gold"},{"text":" Impa","color":"red"},{"text":", the leader of Kakariko Village, had sealed the evil shadow spirit in the bottom of the well..."}]
execute unless entity @s[tag=Part2] unless entity @s[tag=PlaySong] if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute unless entity @s[tag=Part2] unless entity @s[tag=PlaySong] if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Sheik:","color":"gold"},{"text":" But the force of the evil spirit got so strong, the seal of the well broke, and it escaped into the world!"}]
execute unless entity @s[tag=Part2] unless entity @s[tag=PlaySong] if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute unless entity @s[tag=Part2] unless entity @s[tag=PlaySong] if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Sheik:","color":"gold"},{"text":" I believe Impa has gone to the "},{"text":"Shadow Temple ","color":"light_purple"},{"text":"to seal it again, but...she will be in danger without any help!"}]
execute unless entity @s[tag=Part2] unless entity @s[tag=PlaySong] if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute unless entity @s[tag=Part2] unless entity @s[tag=PlaySong] if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Sheik:","color":"gold"},{"text":" "},{"selector":"@p"},{"text":"! Impa is one of the six Sages. Destroy the evil shadow spirit and save Impa!"}]
execute unless entity @s[tag=Part2] unless entity @s[tag=PlaySong] if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute unless entity @s[tag=Part2] unless entity @s[tag=PlaySong] if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Sheik:","color":"gold"},{"text":" There is an entrance to the Shadow Temple beneath the graveyard behind this village."}]
execute unless entity @s[tag=Part2] unless entity @s[tag=PlaySong] if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute unless entity @s[tag=Part2] unless entity @s[tag=PlaySong] if entity @a[scores={click=15}] run tellraw @a ["",{"text":"Sheik:","color":"gold"},{"text":" The only thing I can do for you is teach you the melody that will lead you to the Shadow Temple..."}]
execute unless entity @s[tag=Part2] unless entity @s[tag=PlaySong] if entity @a[scores={click=15}] run scoreboard players set @a click 16
execute unless entity @s[tag=Part2] unless entity @s[tag=PlaySong] if entity @a[scores={click=17}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"This is the melody that will draw you into the infinite darkness that absorbs even time... Listen to this, the "},{"text":"Nocturne of Shadow","color":"light_purple"},{"text":"!"}]
execute unless entity @s[tag=Part2] unless entity @s[tag=PlaySong] if entity @a[scores={click=17}] run scoreboard players set @a click 18
execute unless entity @s[tag=Part2] unless entity @s[tag=PlaySong] if entity @a[scores={click=18}] run tag @s add PlaySong
execute unless entity @s[tag=Part2] if entity @a[scores={click=18..}] run scoreboard objectives remove click

execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaSaria:1b}}}] at @a run data merge entity @s {PickupDelay:0s}
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaSaria:1b}}}] at @a run data merge entity @s {PickupDelay:0s}
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaZelda:1b}}}] at @a run tp @s ~ ~ ~
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaZelda:1b}}}] at @a run tp @s ~ ~ ~

execute if entity @s[tag=Part2] if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Sheik:","color":"gold"},{"text":" Let me take care of the village! I'm counting on you, "},{"selector":"@p"},{"text":"!"}]
execute if entity @s[tag=Part2] if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @s[tag=Part2] if entity @a[scores={click=5}] at @a run particle minecraft:flash ~ ~ ~ 0 0 0 1 7 force
execute if entity @s[tag=Part2] if entity @a[scores={click=5}] run particle minecraft:crit 1534 69 1929 .4 .7 .4 0 200 force
execute if entity @s[tag=Part2] if entity @a[scores={click=5}] at @a run playsound minecraft:block.anvil.land ambient @a ~ ~ ~ 1 2
execute if entity @s[tag=Part2] if entity @a[scores={click=5}] run tp @s 1544 64 1930
execute if entity @s[tag=Part2] if entity @a[scores={click=5}] run fill 1551 66 1928 1551 66 1928 minecraft:gold_block
execute if entity @s[tag=Part2] if entity @a[scores={click=5}] run fill 1533 68 1930 1535 70 1932 minecraft:air replace minecraft:barrier
execute if entity @s[tag=Part2] if entity @a[scores={click=5}] run tp @e[type=armor_stand,tag=RoofGuy] 1538 81 1920.95
execute if entity @s[tag=Part2] if entity @a[scores={click=5}] run scoreboard players set @e[type=armor_stand,tag=BlueTwin2] text 2
execute if entity @s[tag=Part2] if entity @a[scores={click=5}] run scoreboard players set @e[type=armor_stand,tag=RedTwin2] text 2

execute if entity @s[tag=Part2] if entity @a[scores={click=5..}] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={lifetime=22..}] run scoreboard players set @s lifetime 22
execute if entity @s[tag=Part2] if entity @a[scores={click=5..}] run tag @e[type=area_effect_cloud,tag=Progress] add FinishKakariko
execute if entity @s[tag=Part2] if entity @a[scores={click=5..}] run tag @a remove NoTeleport
execute if entity @s[tag=Part2] if entity @a[scores={click=5..}] run tag @a remove NoHookshot
execute if entity @s[tag=Part2] if entity @a[scores={click=5..}] run tag @a remove KakarikoSheik2
execute if entity @s[tag=Part2] if entity @a[scores={click=5..}] run scoreboard objectives remove click

execute if entity @s[tag=PlaySong] run scoreboard players add @s lifetime 1

execute if entity @s[scores={lifetime=58..}] run tag @e[type=area_effect_cloud,tag=Songs] add Shadows
execute if entity @s[scores={lifetime=58..}] run advancement grant @a only minecraft:_ocarina/shadow
execute if entity @s[scores={lifetime=58..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_11",Count:1b}]}] run tag @s add Part2
execute if entity @s[scores={lifetime=58..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_11",Count:1b}]}] run tag @s remove PlaySong
execute if entity @s[scores={lifetime=58..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_11",Count:1b}]}] run stopsound @a
execute if entity @s[scores={lifetime=58..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_11",Count:1b}]}] run tellraw @a ["",{"text":"You have learned the "},{"text":"Nocturne of Shadow","color":"light_purple"},{"text":"!"}]
execute if entity @s[scores={lifetime=58..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_11",Count:1b}]}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute if entity @s[scores={lifetime=58..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_11",Count:1b}]}] run scoreboard players set @a click 2
execute if entity @s[scores={lifetime=58..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_11",Count:1b}]}] run scoreboard players set @s lifetime 0

execute if entity @s[scores={lifetime=10}] run tag @a add NoTeleport
execute if entity @s[scores={lifetime=10}] run tag @a remove NoOcarina
execute if entity @s[scores={lifetime=10}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.33
execute if entity @s[scores={lifetime=22}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={lifetime=34}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={lifetime=40}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 .8
execute if entity @s[scores={lifetime=46}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.33
execute if entity @s[scores={lifetime=52}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={lifetime=58}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 .95

execute if entity @s[scores={lifetime=83}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.33
execute if entity @s[scores={lifetime=95}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={lifetime=107}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={lifetime=113}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 .8
execute if entity @s[scores={lifetime=119}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.33
execute if entity @s[scores={lifetime=125}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={lifetime=131}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 .95

#Shadow
execute as @e[type=area_effect_cloud,tag=Shadow] at @s positioned ~-2 67 ~-2 run fill ~ ~ ~ ~4 94 ~4 minecraft:black_wool replace #ocarina_of_time:bongo_shadow_1
execute as @e[type=area_effect_cloud,tag=Shadow] at @s positioned ~-2 67 ~-2 run fill ~ ~ ~ ~4 94 ~4 minecraft:black_concrete replace minecraft:dirt
execute as @e[type=area_effect_cloud,tag=Shadow] at @s positioned ~-2 67 ~-2 run fill ~ ~ ~ ~4 94 ~4 minecraft:black_carpet replace #ocarina_of_time:bongo_shadow_2

execute as @e[type=area_effect_cloud,tag=CleanShadow] at @s positioned ~-3 67 ~-3 run fill ~ ~ ~ ~6 94 ~6 minecraft:grass_block replace minecraft:black_wool
execute as @e[type=area_effect_cloud,tag=CleanShadow] at @s positioned ~-3 67 ~-3 run fill ~ ~ ~ ~6 94 ~6 minecraft:dirt replace minecraft:black_concrete
