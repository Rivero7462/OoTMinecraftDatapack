time set midnight

#Stones
data merge entity @e[type=item,nbt={Item:{tag:{Emerald:1b}}},limit=1] {PickupDelay:100,Age:0}
data merge entity @e[type=item,nbt={Item:{tag:{Ruby:1b}}},limit=1] {PickupDelay:100,Age:0}
data merge entity @e[type=item,nbt={Item:{tag:{Sapphire:1b}}},limit=1] {PickupDelay:100,Age:0}

#Enemies
function ocarina_of_time:moving_things/destroyed_castle_town/enemies/enemies

#Pots
execute as @e[type=area_effect_cloud,tag=Pots] run function ocarina_of_time:moving_things/destroyed_castle_town/pots

#Mountain Ring
execute unless entity @a[tag=Adult] run fill 1504 144 841 1562 144 783 minecraft:smooth_quartz replace minecraft:red_concrete
execute if entity @a[tag=Adult,tag=MountainRing] run fill 1504 144 841 1562 144 783 minecraft:smooth_quartz replace minecraft:red_concrete
execute if entity @a[tag=Adult] unless entity @a[tag=MountainRing] run fill 1504 144 841 1562 144 783 minecraft:red_concrete replace minecraft:smooth_quartz

#Poe Collector
particle minecraft:witch 1419 72 955 0 0 0 0 1 force @p
particle minecraft:entity_effect 1419 72 956 1 1 0 5 0

execute if entity @a[nbt={Inventory:[{tag:{GhostPoints:1b}}]}] run tellraw @a ["",{"text":"Poe Collector:","color":"gold"},{"text":" Oh, you brought a Poe today! Hmmmm! Very interesting! This is a "},{"text":"Big Poe","color":"red"},{"text":"! I'll buy it for "},{"text":"50 Rupees","color":"red"},{"text":". On top of that, I'll put "},{"text":"100 points ","color":"red"},{"text":"on your card. If you earn "},{"text":"1,000 points","color":"red"},{"text":", you'll be a happy man! Heh heh."}]
execute if entity @a[nbt={Inventory:[{tag:{GhostPoints:1b}}]}] run give @a minecraft:glass_bottle{display:{Name:"\"Bottle\""}}
execute if entity @a[nbt={Inventory:[{tag:{GhostPoints:1b}}]}] run give @a minecraft:purple_dye{display:{Name:"{\"text\":\"Purple Rupee\"}"},Item:1b} 1
execute if entity @a[nbt={Inventory:[{tag:{GhostPoints:1b}}]}] run scoreboard players add @e[type=armor_stand,tag=GhostCatcher] timer 100
execute if entity @a[nbt={Inventory:[{tag:{GhostPoints:1b}}]}] run clear @a minecraft:shears{GhostPoints:1b}

execute if entity @a[nbt={Inventory:[{tag:{NormalGhost:1b}}]}] run give @a minecraft:glass_bottle{display:{Name:"\"Bottle\""}}
execute if entity @a[nbt={Inventory:[{tag:{NormalGhost:1b}}]}] run give @a minecraft:lapis_lazuli{display:{Name:"{\"text\":\"Blue Rupee\"}"},Item:1b} 2
execute if entity @a[nbt={Inventory:[{tag:{NormalGhost:1b}}]}] run clear @a minecraft:shears{NormalGhost:1b}

execute unless block 1418 66 956 minecraft:gold_block if entity @e[type=armor_stand,tag=GhostCatcher,scores={timer=1000..}] run tellraw @a ["",{"text":"Poe Collector:","color":"gold"},{"text":" Wait a minute! WOW! You have earned"},{"text":" 1,000 points","color":"red"},{"text":"! Young man, you are a genuine "},{"text":"ghost hunter","color":"red"},{"text":"! Is that what you expected me to say? Heh heh heh! Because of you, I have extra inventory of "},{"text":"Big Poes","color":"red"},{"text":", so this will be the last time I can buy one of these ghosts. You're thinking about what I promised would happen when you earned 1,000 points. Heh heh. Don't worry. I didn't forget. Just take this empty bottle."}]
execute unless block 1418 66 956 minecraft:gold_block if entity @e[type=armor_stand,tag=GhostCatcher,scores={timer=1000..}] run scoreboard players add @e[type=area_effect_cloud,tag=Progress] Bottle 1
execute unless block 1418 66 956 minecraft:gold_block if entity @e[type=armor_stand,tag=GhostCatcher,scores={timer=1000..}] run give @a minecraft:glass_bottle{display:{Name:"\"Bottle\""}}
execute unless block 1418 66 956 minecraft:gold_block if entity @e[type=armor_stand,tag=GhostCatcher,scores={timer=1000..}] run fill 1418 66 956 1418 66 956 minecraft:gold_block

