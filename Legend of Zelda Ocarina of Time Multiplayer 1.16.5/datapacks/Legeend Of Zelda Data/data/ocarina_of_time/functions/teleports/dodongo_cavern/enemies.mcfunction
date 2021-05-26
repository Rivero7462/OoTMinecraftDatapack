#Lizalfos
#1
execute unless block 2269 37 1930 minecraft:stone_pressure_plate run kill @e[type=area_effect_cloud,tag=LizPlatform]
#2
execute unless block 2276 50 1941 minecraft:stone_pressure_plate run kill @e[type=area_effect_cloud,tag=LizPlatform]

#Beamos
#1
execute unless entity @e[type=zombie,tag=Beamos1] run summon minecraft:zombie 2192 35 1934 {Tags:["Beamos1","Beamos","Invisible"],NoAI:1b,Invulnerable:1b,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/beamos",ArmorItems:[{},{},{},{id:emerald_block,Count:1b}],ArmorDropChances:[0f,0f,0f,0f]}
#2
execute unless entity @e[type=zombie,tag=Beamos2] run summon minecraft:zombie 2176 35 1948 {Tags:["Beamos2","Beamos","Invisible"],NoAI:1b,Invulnerable:1b,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/beamos",ArmorItems:[{},{},{},{id:emerald_block,Count:1b}],ArmorDropChances:[0f,0f,0f,0f]}
#3
execute unless entity @e[type=zombie,tag=Beamos3] run summon minecraft:zombie 2208 35 1948 {Tags:["Beamos3","Beamos","Invisible"],NoAI:1b,Invulnerable:1b,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/beamos",ArmorItems:[{},{},{},{id:emerald_block,Count:1b}],ArmorDropChances:[0f,0f,0f,0f]}

#Baby Dodongo
#1
execute unless entity @e[type=zombie,tag=BabyDodongo1] run summon minecraft:zombie 2233 34 1955 {Tags:["BabyDodongo1","BabyDodongo","Invisible"],DeathLootTable:"ocarina_of_time:entities/dodongo",IsBaby:1b,Health:0.1f,Attributes:[{Name:generic.movement_speed,Base:0.14},{Name:generic.attack_damage,Base:1}],Silent:1b,PersistenceRequired:1,Invulnerable:1b,NoGravity:1b,ArmorDropChances:[0f,0f,0f,0f]}
#2
execute unless entity @e[type=zombie,tag=BabyDodongo2] run summon minecraft:zombie 2235 34 1956 {Tags:["BabyDodongo2","BabyDodongo","Invisible"],DeathLootTable:"ocarina_of_time:entities/dodongo",IsBaby:1b,Health:0.1f,Attributes:[{Name:generic.movement_speed,Base:0.14},{Name:generic.attack_damage,Base:1}],Silent:1b,PersistenceRequired:1,Invulnerable:1b,NoGravity:1b,ArmorDropChances:[0f,0f,0f,0f]}
#3
execute unless entity @e[type=zombie,tag=BabyDodongo3] run summon minecraft:zombie 2235 34 1958 {Tags:["BabyDodongo3","BabyDodongo","Invisible"],DeathLootTable:"ocarina_of_time:entities/dodongo",IsBaby:1b,Health:0.1f,Attributes:[{Name:generic.movement_speed,Base:0.14},{Name:generic.attack_damage,Base:1}],Silent:1b,PersistenceRequired:1,Invulnerable:1b,NoGravity:1b,ArmorDropChances:[0f,0f,0f,0f]}
#4
execute unless entity @e[type=zombie,tag=BabyDodongo4] run summon minecraft:zombie 2245 34 1956 {Tags:["BabyDodongo4","BabyDodongo","Invisible"],DeathLootTable:"ocarina_of_time:entities/dodongo",IsBaby:1b,Health:0.1f,Attributes:[{Name:generic.movement_speed,Base:0.14},{Name:generic.attack_damage,Base:1}],Silent:1b,PersistenceRequired:1,Invulnerable:1b,NoGravity:1b,ArmorDropChances:[0f,0f,0f,0f]}
#5
execute unless entity @e[type=zombie,tag=BabyDodongo5] run summon minecraft:zombie 2249 34 1951 {Tags:["BabyDodongo5","BabyDodongo","Invisible"],DeathLootTable:"ocarina_of_time:entities/dodongo",IsBaby:1b,Health:0.1f,Attributes:[{Name:generic.movement_speed,Base:0.14},{Name:generic.attack_damage,Base:1}],Silent:1b,PersistenceRequired:1,Invulnerable:1b,NoGravity:1b,ArmorDropChances:[0f,0f,0f,0f]}
#6
execute unless entity @e[type=zombie,tag=BabyDodongo6] run summon minecraft:zombie 2251 34 1953 {Tags:["BabyDodongo6","BabyDodongo","Invisible"],DeathLootTable:"ocarina_of_time:entities/dodongo",IsBaby:1b,Health:0.1f,Attributes:[{Name:generic.movement_speed,Base:0.14},{Name:generic.attack_damage,Base:1}],Silent:1b,PersistenceRequired:1,Invulnerable:1b,NoGravity:1b,ArmorDropChances:[0f,0f,0f,0f]}
#7
execute unless entity @e[type=zombie,tag=BabyDodongo7] run summon minecraft:zombie 2271 49 1954 {Tags:["BabyDodongo7","BabyDodongo","Invisible"],DeathLootTable:"ocarina_of_time:entities/dodongo",IsBaby:1b,Health:0.1f,Attributes:[{Name:generic.movement_speed,Base:0.14},{Name:generic.attack_damage,Base:1}],Silent:1b,PersistenceRequired:1,Invulnerable:1b,NoGravity:1b,ArmorDropChances:[0f,0f,0f,0f]}
#8
execute unless entity @e[type=zombie,tag=BabyDodongo8] run summon minecraft:zombie 2271 49 1956 {Tags:["BabyDodongo8","BabyDodongo","Invisible"],DeathLootTable:"ocarina_of_time:entities/dodongo",IsBaby:1b,Health:0.1f,Attributes:[{Name:generic.movement_speed,Base:0.14},{Name:generic.attack_damage,Base:1}],Silent:1b,PersistenceRequired:1,Invulnerable:1b,NoGravity:1b,ArmorDropChances:[0f,0f,0f,0f]}
#9
execute unless entity @e[type=zombie,tag=BabyDodongo9] run summon minecraft:zombie 2280 49 1955 {Tags:["BabyDodongo9","BabyDodongo","Invisible"],DeathLootTable:"ocarina_of_time:entities/dodongo",IsBaby:1b,Health:0.1f,Attributes:[{Name:generic.movement_speed,Base:0.14},{Name:generic.attack_damage,Base:1}],Silent:1b,PersistenceRequired:1,Invulnerable:1b,NoGravity:1b,ArmorDropChances:[0f,0f,0f,0f]}

#Armos
#1
execute unless entity @e[type=zombie,tag=Armos1] run summon minecraft:zombie 2148 50 1955 {Tags:["Armos1","Armos","Invisible","Resist","East"],Attributes:[{Name:generic.movement_speed,Base:0.0},{Name:generic.attack_damage,Base:1}],Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:dead_bubble_coral,Count:1b,tag:{CustomModelData:1}}],ArmorDropChances:[0f,0f,0f,0f],NoAI:1b,Health:1,DeathLootTable:"ocarina_of_time:entities/armos"}
#2
execute unless entity @e[type=zombie,tag=Armos2] run summon minecraft:zombie 2146 50 1953 {Tags:["Armos2","Armos","Invisible","Resist","North"],Attributes:[{Name:generic.movement_speed,Base:0.0},{Name:generic.attack_damage,Base:1}],Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:dead_bubble_coral,Count:1b,tag:{CustomModelData:1}}],ArmorDropChances:[0f,0f,0f,0f],NoAI:1b,Health:1,DeathLootTable:"ocarina_of_time:entities/armos"}
#3
execute unless entity @e[type=zombie,tag=Armos3] run summon minecraft:zombie 2144 50 1955 {Tags:["Armos3","Armos","Invisible","Resist","West"],Attributes:[{Name:generic.movement_speed,Base:0.0},{Name:generic.attack_damage,Base:1}],Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:dead_bubble_coral,Count:1b,tag:{CustomModelData:1}}],ArmorDropChances:[0f,0f,0f,0f],NoAI:1b,Health:1,DeathLootTable:"ocarina_of_time:entities/armos"}
#4 Not Aggressive
execute unless entity @e[type=zombie,tag=Armos4] run summon minecraft:zombie 2146 50 1957 {Tags:["Armos4","Armos","Invisible","South"],Attributes:[{Name:generic.movement_speed,Base:0.0},{Name:generic.attack_damage,Base:0}],Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:dead_bubble_coral,Count:1b,tag:{CustomModelData:1}}],Invulnerable:1b,ArmorDropChances:[0f,0f,0f,0f],Health:1,DeathLootTable:"ocarina_of_time:entities/nothing"}
#5 Not Aggressive
execute unless entity @e[type=zombie,tag=Armos5] run summon minecraft:zombie 2267 36 1954 {Tags:["Armos5","Armos","Invisible","South"],Attributes:[{Name:generic.movement_speed,Base:0.0},{Name:generic.attack_damage,Base:0}],Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:dead_bubble_coral,Count:1b,tag:{CustomModelData:1}}],Invulnerable:1b,ArmorDropChances:[0f,0f,0f,0f],Health:1,DeathLootTable:"ocarina_of_time:entities/nothing"}
#6 Not Aggressive
execute unless entity @e[type=zombie,tag=Armos6] run summon minecraft:zombie 2271 36 1954 {Tags:["Armos6","Armos","Invisible","South"],Attributes:[{Name:generic.movement_speed,Base:0.0},{Name:generic.attack_damage,Base:0}],Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:dead_bubble_coral,Count:1b,tag:{CustomModelData:1}}],Invulnerable:1b,ArmorDropChances:[0f,0f,0f,0f],Health:1,DeathLootTable:"ocarina_of_time:entities/nothing"}
#7
execute unless entity @e[type=zombie,tag=Armos7] run summon minecraft:zombie 2146 35 1957 {Tags:["Armos7","Armos","Invisible","Resist","North"],Attributes:[{Name:generic.movement_speed,Base:0.0},{Name:generic.attack_damage,Base:1}],Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:dead_bubble_coral,Count:1b,tag:{CustomModelData:1}}],ArmorDropChances:[0f,0f,0f,0f],NoAI:1b,Health:1,DeathLootTable:"ocarina_of_time:entities/armos"}
#8 Not Aggressive
execute unless entity @e[type=zombie,tag=Armos8] run summon minecraft:zombie 2147 35 1958 {Tags:["Armos8","Armos","Invisible","East"],Attributes:[{Name:generic.movement_speed,Base:0.0},{Name:generic.attack_damage,Base:0}],Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:dead_bubble_coral,Count:1b,tag:{CustomModelData:1}}],Invulnerable:1b,ArmorDropChances:[0f,0f,0f,0f],Health:1,DeathLootTable:"ocarina_of_time:entities/nothing"}
#9 Not Aggressive
execute unless entity @e[type=zombie,tag=Armos9] run summon minecraft:zombie 2145 35 1958 {Tags:["Armos9","Armos","Invisible","West"],Attributes:[{Name:generic.movement_speed,Base:0.0},{Name:generic.attack_damage,Base:0}],Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:dead_bubble_coral,Count:1b,tag:{CustomModelData:1}}],Invulnerable:1b,ArmorDropChances:[0f,0f,0f,0f],Health:1,DeathLootTable:"ocarina_of_time:entities/nothing"}
#10
execute unless entity @e[type=zombie,tag=Armos10] run summon minecraft:zombie 2226 38 1852 {Tags:["Armos10","Armos","Invisible","Resist","South"],Attributes:[{Name:generic.movement_speed,Base:0.0},{Name:generic.attack_damage,Base:1}],Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:dead_bubble_coral,Count:1b,tag:{CustomModelData:1}}],ArmorDropChances:[0f,0f,0f,0f],NoAI:1b,Health:1,DeathLootTable:"ocarina_of_time:entities/armos"}

