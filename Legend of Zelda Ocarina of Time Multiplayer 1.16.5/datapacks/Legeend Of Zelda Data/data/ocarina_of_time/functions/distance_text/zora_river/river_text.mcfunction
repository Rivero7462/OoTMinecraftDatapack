#Bean Guy
#1
execute as @s[tag=BeanGuy,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Bean Guy: ","color":"gold"},{"text":"Chomp chomp chomp... How about some "},{"text":"Magic Beans","color":"red"},{"text":"? They aren't selling very well... How about..."},{"text":"10 Rupees","color":"red"},{"text":" for one? (Right-click to buy beans)"}]
execute as @s[tag=BeanGuy,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=BeanGuy,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Bean Guy: ","color":"gold"},{"text":"Chomp chomp chomp... How about some "},{"text":"Magic Beans","color":"red"},{"text":"? Well, they're not that popular yet. How about..."},{"text":"20 Rupees ","color":"red"},{"text":"for one?"}]
execute as @s[tag=BeanGuy,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=BeanGuy,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Bean Guy: ","color":"gold"},{"text":"Chomp chomp chomp... How about some "},{"text":"Magic Beans","color":"red"},{"text":"? They are getting to be quite popular... "},{"text":"30 Rupees","color":"red"},{"text":" for one. How about it?"}]
execute as @s[tag=BeanGuy,scores={text=3}] at @s if entity @a[distance=..2] run tag @s add stoptext
#4
execute as @s[tag=BeanGuy,scores={text=4}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Bean Guy: ","color":"gold"},{"text":"Chomp chomp chomp... How about some "},{"text":"Magic Beans","color":"red"},{"text":"? They're all the rage! "},{"text":"40 Rupees","color":"red"},{"text":" for one."}]
execute as @s[tag=BeanGuy,scores={text=4}] at @s if entity @a[distance=..2] run tag @s add stoptext
#5
execute as @s[tag=BeanGuy,scores={text=5}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Bean Guy: ","color":"gold"},{"text":"Chomp chomp chomp... We have the popular "},{"text":"Magic Beans","color":"red"},{"text":"! You'll regret it if you don't buy them now! "},{"text":"50 Rupees","color":"red"},{"text":" for one. (Just for now.)"}]
execute as @s[tag=BeanGuy,scores={text=5}] at @s if entity @a[distance=..2] run tag @s add stoptext
#6
execute as @s[tag=BeanGuy,scores={text=6}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Bean Guy: ","color":"gold"},{"text":"Chomp chomp chomp... These are the super-popular "},{"text":"Magic Beans","color":"red"},{"text":"! In case you're wondering, they'll soon be sold out! Super price! "},{"text":"60 Rupees","color":"red"},{"text":" for one!"}]
execute as @s[tag=BeanGuy,scores={text=6}] at @s if entity @a[distance=..2] run tag @s add stoptext
#7
execute as @s[tag=BeanGuy,scores={text=7}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Bean Guy: ","color":"gold"},{"text":"Chomp chomp chomp... We have the super-rare "},{"text":"Magic Beans","color":"red"},{"text":"! This could be your last chance! Special price! "},{"text":"70 Rupees","color":"red"},{"text":" for one piece!"}]
execute as @s[tag=BeanGuy,scores={text=7}] at @s if entity @a[distance=..2] run tag @s add stoptext
#8
execute as @s[tag=BeanGuy,scores={text=8}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Bean Guy: ","color":"gold"},{"text":"Chomp chomp chomp... We have the legendary "},{"text":"Magic Beans","color":"red"},{"text":"! I'll sell them only to you! Super price! "},{"text":"80 Rupees","color":"red"},{"text":" for one piece!"}]
execute as @s[tag=BeanGuy,scores={text=8}] at @s if entity @a[distance=..2] run tag @s add stoptext
#9
execute as @s[tag=BeanGuy,scores={text=9}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Bean Guy: ","color":"gold"},{"text":"Chomp chomp chomp... Do you want..."},{"text":"Magic Beans","color":"red"},{"text":"?! They aren't cheap, but...do you still want them? I can't let them go for more than "},{"text":"90 Rupees","color":"red"},{"text":" apiece!"}]
execute as @s[tag=BeanGuy,scores={text=9}] at @s if entity @a[distance=..2] run tag @s add stoptext
#10
execute as @s[tag=BeanGuy,scores={text=10}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Bean Guy: ","color":"gold"},{"text":"Chomp chomp chomp... We have..."},{"text":"Magic Beans","color":"red"},{"text":"! Do you want them...huh? Huh? "},{"text":"100 Rupees","color":"red"},{"text":" for one piece! Keyahahah!"}]
execute as @s[tag=BeanGuy,scores={text=10}] at @s if entity @a[distance=..2] run tag @s add stoptext
#11
execute as @s[tag=BeanGuy,scores={text=11}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Bean Guy: ","color":"gold"},{"text":"Oh, too bad! We're sold out! Chomp chomp...What? Oh, these beans are not for sale!"}]
execute as @s[tag=BeanGuy,scores={text=11}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Gossip Stone 1
execute as @s[tag=GossipStone19,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Responding to your mask, this strange stone statue talks to you...\n"},{"text":"Gossip Stone: ","color":"gold"},{"text":"I overheard this... They say that there is a man who can always be found running around in Hyrule Field."}]
execute as @s[tag=GossipStone19,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#Gossip Stone 2
execute as @s[tag=GossipStone20,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Responding to your mask, this strange stone statue talks to you...\n"},{"text":"Gossip Stone: ","color":"gold"},{"text":"I overheard this... They say that Princess Zelda's attendant is actually one of the Sheikah, who many thought had died out."}]
execute as @s[tag=GossipStone20,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

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

