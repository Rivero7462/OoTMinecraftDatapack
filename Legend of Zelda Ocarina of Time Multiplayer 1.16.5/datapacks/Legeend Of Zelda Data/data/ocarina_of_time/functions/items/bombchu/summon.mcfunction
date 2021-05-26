execute unless entity @a[tag=BowlingGame] run scoreboard players remove @a BombchuCount 1
execute if entity @a[tag=BowlingGame] run scoreboard players remove @a MinigameBombchus 1
execute rotated ~ 0 run summon minecraft:armor_stand ^ ^-.6 ^.6 {Tags:["Bombchu"],Small:1b,Invisible:0b,NoGravity:1,ArmorItems:[{},{},{},{id:cobblestone,Count:1,tag:{CustomModelData:61}}]}
