scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1}] run gamemode spectator @a
execute if entity @s[scores={lifetime=1..70}] run tp @a -103 70 2022 45 22

execute if entity @s[scores={lifetime=30}] run clone -116 43 2027 -108 50 2035 -116 61 2027
execute if entity @s[scores={lifetime=35}] run clone -116 43 2027 -108 50 2035 -116 62 2027
execute if entity @s[scores={lifetime=40}] run clone -116 43 2027 -108 50 2035 -116 63 2027
execute if entity @s[scores={lifetime=45}] run clone -116 43 2027 -108 50 2035 -116 64 2027
execute if entity @s[scores={lifetime=50}] run clone -116 43 2027 -108 50 2035 -116 65 2027
execute if entity @s[scores={lifetime=55}] run clone -116 43 2027 -108 50 2035 -116 66 2027

execute if entity @s[scores={lifetime=71}] run gamemode adventure @a
execute if entity @s[scores={lifetime=71}] run tp @a -116 78 2024 45 0
execute if entity @s[scores={lifetime=71..}] run tag @s remove OpenGate
