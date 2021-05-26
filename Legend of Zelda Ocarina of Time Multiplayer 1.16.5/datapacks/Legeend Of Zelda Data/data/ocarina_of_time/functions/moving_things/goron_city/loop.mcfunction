#Goron New Text
execute if block 2189 65 1838 minecraft:torch if block 2186 65 1841 minecraft:torch run scoreboard players set @e[type=armor_stand,tag=Goron8] text 3

#Bomb wall
#1
execute as @e[type=area_effect_cloud,tag=Bomb1] at @s run function ocarina_of_time:moving_things/goron_city/bomb_walls
execute if entity @a[x=2174,y=58,z=1830,dx=1,dz=2] if block 2174 59 1831 minecraft:tnt if entity @a[nbt={SelectedItem:{tag:{LitDekuStick:1b}}}] run summon item 2174 59 1831 {Item:{id:tnt,Count:1,tag:{display:{Name:"\"Bomb\""}}},PickupDelay:1000}
execute if entity @a[x=2174,y=58,z=1830,dx=1,dz=2] if block 2174 59 1831 minecraft:tnt if entity @a[nbt={SelectedItem:{tag:{LitDekuStick:1b}}}] run fill 2174 59 1831 2174 59 1831 minecraft:air
#2
execute if entity @a[x=2174,y=58,z=1826,dx=1,dz=2] if block 2174 59 1827 minecraft:tnt if entity @a[nbt={SelectedItem:{tag:{LitDekuStick:1b}}}] run summon item 2174 59 1827 {Item:{id:tnt,Count:1,tag:{display:{Name:"\"Bomb\""}}},PickupDelay:1000}
execute if entity @a[x=2174,y=58,z=1826,dx=1,dz=2] if block 2174 59 1827 minecraft:tnt if entity @a[nbt={SelectedItem:{tag:{LitDekuStick:1b}}}] run fill 2174 59 1827 2174 59 1827 minecraft:air
#3
execute if entity @a[x=2193,y=65,z=1845,dx=3,dz=3] if block 2196 64 1846 minecraft:tnt if entity @a[nbt={SelectedItem:{tag:{LitDekuStick:1b}}}] run function ocarina_of_time:moving_things/goron_city/lost_woods_bomb
#5
execute if entity @a[x=2171,y=69,z=1844,dx=2,dz=1] if block 2172 69 1845 minecraft:tnt if entity @a[nbt={SelectedItem:{tag:{LitDekuStick:1b}}}] run summon item 2172 69 1845 {Item:{id:tnt,Count:1,tag:{display:{Name:"\"Bomb\""}}},PickupDelay:1000}
execute if entity @a[x=2171,y=69,z=1844,dx=2,dz=1] if block 2172 69 1845 minecraft:tnt if entity @a[nbt={SelectedItem:{tag:{LitDekuStick:1b}}}] run fill 2172 69 1845 2172 69 1845 minecraft:air
#6
execute if entity @a[x=2167,y=69,z=1844,dx=2,dz=1] if block 2168 69 1845 minecraft:tnt if entity @a[nbt={SelectedItem:{tag:{LitDekuStick:1b}}}] run summon item 2168 69 1845 {Item:{id:tnt,Count:1,tag:{display:{Name:"\"Bomb\""}}},PickupDelay:1000}
execute if entity @a[x=2167,y=69,z=1844,dx=2,dz=1] if block 2168 69 1845 minecraft:tnt if entity @a[nbt={SelectedItem:{tag:{LitDekuStick:1b}}}] run fill 2168 69 1845 2168 69 1845 minecraft:air
#7
execute if entity @a[x=2157,y=66,z=1823,dx=1,dz=1] if block 2157 66 1823 minecraft:tnt if entity @a[nbt={SelectedItem:{tag:{LitDekuStick:1b}}}] run summon item 2157 66 1823 {Item:{id:tnt,Count:1,tag:{display:{Name:"\"Bomb\""}}},PickupDelay:1000}
execute if entity @a[x=2157,y=66,z=1823,dx=1,dz=1] if block 2157 66 1823 minecraft:tnt if entity @a[nbt={SelectedItem:{tag:{LitDekuStick:1b}}}] run fill 2157 66 1823 2157 66 1823 minecraft:air
#Lost Woods Music
execute as @e[type=armor_stand,tag=Goron9] run function ocarina_of_time:moving_things/goron_city/lost_woods_music

