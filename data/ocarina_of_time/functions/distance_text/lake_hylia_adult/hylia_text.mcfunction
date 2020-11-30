#Scientist
execute as @s[tag=Scientist2] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tag @a remove StartDive
#1
execute as @s[tag=Scientist2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Dr. Mizumi: ","color":"gold"},{"text":"Hello there, son. I'm researching the process of making medicine by mixing Lake Hylia's water with various unusual compounds. Perhaps you've met that old lady from the potion shop... She is like a student of mine... Ho ho ho!"}]
execute as @s[tag=Scientist2,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=Scientist2,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Dr. Mizumi: ","color":"gold"},{"text":"You may not have noticed, but I've been watching you. You dove "},{"text":"6 feet","color":"red"},{"text":" just now. But I wouldn't call that a real dive."}]
execute as @s[tag=Scientist2,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=Scientist2,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Dr. Mizumi: ","color":"gold"},{"text":"You may not have noticed, but I've been watching you. You dove "},{"text":"9 feet","color":"red"},{"text":" just now. But I wouldn't call that a real dive."}]
execute as @s[tag=Scientist2,scores={text=3}] at @s if entity @a[distance=..2] run tag @s add stoptext
#4
execute as @s[tag=Scientist2,scores={text=4}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Dr. Mizumi: ","color":"gold"},{"text":"You may not have noticed, but I've been watching you. You dove "},{"text":"12 feet","color":"red"},{"text":" just now. Still not deep enough!"}]
execute as @s[tag=Scientist2,scores={text=4}] at @s if entity @a[distance=..2] run tag @s add stoptext
#5
execute as @s[tag=Scientist2,scores={text=5}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Dr. Mizumi: ","color":"gold"},{"text":"You may not have noticed, but I've been watching you. You dove "},{"text":"15 feet","color":"red"},{"text":" just now. Still not deep enough!"}]
execute as @s[tag=Scientist2,scores={text=5}] at @s if entity @a[distance=..2] run tag @s add stoptext
#6
execute as @s[tag=Scientist2,scores={text=6}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Dr. Mizumi: ","color":"gold"},{"text":"You may not have noticed, but I've been watching you. You dove "},{"text":"18 feet","color":"red"},{"text":" just now. You should be able to dive deeper!"}]
execute as @s[tag=Scientist2,scores={text=6}] at @s if entity @a[distance=..2] run tag @s add stoptext
#7
execute as @s[tag=Scientist2,scores={text=7}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Dr. Mizumi: ","color":"gold"},{"text":"You may not have noticed, but I've been watching you. You dove "},{"text":"21 feet","color":"red"},{"text":" just now. You should be able to dive deeper!"}]
execute as @s[tag=Scientist2,scores={text=7}] at @s if entity @a[distance=..2] run tag @s add stoptext
#8
execute as @s[tag=Scientist2,tag=!Prize,scores={text=8}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Dr. Mizumi: ","color":"gold"},{"text":"You may not have noticed, but I've been watching you. You "},{"text":"touched the bottom ","color":"red"},{"text":"just now. Fantastic! I'll give this to you!"}]
execute as @s[tag=Scientist2,tag=!Prize,scores={text=8}] at @s if entity @a[distance=..2] run tellraw @a ["",{"text":"You got a "},{"text":"Piece of Heart","color":"red"},{"text":"!"}]
execute as @s[tag=Scientist2,tag=!Prize,scores={text=8}] at @s if entity @a[distance=..2] run give @a minecraft:golden_carrot{display:{Name:"{\"text\":\"Heart Piece\"}"},InventoryItem:1b,HeartPiece:1b} 1
execute as @s[tag=Scientist2,tag=!Prize,scores={text=8}] at @s if entity @a[distance=..2] run function ocarina_of_time:distance_text/lake_hylia_adult/touch_bottom
#9
execute as @s[tag=Scientist2,tag=Prize,scores={text=8}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Dr. Mizumi: ","color":"gold"},{"text":"Your diving is the best in the world. Why don't you dive to the bottom of Lake Hylia?"}]
execute as @s[tag=Scientist2,tag=Prize,scores={text=8}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Bonooru
#1
execute as @s[tag=Bonooru2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Bonooru:","color":"gold"},{"text":" I am "},{"text":"Bonooru","color":"red"},{"text":", the scarecrow musical genius! I hear a song once, and I never forget it, baby!"}]
execute as @s[tag=Bonooru2,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=Bonooru2,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Bonooru:","color":"gold"},{"text":" Hey! Aren't you the fairy buddy I met a long time ago? Wow, you grew, dude! Well, here's your song... What? No, I never forget! You, you're the one who forgot...aren't you? If you have an ocarina, play that song, baby!"}]
execute as @s[tag=Bonooru2,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=Bonooru2,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Bonooru:","color":"gold"},{"text":" Play the usual tune to call Pierre! If he's nearby, he'll come out to help you, baby!"}]
execute as @s[tag=Bonooru2,scores={text=3}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Business Scrub 1
execute as @s[tag=BusinessScrub10,scores={text=1}] at @s if entity @a[distance=..3] run summon minecraft:villager ~ ~-1 ~ {Tags:["ScrubShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:20,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:carrot_on_a_stick,Count:1,tag:{Unbreakable:1b,Damage:17,HideFlags:63,NutPickup:1b,PickupItem:1b,display:{Name:"\"Deku Nuts (5)\""}}},rewardExp:0b,maxUses:1}]}}
execute as @s[tag=BusinessScrub10,scores={text=1}] at @s if entity @a[distance=..3] run tellraw @a ["",{"text":"Business Scrub: ","color":"gold"},{"text":"I surrender! In return, I will sell you Deku Nuts! "},{"text":"five ","color":"red"},{"text":"for "},{"text":"20 Rupees","color":"red"},{"text":" they are! Let's make a deal!"}]
execute as @s[tag=BusinessScrub10,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext
execute as @s[tag=BusinessScrub10,scores={text=1}] at @s if entity @a[distance=..3] run scoreboard players set @s text 0

#Business Scrub 2
execute as @s[tag=BusinessScrub11,scores={text=1}] at @s if entity @a[distance=..3] run summon minecraft:villager ~ ~-1 ~ {Tags:["ScrubShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lapis_lazuli,Count:14,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},sell:{id:shears,Count:1,tag:{display:{Name:"{\"text\":\"Arrows (30)\"}"},Unbreakable:1b,Damage:20,Item:1b,ArrowPickup:1b,PickupItem:1b,ArrowPickup30:1b}},rewardExp:0b,maxUses:1}]}}
execute as @s[tag=BusinessScrub11,scores={text=1}] at @s if entity @a[distance=..3] run tellraw @a ["",{"text":"Business Scrub: ","color":"gold"},{"text":"Knock it off! If you leave me alone, I will sell you "},{"text":"arrows","color":"red"},{"text":"! "},{"text":"Thirty ","color":"red"},{"text":"for "},{"text":"70 Rupees ","color":"red"},{"text":"they are! Let's make a deal!"}]
execute as @s[tag=BusinessScrub11,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext
execute as @s[tag=BusinessScrub11,scores={text=1}] at @s if entity @a[distance=..3] run scoreboard players set @s text 0

#Business Scrub 3
execute as @s[tag=BusinessScrub12,scores={text=1}] at @s if entity @a[distance=..3] run summon minecraft:villager ~ ~-1 ~ {Tags:["ScrubShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:40,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:tnt,Count:5,tag:{display:{Name:"\"Bomb\""}}},rewardExp:0b,maxUses:9999999}]}}
execute as @s[tag=BusinessScrub12,scores={text=1}] at @s if entity @a[distance=..3] run tellraw @a ["",{"text":"Business Scrub: ","color":"gold"},{"text":"I quit! If you let me go, I'll sell you some "},{"text":"bombs","color":"red"},{"text":"! "},{"text":"Five ","color":"red"},{"text":"for "},{"text":"40 Rupees ","color":"red"},{"text":"they are! Let's make a deal!"}]
execute as @s[tag=BusinessScrub12,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext
execute as @s[tag=BusinessScrub12,scores={text=1}] at @s if entity @a[distance=..3] run scoreboard players set @s text 0