#Keese
#1
fill 2270 39 1942 2270 39 1942 minecraft:barrier
execute unless entity @e[type=bat,tag=Keese1] run summon minecraft:bat 2270.75 38 1942 {Tags:["Keese1","Keese","Hanging"],BatFlags:1b,Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}
#2
fill 2268 39 1940 2268 39 1940 minecraft:barrier
execute unless entity @e[type=bat,tag=Keese2] run summon minecraft:bat 2268.25 38 1940 {Tags:["Keese2","Keese","Hanging"],BatFlags:1b,Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}
#3
execute unless entity @e[type=bat,tag=Keese3] run summon minecraft:bat 2151 53 1957 {Tags:["Keese3","Keese","Flame"],Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}
#4
execute unless entity @e[type=bat,tag=Keese4] run summon minecraft:bat 2142 56 1957 {Tags:["Keese4","Keese","Flame"],Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}
#5
execute unless entity @e[type=bat,tag=Keese5] run summon minecraft:bat 2186 52 1940 {Tags:["Keese5","Keese","Flame"],Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}
#6
execute unless entity @e[type=bat,tag=Keese6] run summon minecraft:bat 2198 52 1940 {Tags:["Keese6","Keese","Flame"],Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}
#7
fill 2249 37 1978 2249 37 1978 minecraft:barrier
execute unless entity @e[type=bat,tag=Keese7] run summon minecraft:bat 2249 36 1978.75 {Tags:["Keese7","Keese","Hanging"],BatFlags:1b,Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}
#8
fill 2247 37 1978 2247 37 1978 minecraft:barrier
execute unless entity @e[type=bat,tag=Keese8] run summon minecraft:bat 2247 36 1978.75 {Tags:["Keese8","Keese","Hanging"],BatFlags:1b,Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}
#9
fill 2246 37 1978 2246 37 1978 minecraft:barrier
execute unless entity @e[type=bat,tag=Keese9] run summon minecraft:bat 2246 36 1978.75 {Tags:["Keese9","Keese","Hanging"],BatFlags:1b,Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}
#10
execute unless entity @e[type=bat,tag=Keese10] run summon minecraft:bat 2189 44 1897 {Tags:["Keese10","Keese","Flame"],Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}
#11
execute unless entity @e[type=bat,tag=Keese11] run summon minecraft:bat 2195 44 1897 {Tags:["Keese11","Keese","Flame"],Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}
#12
execute unless entity @e[type=bat,tag=Keese12] run summon minecraft:bat 2230 50 1877 {Tags:["Keese12","Keese","Flame"],Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}
#13
execute unless entity @e[type=bat,tag=Keese13] run summon minecraft:bat 2219 51 1878 {Tags:["Keese13","Keese","Flame"],Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}

