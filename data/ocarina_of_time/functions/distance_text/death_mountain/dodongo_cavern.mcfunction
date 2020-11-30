#Business Scrub 1
execute as @s[tag=BusinessScrub1,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..3] run summon minecraft:villager ~ ~-1 ~ {Tags:["ScrubShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:50,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:shield,Count:1,tag:{Wooden:1b,display:{Name:"\"Deku Shield\""},Unbreakable:1,Damage:1}},rewardExp:0b,maxUses:1}]}}
execute as @s[tag=BusinessScrub1,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..3] run tellraw @a ["",{"text":"Business Scrub: ","color":"gold"},{"text":"I give up! If you let me go, I will sell you a "},{"text":"Deku Shield","color":"red"},{"text":"! It's "},{"text":"50 Rupees","color":"red"},{"text":"! Let's make a deal!"}]
execute as @s[tag=BusinessScrub1,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..3] run tag @s add stoptext
execute as @s[tag=BusinessScrub1,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..3] run scoreboard players set @s text 0

execute as @s[tag=BusinessScrub1,scores={text=1}] at @s if entity @a[tag=Adult,distance=..3] run summon minecraft:villager ~ ~-1 ~ {Tags:["ScrubShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lapis_lazuli,Count:16,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},sell:{id:shield,Count:1,tag:{display:{Name:"\"Hylian Shield\""},Unbreakable:1b,Damage:2}},rewardExp:0b,maxUses:1}]}}
execute as @s[tag=BusinessScrub1,scores={text=1}] at @s if entity @a[tag=Adult,distance=..3] run tellraw @a ["",{"text":"Business Scrub: ","color":"gold"},{"text":"I give up! If you let me go, I will sell you a "},{"text":"Hylian Shield","color":"red"},{"text":"! It's "},{"text":"80 Rupees","color":"red"},{"text":"! Let's make a deal!"}]
execute as @s[tag=BusinessScrub1,scores={text=1}] at @s if entity @a[tag=Adult,distance=..3] run tag @s add stoptext
execute as @s[tag=BusinessScrub1,scores={text=1}] at @s if entity @a[tag=Adult,distance=..3] run scoreboard players set @s text 0

#Business Scrub 2
execute as @s[tag=BusinessScrub2,scores={text=1}] at @s if entity @a[distance=..3] run summon minecraft:villager ~ ~-1 ~ {Tags:["ScrubShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:15,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:stick,Count:1,tag:{display:{Name:"{\"text\":\"Deku Stick\"}"},DekuStick:1b,Item:1b}},rewardExp:0b,maxUses:1}]}}
execute as @s[tag=BusinessScrub2,scores={text=1}] at @s if entity @a[distance=..3] run tellraw @a ["",{"text":"Business Scrub: ","color":"gold"},{"text":"All right! You win! In return, I will sell you Deku Sticks! "},{"text":"One","color":"red"},{"text":" for "},{"text":"15 Rupees","color":"red"},{"text":" they are! Let's make a deal!"}]
execute as @s[tag=BusinessScrub2,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext
execute as @s[tag=BusinessScrub2,scores={text=1}] at @s if entity @a[distance=..3] run scoreboard players set @s text 0

#Business Scrub 3
execute as @s[tag=BusinessScrub3,scores={text=1}] at @s if entity @a[distance=..3] run summon minecraft:villager ~ ~-1 ~ {Tags:["ScrubShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:20,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:carrot_on_a_stick,Count:1,tag:{Unbreakable:1b,Damage:17,HideFlags:63,NutPickup:1b,PickupItem:1b,display:{Name:"\"Deku Nuts (5)\""}}},rewardExp:0b,maxUses:1}]}}
execute as @s[tag=BusinessScrub3,scores={text=1}] at @s if entity @a[distance=..3] run tellraw @a ["",{"text":"Business Scrub: ","color":"gold"},{"text":"I surrender! In return, I will sell you Deku Nuts! "},{"text":"five ","color":"red"},{"text":"for "},{"text":"20 Rupees","color":"red"},{"text":" they are! Let's make a deal!"}]
execute as @s[tag=BusinessScrub3,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext
execute as @s[tag=BusinessScrub3,scores={text=1}] at @s if entity @a[distance=..3] run scoreboard players set @s text 0

#Business Scrub 4
execute as @s[tag=BusinessScrub4,scores={text=1}] at @s if entity @a[distance=..3] run summon minecraft:villager ~ ~-1 ~ {Tags:["ScrubShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:40,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:15,HideFlags:63,DekuSeedPickup:1b,PickupItem:1b,DekuSeedPickup3:1b,display:{Name:"\"Deku Seeds (30)\""}}},rewardExp:0b,maxUses:1}]}}
execute as @s[tag=BusinessScrub4,scores={text=1}] at @s if entity @a[distance=..3] run tellraw @a ["",{"text":"Business Scrub: ","color":"gold"},{"text":"All right! You win! In return, I will sell you "},{"text":"Deku Seeds","color":"red"},{"text":"! "},{"text":"Thirty ","color":"red"},{"text":"for "},{"text":"40 Rupees","color":"red"},{"text":" They are! Let's make a deal!"}]
execute as @s[tag=BusinessScrub4,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext
execute as @s[tag=BusinessScrub4,scores={text=1}] at @s if entity @a[distance=..3] run scoreboard players set @s text 0

#Gossip Stone 1
execute as @s[tag=GossipStone14,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Responding to your mask, this strange stone statue talks to you...\n"},{"text":"Gossip Stone: ","color":"gold"},{"text":"I overheard this... They say that the Gerudo worship Ganondorf almost like a god."}]
execute as @s[tag=GossipStone14,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
