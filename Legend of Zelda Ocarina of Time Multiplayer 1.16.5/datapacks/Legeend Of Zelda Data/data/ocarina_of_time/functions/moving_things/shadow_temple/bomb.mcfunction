#Bomb 1
execute if block 1690 66 961 minecraft:air run scoreboard players add @s timer 1
execute if entity @s[scores={timer=110..}] run fill 1690 66 961 1690 66 961 minecraft:tnt
execute if entity @s[scores={timer=110..}] run scoreboard players set @s timer 0

#Bomb 2
execute if block 1690 66 967 minecraft:air run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=110..}] run fill 1690 66 967 1690 66 967 minecraft:tnt
execute if entity @s[scores={lifetime=110..}] run scoreboard players set @s lifetime 0

#Bomb 3
execute if block 1605 58 923 minecraft:air run scoreboard players add @s time 1
execute if entity @s[scores={time=110..}] run fill 1605 58 923 1605 58 923 minecraft:tnt
execute if entity @s[scores={time=110..}] run scoreboard players set @s time 0

#Bomb 4
execute if block 1606 58 925 minecraft:air run scoreboard players add @s ArrowCount 1
execute if entity @s[scores={ArrowCount=110..}] run fill 1606 58 925 1606 58 925 minecraft:tnt
execute if entity @s[scores={ArrowCount=110..}] run scoreboard players set @s ArrowCount 0

#Bomb 5
execute if block 1604 58 925 minecraft:air run scoreboard players add @s PushBlock 1
execute if entity @s[scores={PushBlock=110..}] run fill 1604 58 925 1604 58 925 minecraft:tnt
execute if entity @s[scores={PushBlock=110..}] run scoreboard players set @s PushBlock 0

#Bomb 6
execute if block 1605 58 927 minecraft:air run scoreboard players add @s nearbyBomb 1
execute if entity @s[scores={nearbyBomb=110..}] run fill 1605 58 927 1605 58 927 minecraft:tnt
execute if entity @s[scores={nearbyBomb=110..}] run scoreboard players set @s nearbyBomb 0

#Bomb 7
execute if block 1604 58 928 minecraft:air run scoreboard players add @s CuccoCount 1
execute if entity @s[scores={CuccoCount=110..}] run fill 1604 58 928 1604 58 928 minecraft:tnt
execute if entity @s[scores={CuccoCount=110..}] run scoreboard players set @s CuccoCount 0

#Bomb 8
execute if block 1603 58 927 minecraft:air run scoreboard players add @s RedRupee 1
execute if entity @s[scores={RedRupee=110..}] run fill 1603 58 927 1603 58 927 minecraft:tnt
execute if entity @s[scores={RedRupee=110..}] run scoreboard players set @s RedRupee 0

#Bomb 9
execute if block 1503 66 912 minecraft:air run scoreboard players add @s Boomerang 1
execute if entity @s[scores={Boomerang=110..}] run fill 1503 66 912 1503 66 912 minecraft:tnt
execute if entity @s[scores={Boomerang=110..}] run scoreboard players set @s Boomerang 0

#Bomb 10
execute if block 1503 66 900 minecraft:air run scoreboard players add @s BlueRupee 1
execute if entity @s[scores={BlueRupee=110..}] run fill 1503 66 900 1503 66 900 minecraft:tnt
execute if entity @s[scores={BlueRupee=110..}] run scoreboard players set @s BlueRupee 0
