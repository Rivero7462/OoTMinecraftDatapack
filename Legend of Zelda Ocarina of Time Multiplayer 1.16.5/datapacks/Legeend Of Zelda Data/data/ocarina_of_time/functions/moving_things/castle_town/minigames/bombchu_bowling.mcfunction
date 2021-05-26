#Start
scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] run tellraw @a ["",{"text":"Owner:","color":"gold"},{"text":" OK! Aim for the hole in the center, then let "},{"text":"Bombchu","color":"red"},{"text":" go! You get "},{"text":"10 tries","color":"red"},{"text":". Ready... "},{"text":"LET'S BOWL! ","color":"red"},{"text":"Oh, I almost forgot! Here is what you can win! "},{"text":"START!","color":"red"}]

execute if entity @s[scores={timer=1..49}] run tp @a 873 41 1426 180 13
execute if entity @s[scores={timer=1}] run data merge entity @s {ArmorItems:[{},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:15912849}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:14052080}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1823248539,969362498,-1501815747,874035989],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNThjOTQxZWZmNmRjOTAzNzNkZWRhZGRlMGZiZmVlNmI1ZTM1ZDBkYzM2OGU1OGVkNmM5MjQ1ZTUyYmFlZjU3OCJ9fX0="}]}}}}]}
execute if entity @s[scores={timer=1}] run clone 856 22 1422 856 29 1430 856 38 1422
execute if entity @s[scores={timer=1}] run gamemode spectator @a
execute if entity @s[scores={timer=1}] run fill 869 41 1431 869 41 1422 minecraft:barrier
execute if entity @s[scores={timer=1}] run scoreboard objectives add MinigameBombchus dummy
execute if entity @s[scores={timer=1}] run scoreboard players set @a MinigameBombchus 10
execute if entity @s[scores={timer=1,lifetime=0}] run clone 850 22 1409 850 30 1419 850 37 1421
execute if entity @s[scores={timer=1,lifetime=1..2}] run clone 850 22 1421 850 30 1431 850 37 1421
execute if entity @s[scores={timer=1,lifetime=3..4}] run clone 850 22 1433 850 30 1443 850 37 1421
execute if entity @s[scores={timer=50}] run gamemode adventure @a
execute if entity @s[scores={timer=50}] run tp @a 868 40 1426 90 ~
execute if entity @s[scores={timer=50}] as @e[type=item,x=869,y=40,z=1422,dx=7,dy=2,dz=5] run tp @s 867 40 1425

#Prizes
execute if entity @s[scores={timer=1,lifetime=0}] run summon minecraft:item 873 41.5 1421 {Item:{Count:1b,id:"minecraft:tnt",tag:{display:{Name:"{\"text\":\"Bomb\"}"},BombPickup:1b,PickupItem:1b,Item:1b}},Tags:["NoPickup"]}
execute if entity @s[scores={timer=1,lifetime=1}] run summon minecraft:item 873 41.5 1421 {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"{\"text\":\"Bombchu (10)\"}"},Unbreakable:1b,HideFlags:63,BombchuPickup:1b,PickupItem:1b,BombchuPickup10:1b,Item:1b}},Tags:["NoPickup"]}
execute if entity @s[scores={timer=1,lifetime=2}] run summon minecraft:item 873 41.5 1421 {Item:{Count:1b,id:"minecraft:purple_dye",tag:{display:{Name:"{\"text\":\"Purple Rupee\"}"},Item:1b}},Tags:["NoPickup"]}
execute if entity @s[scores={timer=1,lifetime=3}] unless block 868 36 1421 minecraft:gold_block run summon minecraft:item 873 41.5 1421 {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Bomb Bag\"}"},Unbreakable:1b,Damage:35,HideFlags:63,BombBag:1b,Item:1b}},Tags:["NoPickup"]}
execute if entity @s[scores={timer=1,lifetime=4}] unless block 867 36 1421 minecraft:gold_block run summon minecraft:item 873 41.5 1421 {Item:{Count:1b,id:"minecraft:golden_carrot",tag:{display:{Name:"{\"text\":\"Heart Piece\"}"},Item:1b,InventoryItem:1b,HeartPiece:1b}},Tags:["NoPickup"]}
execute if entity @s[scores={timer=1,lifetime=3}] if block 868 36 1421 minecraft:gold_block unless block 867 36 1421 minecraft:gold_block run summon minecraft:item 873 41.5 1421 {Item:{Count:1b,id:"minecraft:golden_carrot",tag:{display:{Name:"{\"text\":\"Heart Piece\"}"},Item:1b,InventoryItem:1b,HeartPiece:1b}},Tags:["NoPickup"]}
execute if entity @s[scores={timer=1,lifetime=4}] if block 867 36 1421 minecraft:gold_block unless block 868 36 1421 minecraft:gold_block run summon minecraft:item 873 41.5 1421 {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Bomb Bag\"}"},Unbreakable:1b,Damage:35,HideFlags:63,BombBag:1b,Item:1b}},Tags:["NoPickup"]}
execute if entity @s[scores={timer=1,lifetime=3}] if block 868 36 1421 minecraft:gold_block if block 867 36 1421 minecraft:gold_block run summon minecraft:item 873 41.5 1421 {Item:{Count:1b,id:"minecraft:purple_dye",tag:{display:{Name:"{\"text\":\"Purple Rupee\"}"},Item:1b}},Tags:["NoPickup"]}
execute if entity @s[scores={timer=1,lifetime=4}] if block 867 36 1421 minecraft:gold_block if block 868 36 1421 minecraft:gold_block run summon minecraft:item 873 41.5 1421 {Item:{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"{\"text\":\"Bombchu (10)\"}"},Unbreakable:1b,HideFlags:63,BombchuPickup:1b,PickupItem:1b,BombchuPickup10:1b,Item:1b}},Tags:["NoPickup"]}