#Statue
execute as @a at @s if entity @s[x=2183,y=64,z=1827,dy=1,dz=3] run tp @s ~.1 ~ ~
execute as @a at @s if entity @s[x=2176,y=64,z=1827,dy=1,dz=3] run tp @s ~-.1 ~ ~
#Spinning Thing
execute unless block 2178 54 1829 minecraft:gold_block if entity @e[type=item,nbt={Item:{tag:{display:{Name:"\"Bomb\""}}}},scores={timer=99..},x=2179,y=63,z=1828,dx=1,dz=1] run tellraw @a ["",{"text":"You got a "},{"text":"Piece of Heart","color":"red"},{"text":"!"}]
execute unless block 2178 54 1829 minecraft:gold_block if entity @e[type=item,nbt={Item:{tag:{display:{Name:"\"Bomb\""}}}},scores={timer=99..},x=2179,y=63,z=1828,dx=1,dz=1] run give @a minecraft:golden_carrot{display:{Name:"{\"text\":\"Heart Piece\"}"},InventoryItem:1b,HeartPiece:1b} 1
execute if entity @e[type=item,nbt={Item:{tag:{display:{Name:"\"Bomb\""}}}},scores={timer=99..},x=2179,y=63,z=1828,dx=1,dz=1] run fill 2178 54 1829 2178 54 1829 minecraft:gold_block
execute unless block 2178 54 1829 minecraft:gold_block if entity @e[type=armor_stand,tag=Bomb,scores={timer=109..},x=2179,y=63,z=1828,dx=1,dz=1] run tellraw @a ["",{"text":"You got a "},{"text":"Piece of Heart","color":"red"},{"text":"!"}]
execute unless block 2178 54 1829 minecraft:gold_block if entity @e[type=armor_stand,tag=Bomb,scores={timer=109..},x=2179,y=63,z=1828,dx=1,dz=1] run give @a minecraft:golden_carrot{display:{Name:"{\"text\":\"Heart Piece\"}"},InventoryItem:1b,HeartPiece:1b} 1
execute if entity @e[type=armor_stand,tag=Bomb,scores={timer=109..},x=2179,y=63,z=1828,dx=1,dz=1] run fill 2178 54 1829 2178 54 1829 minecraft:gold_block

#Rolling Goron
#1
function ocarina_of_time:moving_things/goron_city/moving_people/loop
execute as @e[type=armor_stand,tag=Goron11] unless entity @s[tag=Prize] unless entity @s[x=2179,y=69,z=1810,dx=15,dy=1,dz=12] run scoreboard players set @s text 1
execute as @e[type=armor_stand,tag=Goron11,x=2179,y=69,z=1810,dx=15,dy=1,dz=12] unless entity @s[tag=Prize] run scoreboard players set @s text 2
execute as @e[type=armor_stand,tag=Goron11,tag=Prize] run scoreboard players set @s text 3

