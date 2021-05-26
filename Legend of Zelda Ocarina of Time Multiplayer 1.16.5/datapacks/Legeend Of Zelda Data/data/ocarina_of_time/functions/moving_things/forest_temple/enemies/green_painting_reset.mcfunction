execute unless entity @e[type=armor_stand,tag=GreenPainting1] run summon minecraft:armor_stand 956 62 -1155 {Tags:["GreenPainting1","GreenPainting"],Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:lilac,Count:1b,tag:{CustomModelData:2}}],NoGravity:1b,Rotation:[90f]}
fill 949 56 -1154 949 56 -1154 minecraft:air
kill @e[type=zombie,tag=GreenPoeBlock]
kill @e[tag=Amy]
fill 946 69 -1158 946 69 -1158 minecraft:white_glazed_terracotta[facing=east]
fill 950 69 -1157 950 69 -1157 minecraft:light_gray_glazed_terracotta[facing=east]
fill 952 69 -1153 952 69 -1153 minecraft:orange_glazed_terracotta[facing=east]
fill 947 69 -1151 947 69 -1151 minecraft:pink_glazed_terracotta[facing=east]
fill 948 69 -1155 948 69 -1155 minecraft:diamond_block
tag @e[type=armor_stand,tag=GreenPainting1] remove Finish
tag @e[type=armor_stand,tag=GreenPainting1] remove Minigame
scoreboard players set @a MiniGameTime 0