#Loop
execute as @e[type=chicken,tag=GoodCucco] run scoreboard players set @s text 0
execute as @e[type=item,nbt={Item:{tag:{Item:1b}}},x=873,y=41.5,z=1421,dx=0,dz=0] run data merge entity @s {PickupDelay:100}
scoreboard players set @e[type=item,nbt={Item:{tag:{Item:1b}}},x=873,y=41.5,z=1421,dx=0,dz=0] timer 0

#Target 1
execute as @e[type=armor_stand,tag=Bombchu,x=857,y=42,z=1426,dx=0,dz=0] run scoreboard players set @s timer 250
execute as @e[type=armor_stand,tag=Bombchu,x=857,y=42,z=1426,dx=0,dz=0] run fill 856 38 1430 856 45 1422 minecraft:air

#Target 2
execute if block 850 41 1421 minecraft:black_wool as @e[type=armor_stand,tag=Bombchu,x=851,y=41,z=1421,dx=0,dz=0] run scoreboard players set @s timer 250
execute if block 850 41 1421 minecraft:black_wool as @e[type=armor_stand,tag=Bombchu,x=851,y=41,z=1421,dx=0,dz=0] run fill 850 37 1421 850 45 1431 minecraft:air

execute if block 850 45 1426 minecraft:black_wool as @e[type=armor_stand,tag=Bombchu,x=851,y=45,z=1426,dx=0,dz=0] run scoreboard players set @s timer 250
execute if block 850 45 1426 minecraft:black_wool as @e[type=armor_stand,tag=Bombchu,x=851,y=45,z=1426,dx=0,dz=0] run fill 850 37 1421 850 45 1431 minecraft:air

execute if block 850 41 1431 minecraft:black_wool as @e[type=armor_stand,tag=Bombchu,x=851,y=41,z=1431,dx=0,dz=0] run scoreboard players set @s timer 250
execute if block 850 41 1431 minecraft:black_wool as @e[type=armor_stand,tag=Bombchu,x=851,y=41,z=1431,dx=0,dz=0] run fill 850 37 1421 850 45 1431 minecraft:air

#Target 3
execute as @e[type=armor_stand,tag=Bombchu,x=845,y=40,z=1426,dx=0,dz=0] run scoreboard players set @s timer 250
execute if entity @e[type=armor_stand,tag=Bombchu,x=845,y=40,z=1426,dx=0,dz=0] run tag @s add Prize
execute if entity @e[type=armor_stand,tag=Bombchu,x=845,y=40,z=1426,dx=0,dz=0] run tag @s add Finish

#Out of Bombchu's
execute if entity @s[scores={timer=2..}] if entity @a[scores={MinigameBombchus=..0}] unless entity @e[type=armor_stand,tag=Bombchu] run tag @s add Finish

#Prize
execute if entity @s[tag=Prize] run tellraw @a {"text":"WINNER!","color":"red"}