#Shop
execute if entity @e[type=area_effect_cloud,tag=Progress,tag=Bombs] if entity @a[tag=Adult] run data merge entity @e[type=villager,tag=GoronCityShop,limit=1] {Tags:["GoronCityShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,display:{Name:"\"Heart\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,display:{Name:"\"Heart\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:lapis_lazuli,Count:8,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},buyB:{id:glass_bottle,Count:1,tag:{display:{Name:"\"Bottle\""}}},sell:{id:"carrot_on_a_stick",Count:1,tag:{display:{Name:"{\"text\":\"Red Potion\"}"},Unbreakable:1b,Damage:20,HideFlags:63,RedPotion:1b}},rewardExp:0b,maxUses:9999999},{buy:{id:red_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Red Rupee\"}"}}},sell:{id:leather_chestplate,Count:1,tag:{display:{color:14942208,Name:"{\"text\":\"Goron Tunic\"}"},Unbreakable:1b,GoronTunic:1b,HideFlags:46}},rewardExp:0b,maxUses:9999999},{buy:{id:lapis_lazuli,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},sell:{id:tnt,Count:10,tag:{display:{Name:"\"Bomb\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:red_dye,Count:6,tag:{Item:1b,display:{Name:"{\"text\":\"Red Rupee\"}"}}},sell:{id:tnt,Count:30,tag:{display:{Name:"\"Bomb\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:lime_dye,Count:25,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:tnt,Count:5,tag:{display:{Name:"\"Bomb\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:lapis_lazuli,Count:16,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},sell:{id:tnt,Count:20,tag:{display:{Name:"\"Bomb\""}}},rewardExp:0b,maxUses:9999999}]}}
execute if entity @e[type=area_effect_cloud,tag=Progress,tag=Bombs] unless entity @a[tag=Adult] run data merge entity @e[type=villager,tag=GoronCityShop,limit=1] {Tags:["GoronCityShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,display:{Name:"\"Heart\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,display:{Name:"\"Heart\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:lapis_lazuli,Count:8,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},buyB:{id:glass_bottle,Count:1,tag:{display:{Name:"\"Bottle\""}}},sell:{id:"carrot_on_a_stick",Count:1,tag:{display:{Name:"{\"text\":\"Red Potion\"}"},Unbreakable:1b,Damage:20,HideFlags:63,RedPotion:1b}},rewardExp:0b,maxUses:9999999},{buy:{id:red_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Red Rupee\"}"}}},sell:{id:leather_chestplate,Count:1,tag:{display:{color:14942208,Name:"{\"text\":\"Goron Tunic\"}"},Unbreakable:1b,GoronTunic:1b,HideFlags:46}},rewardExp:0b,maxUses:0},{buy:{id:lapis_lazuli,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},sell:{id:tnt,Count:10,tag:{display:{Name:"\"Bomb\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:red_dye,Count:6,tag:{Item:1b,display:{Name:"{\"text\":\"Red Rupee\"}"}}},sell:{id:tnt,Count:30,tag:{display:{Name:"\"Bomb\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:lime_dye,Count:25,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:tnt,Count:5,tag:{display:{Name:"\"Bomb\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:lapis_lazuli,Count:16,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},sell:{id:tnt,Count:20,tag:{display:{Name:"\"Bomb\""}}},rewardExp:0b,maxUses:9999999}]}}
execute unless entity @e[type=area_effect_cloud,tag=Progress,tag=Bombs] unless entity @a[tag=Adult] run data merge entity @e[type=villager,tag=GoronCityShop,limit=1] {Tags:["GoronCityShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,display:{Name:"\"Heart\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:11,HideFlags:63,Heart:1b,PickupItem:1b,display:{Name:"\"Heart\""}}},rewardExp:0b,maxUses:9999999},{buy:{id:lapis_lazuli,Count:8,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},buyB:{id:glass_bottle,Count:1,tag:{display:{Name:"\"Bottle\""}}},sell:{id:"carrot_on_a_stick",Count:1,tag:{display:{Name:"{\"text\":\"Red Potion\"}"},Unbreakable:1b,Damage:20,HideFlags:63,RedPotion:1b}},rewardExp:0b,maxUses:9999999},{buy:{id:red_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Red Rupee\"}"}}},sell:{id:leather_chestplate,Count:1,tag:{display:{color:14942208,Name:"{\"text\":\"Goron Tunic\"}"},Unbreakable:1b,GoronTunic:1b,HideFlags:46}},rewardExp:0b,maxUses:0},{buy:{id:lapis_lazuli,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},sell:{id:tnt,Count:10,tag:{display:{Name:"\"Bomb\""}}},rewardExp:0b,maxUses:0},{buy:{id:red_dye,Count:6,tag:{Item:1b,display:{Name:"{\"text\":\"Red Rupee\"}"}}},sell:{id:tnt,Count:30,tag:{display:{Name:"\"Bomb\""}}},rewardExp:0b,maxUses:0},{buy:{id:lime_dye,Count:25,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:tnt,Count:5,tag:{display:{Name:"\"Bomb\""}}},rewardExp:0b,maxUses:0},{buy:{id:lapis_lazuli,Count:16,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},sell:{id:tnt,Count:20,tag:{display:{Name:"\"Bomb\""}}},rewardExp:0b,maxUses:0}]}}
execute as @e[type=item,x=2163,y=59,z=1828,dx=0,dz=2] run tp @s 2166 58.06250 1829