#Blade Trap
#1
execute unless entity @e[type=armor_stand,tag=BladeTrap1] run summon minecraft:armor_stand 2225 45 1959 {Tags:["BladeTrap1","BladeTrap","Type1"],Invisible:1b,Small:1b,ArmorItems:[{},{},{},{id:dead_fire_coral,Count:1b,tag:{CustomModelData:1}}],DisabledSlots:4144959}
#2
execute unless entity @e[type=armor_stand,tag=BladeTrap2] run summon minecraft:armor_stand 2229 45 1959 {Tags:["BladeTrap2","BladeTrap","Type1"],Invisible:1b,Small:1b,ArmorItems:[{},{},{},{id:dead_fire_coral,Count:1b,tag:{CustomModelData:1}}],DisabledSlots:4144959}
#3
execute unless entity @e[type=armor_stand,tag=BladeTrap3] run summon minecraft:armor_stand 2229 45 1948 {Tags:["BladeTrap3","BladeTrap","Type1"],Invisible:1b,Small:1b,ArmorItems:[{},{},{},{id:dead_fire_coral,Count:1b,tag:{CustomModelData:1}}],DisabledSlots:4144959}

#Wall Skulltula
#1
execute unless entity @e[type=zombie,tag=WallSkull7] run summon minecraft:zombie 2146 52 1935 {Tags:["WallSkull7","WallSkull","Invisible"],Rotation:[-90f],NoAI:1b,ArmorItems:[{},{},{},{id:red_mushroom_block,Count:1b}],Invulnerable:1b,PersistenceRequired:1b,Health:7,Silent:1,IsBaby:1b,DeathLootTable:"ocarina_of_time:entities/wall_skulltula",ArmorDropChances:[0f,0f,0f,0f],DeathLootTable:"ocarina_of_time:entities/wall_skulltula"}

#Business Scrub
#1
execute unless entity @e[type=armor_stand,tag=BusinessScrub1] run summon minecraft:armor_stand 2169 35.3 1955 {Tags:["BusinessScrub","BusinessScrub1","Npc"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1,tag:{CustomModelData:105}}]}
#2
execute unless entity @s[tag=Adult] unless entity @e[type=armor_stand,tag=BusinessScrub2] run summon minecraft:armor_stand 2245 37.3 1883 {Tags:["BusinessScrub","BusinessScrub2","Npc"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1,tag:{CustomModelData:105}}]}
#3
execute unless entity @e[type=armor_stand,tag=BusinessScrub3] run summon minecraft:armor_stand 2227 47.3 1916 {Tags:["BusinessScrub","BusinessScrub3","Npc"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1,tag:{CustomModelData:105}}]}
#4
execute unless entity @e[type=armor_stand,tag=BusinessScrub4] run summon minecraft:armor_stand 2237 47.3 1916 {Tags:["BusinessScrub","BusinessScrub4","Npc"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1,tag:{CustomModelData:105}}]}
