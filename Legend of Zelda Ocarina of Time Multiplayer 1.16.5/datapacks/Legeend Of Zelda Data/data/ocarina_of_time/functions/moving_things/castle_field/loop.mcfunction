#Music
execute if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_13",Count:1b}]}] unless entity @a[tag=Indoors] run tag @a add HyruleMusic
execute if entity @a[tag=HyruleMusic,scores={time=23600..23605}] unless entity @a[tag=Indoors] run function ocarina_of_time:music/morning_hyrule_field
execute if entity @a[tag=HyruleMusic,scores={time=23600..23605}] unless entity @a[tag=Indoors] run tag @a remove HyruleMusic
execute if entity @a[scores={time=23001..23009}] unless entity @a[tag=Indoors] run function ocarina_of_time:music/morning_hyrule_field
execute if entity @a[scores={time=23001..23009}] unless entity @a[tag=Indoors] run time add 10
execute if entity @a[scores={time=13001..13010}] unless entity @a[tag=Indoors] run function ocarina_of_time:music/night
execute if entity @a[scores={time=13001..13020}] unless entity @a[tag=Indoors] run scoreboard players add @a time 20
execute if entity @a[scores={time=13001..23000}] run stopsound @a music minecraft:hyrule_field_morning
execute if entity @a[scores={time=13001..23000}] run stopsound @a music minecraft:hyrule_field

#Guards
execute if entity @a[x=923,y=82,z=928,dx=1,dy=2,dz=5] run function ocarina_of_time:moving_things/castle_field/guards
execute if entity @a[x=924,y=82,z=927,dx=0,dy=2,dz=0] run function ocarina_of_time:moving_things/castle_field/guards
execute if entity @a[x=917,y=82,z=930,dx=5,dy=2,dz=8] run function ocarina_of_time:moving_things/castle_field/guards
execute if entity @a[x=925,y=82,z=927,dx=0,dy=2,dz=5] run function ocarina_of_time:moving_things/castle_field/guards
execute if entity @a[x=926,y=82,z=927,dx=0,dy=2,dz=4] run function ocarina_of_time:moving_things/castle_field/guards
execute if entity @a[x=927,y=82,z=928,dx=0,dy=2,dz=2] run function ocarina_of_time:moving_things/castle_field/guards
execute if entity @a[x=934,y=78,z=925,dx=1,dy=4,dz=0] run function ocarina_of_time:moving_things/castle_field/guards
execute if entity @a[x=936,y=80,z=916,dx=1,dy=3,dz=0] run function ocarina_of_time:moving_things/castle_field/guards
execute if entity @a[x=939,y=78,z=919,dx=1,dy=3,dz=4] run function ocarina_of_time:moving_things/castle_field/guards
execute if entity @a[x=934,y=80,z=917,dx=4,dy=3,dz=0] run function ocarina_of_time:moving_things/castle_field/guards
execute if entity @a[x=932,y=80,z=919,dx=0,dy=3,dz=3] run function ocarina_of_time:moving_things/castle_field/guards
execute if entity @a[x=933,y=78,z=918,dx=5,dy=6,dz=6] run function ocarina_of_time:moving_things/castle_field/guards
execute if entity @a[x=919,y=82,z=908,dx=7,dy=3,dz=5] run function ocarina_of_time:moving_things/castle_field/guards
execute if entity @a[x=920,y=82,z=914,dx=3,dy=3,dz=0] run function ocarina_of_time:moving_things/castle_field/guards
execute if entity @a[x=897,y=85,z=907,dx=3,dy=4,dz=2] run function ocarina_of_time:moving_things/castle_field/guards
execute if entity @a[x=894,y=82,z=911,dx=7,dy=4,dz=6] run function ocarina_of_time:moving_things/castle_field/guards
execute if entity @a[x=897,y=84,z=910,dx=1,dy=4,dz=0] run function ocarina_of_time:moving_things/castle_field/guards
execute if entity @a[x=896,y=87,z=902,dx=5,dy=4,dz=4] run function ocarina_of_time:moving_things/castle_field/guards

