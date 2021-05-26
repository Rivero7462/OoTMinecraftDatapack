#Bomb 1
execute if block 2186 36 1967 minecraft:air run scoreboard players add @s timer 1
execute if entity @s[scores={timer=110..}] run fill 2186 36 1967 2186 36 1967 minecraft:tnt
execute if entity @s[scores={timer=110..}] run scoreboard players set @s timer 0

#Bomb 2
execute if block 2198 36 1967 minecraft:air run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=110..}] run fill 2198 36 1967 2198 36 1967 minecraft:tnt
execute if entity @s[scores={lifetime=110..}] run scoreboard players set @s lifetime 0

#Bomb 3
execute if block 2176 35 1934 minecraft:air run scoreboard players add @s time 1
execute if entity @s[scores={time=110..}] run fill 2176 35 1934 2176 35 1934 minecraft:tnt
execute if entity @s[scores={time=110..}] run scoreboard players set @s time 0

#Bomb 4
execute if block 2208 35 1934 minecraft:air run scoreboard players add @s ArrowCount 1
execute if entity @s[scores={ArrowCount=110..}] run fill 2208 35 1934 2208 35 1934 minecraft:tnt
execute if entity @s[scores={ArrowCount=110..}] run scoreboard players set @s ArrowCount 0

#Bomb 5
execute if block 2231 37 1910 minecraft:air run scoreboard players add @s PushBlock 1
execute if entity @s[scores={PushBlock=110..}] run fill 2231 37 1910 2231 37 1910 minecraft:tnt
execute if entity @s[scores={PushBlock=110..}] run scoreboard players set @s PushBlock 0

#Bomb 6
execute if block 2236 37 1910 minecraft:air run scoreboard players add @s nearbyBomb 1
execute if entity @s[scores={nearbyBomb=110..}] run fill 2236 37 1910 2236 37 1910 minecraft:tnt
execute if entity @s[scores={nearbyBomb=110..}] run scoreboard players set @s nearbyBomb 0

#Bomb 7
execute if block 2149 35 1939 minecraft:air run scoreboard players add @s CuccoCount 1
execute if entity @s[scores={CuccoCount=110..}] run fill 2149 35 1939 2149 35 1939 minecraft:tnt
execute if entity @s[scores={CuccoCount=110..}] run scoreboard players set @s CuccoCount 0

#Bomb Bunch
######################
#Bomb 8
execute if block 2144 35 1933 minecraft:air run scoreboard players add @s RedRupee 1
execute if entity @s[scores={RedRupee=110..}] run fill 2144 35 1933 2144 35 1933 minecraft:tnt
execute if entity @s[scores={RedRupee=110..}] run scoreboard players set @s RedRupee 0

#Bomb 9
execute if block 2144 35 1931 minecraft:air run scoreboard players add @s Boomerang 1
execute if entity @s[scores={Boomerang=110..}] run fill 2144 35 1931 2144 35 1931 minecraft:tnt
execute if entity @s[scores={Boomerang=110..}] run scoreboard players set @s Boomerang 0

#Bomb 10
execute if block 2144 35 1929 minecraft:air run scoreboard players add @s BlueRupee 1
execute if entity @s[scores={BlueRupee=110..}] run fill 2144 35 1929 2144 35 1929 minecraft:tnt
execute if entity @s[scores={BlueRupee=110..}] run scoreboard players set @s BlueRupee 0

#Bomb 11
execute if block 2144 35 1927 minecraft:air run scoreboard players add @s BlueRupee2 1
execute if entity @s[scores={BlueRupee2=110..}] run fill 2144 35 1927 2144 35 1927 minecraft:tnt
execute if entity @s[scores={BlueRupee2=110..}] run scoreboard players set @s BlueRupee2 0

#Bomb 12
execute if block 2144 35 1925 minecraft:air run scoreboard players add @s BombCount 1
execute if entity @s[scores={BombCount=110..}] run fill 2144 35 1925 2144 35 1925 minecraft:tnt
execute if entity @s[scores={BombCount=110..}] run scoreboard players set @s BombCount 0

#Bomb 13
execute if block 2144 35 1923 minecraft:air run scoreboard players add @s Shock 1
execute if entity @s[scores={Shock=110..}] run fill 2144 35 1923 2144 35 1923 minecraft:tnt
execute if entity @s[scores={Shock=110..}] run scoreboard players set @s Shock 0

#Bomb 14
execute if block 2148 35 1933 minecraft:air run scoreboard players add @s Slime 1
execute if entity @s[scores={Slime=110..}] run fill 2148 35 1933 2148 35 1933 minecraft:tnt
execute if entity @s[scores={Slime=110..}] run scoreboard players set @s Slime 0

#Bomb 15
execute if block 2148 35 1931 minecraft:air run scoreboard players add @s Zpos 1
execute if entity @s[scores={Zpos=110..}] run fill 2148 35 1931 2148 35 1931 minecraft:tnt
execute if entity @s[scores={Zpos=110..}] run scoreboard players set @s Zpos 0

#Bomb 16
execute if block 2148 35 1929 minecraft:air run scoreboard players add @s DekuStickTimer 1
execute if entity @s[scores={DekuStickTimer=110..}] run fill 2148 35 1929 2148 35 1929 minecraft:tnt
execute if entity @s[scores={DekuStickTimer=110..}] run scoreboard players set @s DekuStickTimer 0