#Secret
execute unless entity @e[type=wither_skeleton,tag=Redead] unless block 1380 70 924 minecraft:mossy_cobblestone run fill 1388 71 920 1388 71 920 minecraft:player_wall_head[facing=east]{SkullOwner:{Id:[I;-802249469,-2130951938,-1970488772,-135467034],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDc2ZTdiMmViYTRmYTliYzI2ODI4ZGI0MWRkNGQ0ZmY0MTQzN2EzYzIxZGE5NGU1YmFhNGQzMTliMTE0In19fQ=="}]}}}
execute unless entity @e[type=wither_skeleton,tag=Redead] unless block 1380 70 924 minecraft:mossy_cobblestone run fill 1388 72 917 1388 72 917 minecraft:player_wall_head[facing=east]{SkullOwner:{Id:[I;-802249469,-2130951938,-1970488772,-135467034],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDc2ZTdiMmViYTRmYTliYzI2ODI4ZGI0MWRkNGQ0ZmY0MTQzN2EzYzIxZGE5NGU1YmFhNGQzMTliMTE0In19fQ=="}]}}}
execute unless entity @e[type=wither_skeleton,tag=Redead] unless block 1380 70 924 minecraft:mossy_cobblestone run fill 1388 73 914 1388 73 914 minecraft:player_wall_head[facing=east]{SkullOwner:{Id:[I;-802249469,-2130951938,-1970488772,-135467034],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDc2ZTdiMmViYTRmYTliYzI2ODI4ZGI0MWRkNGQ0ZmY0MTQzN2EzYzIxZGE5NGU1YmFhNGQzMTliMTE0In19fQ=="}]}}}
execute unless entity @e[type=wither_skeleton,tag=Redead] unless block 1380 70 924 minecraft:mossy_cobblestone run fill 1388 74 910 1388 74 910 minecraft:player_wall_head[facing=east]{SkullOwner:{Id:[I;-802249469,-2130951938,-1970488772,-135467034],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDc2ZTdiMmViYTRmYTliYzI2ODI4ZGI0MWRkNGQ0ZmY0MTQzN2EzYzIxZGE5NGU1YmFhNGQzMTliMTE0In19fQ=="}]}}}

#Master Sword Switch
execute at @a if entity @e[type=armor_stand,tag=MasterSword,distance=..5] unless entity @e[type=item,distance=..30] unless entity @a[tag=Adult] as @e[type=armor_stand,tag=MasterSword] unless block 995 5 1394 minecraft:gold_block unless data entity @s HandItems[].id run function ocarina_of_time:moving_things/castle_town/master_sword/first_time
execute at @a if entity @e[type=armor_stand,tag=MasterSword,distance=..5] unless entity @e[type=item,distance=..30] unless entity @a[tag=Adult] as @e[type=armor_stand,tag=MasterSword] if block 995 5 1394 minecraft:gold_block unless data entity @s HandItems[].id run function ocarina_of_time:moving_things/castle_town/master_sword/adult
execute at @a if entity @e[type=armor_stand,tag=MasterSword,distance=..5] unless entity @e[type=item,distance=..30] if entity @a[tag=Adult] as @e[type=armor_stand,tag=MasterSword] if entity @s[nbt={HandItems:[{id:"minecraft:diamond_sword"},{}]}] run function ocarina_of_time:moving_things/castle_town/master_sword/child

#Dropped Items
execute at @a unless entity @e[type=item,distance=..30] as @e[type=armor_stand,tag=MasterSword,distance=..5] run data merge entity @s {DisabledSlots:0}
execute at @a if entity @e[type=armor_stand,tag=MasterSword,distance=..5] as @e[type=item,distance=..30] run function ocarina_of_time:moving_things/castle_town/master_sword/item_teleport

#Item in Sword Slot
execute as @e[type=armor_stand,tag=MasterSword] unless entity @s[nbt={HandItems:[{id:"minecraft:diamond_sword"},{}]}] if data entity @s HandItems[].id run function ocarina_of_time:moving_things/castle_town/pedestal/teleport
execute if entity @a[tag=NoOcarina] as @e[type=armor_stand,tag=MasterSword] unless entity @s[nbt={HandItems:[{id:"minecraft:diamond_sword"},{}]}] unless data entity @s HandItems[].id run function ocarina_of_time:moving_things/castle_town/pedestal/finish
execute as @e[type=item,x=994,y=10,z=1394,dx=0,dz=0] run tp @s 993 12 1394

execute at @a as @e[type=armor_stand,tag=MasterSword,distance=..10] if entity @s[distance=..5] run tag @a add NoOcarina
execute at @a as @e[type=armor_stand,tag=MasterSword,distance=..10] unless entity @s[distance=..5] run tag @a remove NoOcarina

#Sheik Text
execute if entity @a[tag=FinalSheikText] as @e[type=armor_stand,tag=Sheik1,tag=!FinalText] run scoreboard players set @s text 2
execute if entity @a[tag=FinalSheikText] as @e[type=armor_stand,tag=Sheik1,tag=!FinalText] run tag @s add FinalText
