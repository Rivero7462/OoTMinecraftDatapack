#Day/Night
execute unless entity @a[scores={time=13001..23000}] run function ocarina_of_time:moving_things/castle_town/people/morning_people
execute if entity @a[scores={time=13001..23000}] run function ocarina_of_time:moving_things/castle_town/people/night_people

#Mamamu Yan Dog Quest
execute if entity @s[tag=MamamuYan] at @s if entity @a[scores={time=13001..23000}] unless entity @e[type=wolf,tag=Dog,distance=..3] unless entity @s[tag=Prize] run scoreboard players set @s text 2
execute if entity @s[tag=MamamuYan] at @s unless entity @s[tag=Prize] if entity @a[scores={time=13001..23000}] if entity @e[type=wolf,tag=Dog,distance=..3] unless entity @s[tag=Richard] run scoreboard players set @s text 3
execute if entity @s[tag=MamamuYan] at @s unless entity @s[tag=Prize] if entity @a[scores={time=13001..23000}] if entity @e[type=wolf,tag=Richard,distance=..3] run scoreboard players set @s text 4

#Shooting Gallery
execute if entity @s[tag=ShootingGallery] if entity @a[tag=ShootingGame] run function ocarina_of_time:moving_things/castle_town/minigames/shooting_minigame