#Bomb 17
execute if block 2148 35 1927 minecraft:air run scoreboard players add @s PurpleRupee 1
execute if entity @s[scores={PurpleRupee=110..}] run fill 2148 35 1927 2148 35 1927 minecraft:tnt
execute if entity @s[scores={PurpleRupee=110..}] run scoreboard players set @s PurpleRupee 0

#Bomb 18
execute if block 2148 35 1925 minecraft:air run scoreboard players add @s DigTimer 1
execute if entity @s[scores={DigTimer=110..}] run fill 2148 35 1925 2148 35 1925 minecraft:tnt
execute if entity @s[scores={DigTimer=110..}] run scoreboard players set @s DigTimer 0

#Bomb 19
execute if block 2148 35 1923 minecraft:air run scoreboard players add @s FakeSlingshot 1
execute if entity @s[scores={FakeSlingshot=110..}] run fill 2148 35 1923 2148 35 1923 minecraft:tnt
execute if entity @s[scores={FakeSlingshot=110..}] run scoreboard players set @s FakeSlingshot 0

######################

#Bomb 20
execute if block 2140 35 1947 minecraft:air run scoreboard players add @s GreenRupee 1
execute if entity @s[scores={GreenRupee=110..}] run fill 2140 35 1947 2140 35 1947 minecraft:tnt
execute if entity @s[scores={GreenRupee=110..}] run scoreboard players set @s GreenRupee 0

#Bomb 21
execute if block 2152 35 1947 minecraft:air run scoreboard players add @s Xpos 1
execute if entity @s[scores={Xpos=110..}] run fill 2152 35 1947 2152 35 1947 minecraft:tnt
execute if entity @s[scores={Xpos=110..}] run scoreboard players set @s Xpos 0

#Bomb 22
execute if block 2152 50 1951 minecraft:air run scoreboard players add @s Ypos 1
execute if entity @s[scores={Ypos=110..}] run fill 2152 50 1951 2152 50 1951 minecraft:tnt
execute if entity @s[scores={Ypos=110..}] run scoreboard players set @s Ypos 0

#Bomb 23
execute if block 2152 50 1959 minecraft:air run scoreboard players add @s HeartContainer 1
execute if entity @s[scores={HeartContainer=110..}] run fill 2152 50 1959 2152 50 1959 minecraft:tnt
execute if entity @s[scores={HeartContainer=110..}] run scoreboard players set @s HeartContainer 0

#Bomb 24
execute if block 2140 50 1959 minecraft:air run scoreboard players add @s HeartPiece 1
execute if entity @s[scores={HeartPiece=110..}] run fill 2140 50 1959 2140 50 1959 minecraft:tnt
execute if entity @s[scores={HeartPiece=110..}] run scoreboard players set @s HeartPiece 0

#Bomb 25
execute if block 2140 50 1951 minecraft:air run scoreboard players add @s Hearts 1
execute if entity @s[scores={Hearts=110..}] run fill 2140 50 1951 2140 50 1951 minecraft:tnt
execute if entity @s[scores={Hearts=110..}] run scoreboard players set @s Hearts 0

#Bomb 26
execute if block 2232 49 1958 minecraft:air run scoreboard players add @s Hookshot 1
execute if entity @s[scores={Hookshot=110..}] run fill 2232 49 1958 2232 49 1958 minecraft:tnt
execute if entity @s[scores={Hookshot=110..}] run scoreboard players set @s Hookshot 0
#
#Bomb 27
execute if block 2171 13 1912 minecraft:air run scoreboard players add @s HoverTimer 1
execute if entity @s[scores={HoverTimer=110..}] run fill 2171 13 1912 2171 13 1912 minecraft:tnt
execute if entity @s[scores={HoverTimer=110..}] run scoreboard players set @s HoverTimer 0

#Bomb 28
execute if block 2171 13 1882 minecraft:air run scoreboard players add @s HugeRupee 1
execute if entity @s[scores={HugeRupee=110..}] run fill 2171 13 1882 2171 13 1882 minecraft:tnt
execute if entity @s[scores={HugeRupee=110..}] run scoreboard players set @s HugeRupee 0

#Bomb 29
execute if block 2141 13 1882 minecraft:air run scoreboard players add @s HugeRupee2 1
execute if entity @s[scores={HugeRupee2=110..}] run fill 2141 13 1882 2141 13 1882 minecraft:tnt
execute if entity @s[scores={HugeRupee2=110..}] run scoreboard players set @s HugeRupee2 0

#Bomb 30
execute if block 2141 13 1912 minecraft:air run scoreboard players add @s RedRupee2 1
execute if entity @s[scores={RedRupee2=110..}] run fill 2141 13 1912 2141 13 1912 minecraft:tnt
execute if entity @s[scores={RedRupee2=110..}] run scoreboard players set @s RedRupee2 0

#Bomb Wall Block
execute if entity @e[type=armor_stand,tag=Bomb,x=2145,y=35,z=1933,dx=2,dz=0,scores={timer=109..}] run tag @s add CavernBlock
execute if entity @e[type=item,nbt={Item:{tag:{display:{Name:"\"Bomb\""}}}},x=2145,y=35,z=1933,dx=2,dz=0,scores={timer=99..}] run tag @s add CavernBlock

function ocarina_of_time:moving_things/dodongo_cavern/bomb_block
