execute unless entity @a[scores={timer=1..}] run fill 1635 78 1949 1635 78 1950 minecraft:barrier
execute unless entity @a[scores={timer=1..}] run fill 1634 78 1948 1634 78 1948 minecraft:barrier
execute unless entity @a[scores={timer=1..}] run fill 1633 78 1950 1633 78 1949 minecraft:barrier
execute unless entity @a[scores={timer=1..}] run fill 1634 78 1951 1634 78 1951 minecraft:barrier
execute unless entity @a[scores={timer=1..}] run fill 1638 75 1949 1638 75 1949 minecraft:gold_block
execute unless entity @a[scores={timer=1..}] run tag @a add NoOcarina
execute unless entity @a[scores={timer=1..}] run tp @a 1634 77 1950.0
execute if entity @a[tag=SunSong1] run scoreboard players add @a timer 1

execute if entity @a[scores={timer=20}] run summon lightning_bolt 1654 82 1937
execute if entity @a[scores={timer=50}] run summon lightning_bolt 1654 82 1962
execute if entity @a[scores={timer=80}] run playsound minecraft:entity.generic.explode block @a 1641 78 1949 100 2
execute if entity @a[scores={timer=80}] run fill 1642 76 1951 1642 76 1951 minecraft:grass_block
execute if entity @a[scores={timer=80}] run particle explosion 1641 77 1949 1 1 1 5 2
execute if entity @a[scores={timer=80}] run fill 1651 71 1953 1651 71 1953 minecraft:stone_bricks
execute if entity @a[scores={timer=80}] run fill 1640 77 1951 1642 79 1948 minecraft:air
execute if entity @a[scores={timer=80}] run fill 1642 76 1948 1642 76 1948 minecraft:grass_block
execute if entity @a[scores={timer=80}] run summon lightning_bolt 1641 77 1950.0
execute if entity @a[scores={timer=80}] run fill 1641 76 1951 1640 76 1948 minecraft:grass_block replace minecraft:dirt

execute if entity @a[scores={timer=90}] run tag @a remove NoOcarina
execute if entity @a[scores={timer=90}] run fill 1633 78 1951 1635 78 1948 minecraft:air
execute if entity @a[scores={timer=90}] run tag @a add SunSong2
execute if entity @a[scores={timer=90}] run tag @a remove SunSong1
execute if entity @a[scores={timer=90}] run scoreboard players set @a timer 0