#Bomb Bag
execute unless block 868 36 1421 minecraft:gold_block if entity @s[tag=Prize,scores={lifetime=3..4}] if entity @e[type=item,nbt={Item:{tag:{BombBag:1b}}},x=873,y=41.5,z=1421,dx=0,dz=0] as @e[type=area_effect_cloud,tag=Progress] if entity @s[tag=BombUpgrade1] run tag @s add BombUpgrade2
execute unless block 868 36 1421 minecraft:gold_block if entity @s[tag=Prize,scores={lifetime=3..4}] if entity @e[type=item,nbt={Item:{tag:{BombBag:1b}}},x=873,y=41.5,z=1421,dx=0,dz=0] if entity @e[type=area_effect_cloud,tag=Progress,tag=BombUpgrade2] run advancement grant @a only minecraft:_upgrades/bomb_upgrade_2
execute unless block 868 36 1421 minecraft:gold_block if entity @s[tag=Prize,scores={lifetime=3..4}] if entity @e[type=item,nbt={Item:{tag:{BombBag:1b}}},x=873,y=41.5,z=1421,dx=0,dz=0] if entity @e[type=area_effect_cloud,tag=Progress,tag=BombUpgrade2] run tellraw @a ["",{"text":"You got the ","color":"white"},{"text":"Biggest Bomb Bag","color":"red"},{"text":"! Now you can carry up to "},{"text":"40 ","color":"yellow"},{"text":"Bombs!"}]
execute unless block 868 36 1421 minecraft:gold_block if entity @s[tag=Prize,scores={lifetime=3..4}] if entity @e[type=item,nbt={Item:{tag:{BombBag:1b}}},x=873,y=41.5,z=1421,dx=0,dz=0] if entity @e[type=area_effect_cloud,tag=Progress,tag=BombUpgrade2] run give @p tnt{display:{Name:"\"Bomb\""}} 50
execute unless block 868 36 1421 minecraft:gold_block if entity @s[tag=Prize,scores={lifetime=3..4}] if entity @e[type=item,nbt={Item:{tag:{BombBag:1b}}},x=873,y=41.5,z=1421,dx=0,dz=0] as @e[type=area_effect_cloud,tag=Progress] unless entity @s[tag=BombUpgrade1] run tag @s add BombUpgrade1
execute unless block 868 36 1421 minecraft:gold_block if entity @s[tag=Prize,scores={lifetime=3..4}] if entity @e[type=item,nbt={Item:{tag:{BombBag:1b}}},x=873,y=41.5,z=1421,dx=0,dz=0] as @e[type=area_effect_cloud,tag=Progress,tag=BombUpgrade1] unless entity @s[tag=BombUpgrade2] run advancement grant @a only minecraft:_upgrades/bomb_upgrade_1
execute unless block 868 36 1421 minecraft:gold_block if entity @s[tag=Prize,scores={lifetime=3..4}] if entity @e[type=item,nbt={Item:{tag:{BombBag:1b}}},x=873,y=41.5,z=1421,dx=0,dz=0] as @e[type=area_effect_cloud,tag=Progress,tag=BombUpgrade1] unless entity @s[tag=BombUpgrade2] run tellraw @a ["",{"text":"You got a "},{"text":"Big Bomb Bag","color":"red"},{"text":"! Now you can carry more bombs, up to a maximum of "},{"text":"30","color":"yellow"},{"text":"!"}]
execute unless block 868 36 1421 minecraft:gold_block if entity @s[tag=Prize,scores={lifetime=3..4}] if entity @e[type=item,nbt={Item:{tag:{BombBag:1b}}},x=873,y=41.5,z=1421,dx=0,dz=0] as @e[type=area_effect_cloud,tag=Progress,tag=BombUpgrade1] unless entity @s[tag=BombUpgrade2] run give @p tnt{display:{Name:"\"Bomb\""}} 50
execute unless block 868 36 1421 minecraft:gold_block if entity @s[tag=Prize,scores={lifetime=3..4}] if entity @e[type=item,nbt={Item:{tag:{BombBag:1b}}},x=873,y=41.5,z=1421,dx=0,dz=0] run fill 868 36 1421 868 36 1421 minecraft:gold_block
execute if entity @s[tag=Prize,scores={lifetime=3..4}] if entity @e[type=item,nbt={Item:{tag:{BombBag:1b}}},x=873,y=41.5,z=1421,dx=0,dz=0] run kill @e[type=item,nbt={Item:{tag:{Item:1b}}},x=873,y=41.5,z=1421,dx=0,dz=0]

#Heart Piece
execute if entity @s[tag=Prize,scores={lifetime=4}] run data remove entity @e[type=item,nbt={Item:{Count:1b,id:"minecraft:golden_carrot",tag:{display:{Name:"{\"text\":\"Heart Piece\"}"},Item:1b}}},limit=1] Item.tag.Item
execute if entity @s[tag=Prize,scores={lifetime=4}] as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:golden_carrot",tag:{display:{Name:"{\"text\":\"Heart Piece\"}"}}}}] run tag @s remove NoPickup
execute if entity @s[tag=Prize,scores={lifetime=4}] as @e[type=item,nbt={Item:{Count:1b,id:"minecraft:golden_carrot",tag:{display:{Name:"{\"text\":\"Heart Piece\"}"}}}}] run data merge entity @s {PickupDelay:0}
execute if entity @s[tag=Prize,scores={lifetime=4}] run tp @e[type=item,nbt={Item:{Count:1b,id:"minecraft:golden_carrot",tag:{display:{Name:"{\"text\":\"Heart Piece\"}"}}}}] @p 

execute if entity @s[tag=Prize,scores={lifetime=4}] run fill 867 36 1421 867 36 1421 minecraft:gold_block
execute if entity @s[tag=Prize] as @e[type=item,nbt={Item:{tag:{Item:1b}}},x=873,y=41.5,z=1421,dx=0,dz=0] run tag @s remove NoPickup
execute if entity @s[tag=Prize] as @e[type=item,nbt={Item:{tag:{Item:1b}}},x=873,y=41.5,z=1421,dx=0,dz=0] run data merge entity @s {PickupDelay:0}
execute if entity @s[tag=Prize] unless entity @e[type=item,nbt={Item:{tag:{BombBag:1b}}},x=873,y=41.5,z=1421,dx=0,dz=0] run tp @e[type=item,nbt={Item:{tag:{Item:1b}}},x=873,y=41.5,z=1421,dx=0,dz=0] @p

execute if entity @s[tag=Finish] run function ocarina_of_time:moving_things/castle_town/minigames/reset_bowling