#Pots
execute as @e[type=area_effect_cloud,tag=Pots] run function ocarina_of_time:moving_things/goron_city/pots

#Adult/Child
execute unless entity @a[x=2183,y=49,z=1826,dx=0,dz=0] unless entity @a[x=2185,y=49,z=1826,dx=0,dz=0] unless entity @a[x=2187,y=49,z=1826,dx=0,dz=0] if entity @a[tag=Adult] run function ocarina_of_time:moving_things/goron_city/adult
execute unless entity @a[x=2183,y=49,z=1826,dx=0,dz=0] unless entity @a[x=2185,y=49,z=1826,dx=0,dz=0] unless entity @a[x=2187,y=49,z=1826,dx=0,dz=0] unless entity @a[tag=Adult] run function ocarina_of_time:moving_things/goron_city/child

#Statue
execute at @a unless block 2184 55 1790 minecraft:gold_block if entity @a[tag=Adult,x=2180,y=60,z=1791,dx=3,dz=1] run function ocarina_of_time:moving_things/goron_city/statue

#Adult Final
execute if entity @a[tag=FinalGoronCity] run fill 2174 54 1825 2174 54 1825 minecraft:gold_block
execute if block 2174 54 1825 minecraft:gold_block run tag @a remove FinalGoronCity

#New Text
execute as @a at @s if entity @s[tag=GoronCityText] run function ocarina_of_time:moving_things/goron_city/new_text

#Time blocks
execute if entity @a[x=2204,y=71,z=1813,dx=5,dz=7] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 2207.0 72 1816.0 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute if entity @a[x=2204,y=71,z=1813,dx=5,dz=7] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute if entity @a[x=2204,y=71,z=1800,dx=5,dy=2,dz=7] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 2207.0 73 1805.0 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute if entity @a[x=2204,y=71,z=1800,dx=5,dy=2,dz=7] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute if entity @a[x=2204,y=71,z=1813,dx=5,dz=7] unless entity @a[x=2206,y=71,z=1815,dx=1,dz=1] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_wait",Count:1b}]}] run scoreboard players add @e[type=area_effect_cloud,tag=TimeBlock] timer 1
execute if entity @a[x=2204,y=71,z=1800,dx=5,dy=2,dz=7] unless entity @a[x=2206,y=71,z=1804,dx=1,dy=1,dz=1] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_wait",Count:1b}]}] run scoreboard players add @e[type=area_effect_cloud,tag=TimeBlock] lifetime 1

#Open door
execute unless entity @a[tag=Adult] if entity @a[x=2175,y=58,z=1820,dx=4,dz=2] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] run fill 2176 58 1819 2178 61 1819 minecraft:air
execute unless entity @a[tag=Adult] if entity @a[x=2175,y=58,z=1820,dx=4,dz=2] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 2177 58 1820 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute unless entity @a[tag=Adult] if entity @a[x=2175,y=58,z=1820,dx=4,dz=2] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot

#Kill Green Navi
execute if entity @a[tag=GreenNaviSpot] unless entity @a[x=2175,y=58,z=1820,dx=4,dz=2] unless entity @a[x=2204,y=71,z=1813,dx=5,dz=7] unless entity @a[x=2204,y=71,z=1800,dx=5,dy=2,dz=7] run kill @e[type=armor_stand,tag=GreenNavi]
execute if entity @a[tag=GreenNaviSpot] unless entity @a[x=2175,y=58,z=1820,dx=4,dz=2] unless entity @a[x=2204,y=71,z=1813,dx=5,dz=7] unless entity @a[x=2204,y=71,z=1800,dx=5,dy=2,dz=7] run tag @a remove GreenNaviSpot