#Villager
execute as @e[type=villager,tag=GateKeeper] unless entity @a[tag=ZeldaOcarina] if entity @a[scores={time=13001..23000}] run data merge entity @s {Tags:["GateKeeper","Invisible"],NoAI:1b,NoGravity:1b,CustomName:"\"Soldier\"",CustomNameVisible:0,CanPickUpLoot:0,PersistenceRequired:1,Silent:1,Invulnerable:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},maxUses:9999999,sell:{id:paper,Count:1,tag:{display:{Name:"\"Open Gate\""},OpenGate:1}},rewardExp:0b,maxUses:9999999},{buy:{id:lapis_lazuli,Count:2,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},sell:{id:paper,Count:1,tag:{display:{Name:"\"Open Gate\""},OpenGate:1}},rewardExp:0b,maxUses:9999999}]}}
execute as @e[type=villager,tag=GateKeeper] unless entity @a[scores={time=13001..23000}] run data merge entity @s {Tags:["GateKeeper","Invisible"],NoAI:1b,NoGravity:1b,CustomName:"\"Soldier\"",CustomNameVisible:0,CanPickUpLoot:0,PersistenceRequired:1,Silent:1,Invulnerable:1,Offers:{Recipes:[{maxUses:0,buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:paper,Count:1,tag:{display:{Name:"\"Open Gate\""},OpenGate:1}},rewardExp:0b},{maxUses:0,buy:{id:lapis_lazuli,Count:2,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},sell:{id:paper,Count:1,tag:{display:{Name:"\"Open Gate\""},OpenGate:1}},rewardExp:0b}]}}
execute as @e[type=villager,tag=GateKeeper] if entity @a[tag=ZeldaOcarina] run data merge entity @s {Tags:["GateKeeper","Invisible"],NoAI:1b,NoGravity:1b,CustomName:"\"Soldier\"",CustomNameVisible:0,CanPickUpLoot:0,PersistenceRequired:1,Silent:1,Invulnerable:1,Offers:{Recipes:[{maxUses:0,buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:paper,Count:1,tag:{display:{Name:"\"Open Gate\""},OpenGate:1}},rewardExp:0b},{maxUses:0,buy:{id:lapis_lazuli,Count:2,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},sell:{id:paper,Count:1,tag:{display:{Name:"\"Open Gate\""},OpenGate:1}},rewardExp:0b}]}}

#Gate
execute as @e[type=armor_stand,tag=Guard5] if entity @a[tag=InCastleField] run function ocarina_of_time:moving_things/castle_field/gate

#Push Block
function ocarina_of_time:moving_things/castle_field/push_block

#Great Fairy Fountain
execute if entity @a[x=947,y=72,z=970,dx=0,dz=0] unless block 947 70 970 minecraft:gold_block run tellraw @a {"text":"The crest of the Royal Family of Hyrule is inscribed here."}
execute if entity @a[x=947,y=72,z=970,dx=0,dz=0] unless block 947 70 970 minecraft:gold_block run fill 947 70 970 947 70 970 minecraft:gold_block

#Soldier
execute if entity @a[tag=ZeldaOcarina] run scoreboard players set @e[type=armor_stand,tag=Guard5] text 2

#Bug Rock
execute as @e[type=area_effect_cloud,tag=Pots] run function ocarina_of_time:moving_things/castle_field/bug_rock

#Grotto
execute if entity @a[x=922,y=88,z=900,dx=6,dz=6] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run fill 925 86 903 925 86 903 minecraft:air
execute if entity @a[tag=ShardAgony,x=922,y=88,z=900,dx=6,dz=6] run tag @a add ShardAgonyStart
execute unless entity @a[tag=ShardAgony,x=922,y=88,z=900,dx=6,dz=6] run tag @a remove ShardAgonyStart

#Torches
#1
execute unless block 895 93 894 minecraft:gold_block positioned 895 93 896 if entity @e[type=snowball,distance=..1.5] run summon minecraft:item 895 92 896 {Item:{Count:1b,id:"minecraft:red_dye",tag:{display:{Name:"{\"text\":\"Red Rupee\"}"},Item:1b}}}
execute unless block 895 93 894 minecraft:gold_block positioned 895 93 896 if entity @e[type=snowball,distance=..1.5] run fill 895 93 894 895 93 894 minecraft:gold_block
#2
execute unless block 902 93 894 minecraft:gold_block positioned 902 93 896 if entity @e[type=snowball,distance=..1.5] run summon minecraft:item 902 92 896 {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Magic Jar\"}"},Unbreakable:1b,Damage:5,HideFlags:63,BigJar:1b,PickupItem:1b,Item:1b}}}
execute unless block 902 93 894 minecraft:gold_block positioned 902 93 896 if entity @e[type=snowball,distance=..1.5] run fill 902 93 894 902 93 894 minecraft:gold_block
