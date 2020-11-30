function ocarina_of_time:music/shooting_gallery
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/castle_town/loot_reset

data merge entity @e[type=armor_stand,tag=BowlingOwner,limit=1] {ArmorItems:[{},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:15912849}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:14052080}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1918438611,-386775203,-1896478540,-104447183],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2MwZDUzZGE0M2VhODY4NGExZDNkMjExODI1OWNkM2QwMTkyMmE0MmViNmNlOWI2NjlhYmNmNDU4NzdlMjE5OCJ9fX0="}]}}}}]}
execute as @e[type=armor_stand,tag=BowlingOwner,scores={text=2}] run scoreboard players set @s text 1
execute as @e[type=armor_stand,tag=BowlingOwner,scores={text=4}] run scoreboard players set @s text 3
data merge entity @e[type=villager,tag=BowlingShop,limit=1] {Offers:{Recipes:[{maxUses:1,buy:{id:lime_dye,Count:30,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:carrot_on_a_stick,Count:1,tag:{display:{Name:"{\"text\":\"Minigame Bombchus\"}"},Unbreakable:1b,HideFlags:63,MinigameBombchu:1b,Bombchu:1b,MainHandItem:1b}},rewardExp:0b}]}}
clone 856 22 1422 856 29 1430 856 38 1422
function ocarina_of_time:moving_things/castle_town/minigames/reset_bowling
tag @a add Indoors

tp @s 876 40 1426
