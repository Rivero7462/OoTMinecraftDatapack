#Business Scrub 1
execute as @s[tag=BusinessScrub9,scores={text=1}] at @s if entity @a[distance=..3] run summon minecraft:villager ~ ~-1 ~ {Tags:["ScrubShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:40,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:tnt,Count:5,tag:{display:{Name:"\"Bomb\""}}},rewardExp:0b,maxUses:9999999}]}}
execute as @s[tag=BusinessScrub9,scores={text=1}] at @s if entity @a[distance=..3] run tellraw @a ["",{"text":"Business Scrub: ","color":"gold"},{"text":"I quit! If you let me go, I'll sell you some "},{"text":"bombs","color":"red"},{"text":"! "},{"text":"Five ","color":"red"},{"text":"for "},{"text":"40 Rupees ","color":"red"},{"text":"they are! Let's make a deal!"}]
execute as @s[tag=BusinessScrub9,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext
execute as @s[tag=BusinessScrub9,scores={text=1}] at @s if entity @a[distance=..3] run scoreboard players set @s text 0

#Business Scrub 2
execute as @s[tag=BusinessScrub10,scores={text=1}] at @s if entity @a[distance=..3] run summon minecraft:villager ~ ~-1 ~ {Tags:["ScrubShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:20,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:carrot_on_a_stick,Count:1,tag:{Unbreakable:1b,Damage:17,HideFlags:63,NutPickup:1b,PickupItem:1b,display:{Name:"\"Deku Nuts (5)\""}}},rewardExp:0b,maxUses:1}]}}
execute as @s[tag=BusinessScrub10,scores={text=1}] at @s if entity @a[distance=..3] run tellraw @a ["",{"text":"Business Scrub: ","color":"gold"},{"text":"I surrender! In return, I will sell you Deku Nuts! "},{"text":"five ","color":"red"},{"text":"for "},{"text":"20 Rupees","color":"red"},{"text":" they are! Let's make a deal!"}]
execute as @s[tag=BusinessScrub10,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext
execute as @s[tag=BusinessScrub10,scores={text=1}] at @s if entity @a[distance=..3] run scoreboard players set @s text 0

#Business Scrub 3
execute as @s[tag=BusinessScrub11,scores={text=1}] at @s if entity @a[distance=..3] run summon minecraft:villager ~ ~-1 ~ {Tags:["ScrubShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lapis_lazuli,Count:14,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},sell:{id:shears,Count:1,tag:{display:{Name:"{\"text\":\"Arrows (30)\"}"},Unbreakable:1b,Damage:20,Item:1b,ArrowPickup:1b,PickupItem:1b,ArrowPickup30:1b}},rewardExp:0b,maxUses:1}]}}
execute as @s[tag=BusinessScrub11,scores={text=1}] at @s if entity @a[distance=..3] run tellraw @a ["",{"text":"Business Scrub: ","color":"gold"},{"text":"Knock it off! If you leave me alone, I will sell you "},{"text":"arrows","color":"red"},{"text":"! "},{"text":"Thirty ","color":"red"},{"text":"for "},{"text":"70 Rupees ","color":"red"},{"text":"they are! Let's make a deal!"}]
execute as @s[tag=BusinessScrub11,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext
execute as @s[tag=BusinessScrub11,scores={text=1}] at @s if entity @a[distance=..3] run scoreboard players set @s text 0

#Business Scrub 4
execute as @s[tag=BusinessScrub12,scores={text=1}] at @s if entity @a[distance=..3] run summon minecraft:villager ~ ~-1 ~ {Tags:["ScrubShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:40,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:tnt,Count:5,tag:{display:{Name:"\"Bomb\""}}},rewardExp:0b,maxUses:9999999}]}}
execute as @s[tag=BusinessScrub12,scores={text=1}] at @s if entity @a[distance=..3] run tellraw @a ["",{"text":"Business Scrub: ","color":"gold"},{"text":"I quit! If you let me go, I'll sell you some "},{"text":"bombs","color":"red"},{"text":"! "},{"text":"Five ","color":"red"},{"text":"for "},{"text":"40 Rupees ","color":"red"},{"text":"they are! Let's make a deal!"}]
execute as @s[tag=BusinessScrub12,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext
execute as @s[tag=BusinessScrub12,scores={text=1}] at @s if entity @a[distance=..3] run scoreboard players set @s text 0

#Gossip Stone 1
execute as @s[tag=GossipStone18,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Responding to your mask, this strange stone statue talks to you...\n"},{"text":"Gossip Stone: ","color":"gold"},{"text":"I overheard this... They say that Medigoron didn't really think about his own size, so his store is really cramped."}]
execute as @s[tag=GossipStone18,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
