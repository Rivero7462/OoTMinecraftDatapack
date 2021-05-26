#Gossip Stone 1
execute as @s[tag=GossipStone28,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Responding to your mask, this strange stone statue talks to you...\n"},{"text":"Gossip Stone: ","color":"gold"},{"text":"I overheard this... They say that the treasure you can earn in the Gerudo Training Ground is not as great as you would expect, given its difficulty!"}]
execute as @s[tag=GossipStone28,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Business Scrub 1
execute as @s[tag=BusinessScrub10,scores={text=1}] at @s if entity @a[distance=..3] run summon minecraft:villager ~ ~-1 ~ {Tags:["ScrubShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:40,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},buyB:{id:glass_bottle,Count:1,tag:{display:{Name:"\"Bottle\""}}},sell:{id:"carrot_on_a_stick",Count:1,tag:{display:{Name:"{\"text\":\"Green Potion\"}"},Unbreakable:1b,Damage:19,HideFlags:63,GreenPotion:1b}},rewardExp:0b,maxUses:1}]}}
execute as @s[tag=BusinessScrub10,scores={text=1}] at @s if entity @a[distance=..3] run tellraw @a ["",{"text":"Business Scrub: ","color":"gold"},{"text":"All right! You win! If you spare me, I will sell you a "},{"text":"Green Potion","color":"green"},{"text":" for "},{"text":"40 Rupees","color":"red"},{"text":"! Let's make a deal!"}]
execute as @s[tag=BusinessScrub10,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext
execute as @s[tag=BusinessScrub10,scores={text=1}] at @s if entity @a[distance=..3] run scoreboard players set @s text 0

#Business Scrub 2
execute as @s[tag=BusinessScrub11,scores={text=1}] at @s if entity @a[distance=..3] run summon minecraft:villager ~ ~-1 ~ {Tags:["ScrubShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:40,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},buyB:{id:glass_bottle,Count:1,tag:{display:{Name:"\"Bottle\""}}},sell:{id:"carrot_on_a_stick",Count:1,tag:{display:{Name:"{\"text\":\"Red Potion\"}"},Unbreakable:1b,Damage:20,HideFlags:63,RedPotion:1b}},rewardExp:0b,maxUses:1}]}}
execute as @s[tag=BusinessScrub11,scores={text=1}] at @s if entity @a[distance=..3] run tellraw @a ["",{"text":"Business Scrub: ","color":"gold"},{"text":"All right! You win! If you spare me, I will sell you a "},{"text":"Red Potion","color":"red"},{"text":" for "},{"text":"40 Rupees","color":"red"},{"text":"! Let's make a deal!"}]
execute as @s[tag=BusinessScrub11,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext
execute as @s[tag=BusinessScrub11,scores={text=1}] at @s if entity @a[distance=..3] run scoreboard players set @s text 0
