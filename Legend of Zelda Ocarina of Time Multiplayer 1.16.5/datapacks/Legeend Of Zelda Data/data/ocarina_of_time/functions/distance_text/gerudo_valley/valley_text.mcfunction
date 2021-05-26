#Gerudo 1
#1
execute as @s[tag=Gerudo1,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Gerudo: ","color":"gold"},{"text":"The "},{"text":"Gerudo's Fortress","color":"red"},{"text":" is located beyond this gate. A kid like you has no business there."}]
execute as @s[tag=Gerudo1,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Gerudo 2
#1
execute as @s[tag=Gerudo2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Gerudo: ","color":"gold"},{"text":"Why did you come all the way down here? What? You were just about to ask me the same thing? Well, now that you're down here, you may as well make the best of things!"}]
execute as @s[tag=Gerudo2,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Mutoh
#1
execute as @s[tag=Mutoh2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Mutoh:","color":"gold"},{"text":" I am a "},{"text":"master craftsman","color":"red"},{"text":". Those Gerudo thieves... They broke the bridge. I want to fix it, but all of my workers are gone! They said working as carpenters isn't cool, and they went to the "},{"text":"Gerudo's Fortress","color":"red"},{"text":" to become thieves... Hey, you! If you're going to the fortress, would you mind finding out what my workers are doing over there?"}]
execute as @s[tag=Mutoh2,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=Mutoh2,scores={text=1}] at @s if entity @a[distance=..2] run scoreboard players set @s text 2
#2
execute as @s[tag=Mutoh2,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Mutoh:","color":"gold"},{"text":" Hey, you! If you're going to the fortress, would you mind finding out what my workers are doing over there?"}]
execute as @s[tag=Mutoh2,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=Mutoh2,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Mutoh: ","color":"gold"},{"text":"Hey, I heard you saved my men. When they returned, we built this bridge. Look at this! Isn't it a fine bridge? They may be wimpy carpenters, but once they all got together, they got the job done."}]
execute as @s[tag=Mutoh2,scores={text=3}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Running Man
#1
execute as @s[tag=RunningMan2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Running Man: ","color":"gold"},{"text":"I'm the wandering, running man! I've run all over this land in search of competitors who have a true killer instinct! I came here to run through the Haunted Wasteland, but it doesn't look like good timing for that."},{"text":" Though I want to go back to Hyrule Field, the bridge is... Well, you can see it from here. So I'm stuck here inside this tent. I don't think I can accept your challenge right now. Heh heh!"}]
execute as @s[tag=RunningMan2,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=RunningMan2,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Running Man: ","color":"gold"},{"text":"I'm the wandering, running man! I've run all over this land in search of true competitive spirit. I beat all my challengers, man and beast. You're an athletic guy, and you look like you might have a true killer instinct too. Now that the bridge over Gerudo Valley is complete, I'm looking for a challenger to have a commemorative race against. The best time to go from here to the "},{"text":"bridge in the Lost Woods ","color":"green"},{"text":"was "},{"score":{"name":"@s","objective":"lifetime"},"color":"red"},{"text":". That's my record. Will you challenge my record?"}]
execute as @s[tag=RunningMan2,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=RunningMan2,scores={text=2}] at @s if entity @a[distance=..2] run scoreboard players set @s text 3
#3
execute as @s[tag=RunningMan2,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tag @a add RaceRunningMan
execute as @s[tag=RunningMan2,scores={text=3}] at @s if entity @a[distance=..2] run tag @s add stoptext
#4
execute as @s[tag=RunningMan2,scores={text=4}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Running Man:","color":"gold"},{"text":" Heh heh heh. Please. Go ahead."}]
execute as @s[tag=RunningMan2,scores={text=4}] at @s if entity @a[distance=..2] run tag @s add stoptext
#5
execute as @s[tag=RunningMan2,scores={text=5}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Running Man:","color":"gold"},{"text":" The best time to go from here to the"},{"text":" bridge in the Lost Woods ","color":"green"},{"text":"was "},{"score":{"name":"@s","objective":"lifetime"},"color":"red"},{"text":". That's my record. Will you challenge my record?"}]
execute as @s[tag=RunningMan2,scores={text=5}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=RunningMan2,scores={text=5}] at @s if entity @a[distance=..2] run scoreboard players set @s text 3
#6
execute as @s[tag=RunningMan2,scores={text=6}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Running Man:","color":"gold"},{"text":" Well, not perfect, but you have some guts! Unfortunately, you never can beat me. Your record is a thing of the past. Your time was "},{"score":{"name":"@s","objective":"timer"},"color":"red"},{"text":", wasn't it? That was close, but I beat you by one tick! The best time to go from here to the "},{"text":"bridge in the Lost Woods ","color":"green"},{"text":"was "},{"score":{"name":"@s","objective":"lifetime"},"color":"red"},{"text":". That's my record. Will you challenge my record?"}]
execute as @s[tag=RunningMan2,scores={text=6}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=RunningMan2,scores={text=6}] at @s if entity @a[distance=..2] run scoreboard players set @s text 3

#Ichiro
#1
execute as @s[tag=Ichiro3,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Ichiro:","color":"gold"},{"text":" The leader of the gang of thieves is "},{"text":"Nabooru","color":"red"},{"text":". She is experimenting in brainwashing many people at the ruins in the desert."}]
execute as @s[tag=Ichiro3,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=Ichiro3,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Ichiro: ","color":"gold"},{"text":"Oh, it was Ganondorf the Evil King who was behind the gang of thieves..."}]
execute as @s[tag=Ichiro3,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Sabooro
#1
execute as @s[tag=Sabooro3,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Sabooro:","color":"gold"},{"text":" When "},{"text":"Nabooru ","color":"red"},{"text":"was a long-wolf thief, she never stole from the weak, but... Now Nabooru's gang of thieves stands for cruelty and brutality. She claims to be a chivalrous robber, but...no way!"}]
execute as @s[tag=Sabooro3,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=Sabooro3,scores={text=1}] at @s if entity @a[distance=..2] run scoreboard players set @s text 2
#2
execute as @s[tag=Sabooro3,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Sabooro:","color":"gold"},{"text":" Now Nabooru's gang of thieves stands for cruelty and brutality. She claims to be a chivalrous robber, but...no way!"}]
execute as @s[tag=Sabooro3,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=Sabooro3,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Sabooro: ","color":"gold"},{"text":"Like I suspected, Nabooru was brainwashed by Ganondorf's followers..."}]
execute as @s[tag=Sabooro3,scores={text=3}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Jiro
#1
execute as @s[tag=Jiro3,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Jiro:","color":"gold"},{"text":" In Gerudo society, those who have great skill in horseback riding and archery are well respected. How about trying horseback archery at the Gerudo's Fortress? If you have a horse, a Gerudo from the fortress will set up your challenge."}]
execute as @s[tag=Jiro3,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=Jiro3,scores={text=1}] at @s if entity @a[distance=..2] run scoreboard players set @s text 2
#2
execute as @s[tag=Jiro3,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Jiro:","color":"gold"},{"text":" How about trying horseback archery at the Gerudo's Fortress? If you have a horse, a Gerudo from the fortress will set up your challenge."}]
execute as @s[tag=Jiro3,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=Jiro3,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Jiro: ","color":"gold"},{"text":"You did so great, young man!"}]
execute as @s[tag=Jiro3,scores={text=3}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Shiro
#1
execute as @s[tag=Shiro3,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Shiro:","color":"gold"},{"text":" Building a bridge over the valley is a simple task for four carpenters."}]
execute as @s[tag=Shiro3,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=Shiro3,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Shiro: ","color":"gold"},{"text":"Without the old witches, the gang of thieves isn't all that scary!"}]
execute as @s[tag=Shiro3,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Gossip Stone 1
execute as @s[tag=GossipStone27,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Responding to your mask, this strange stone statue talks to you...\n"},{"text":"Gossip Stone: ","color":"gold"},{"text":"I overheard this... They say that the thief named Nabooru, who haunts this area, is a Gerudo."}]
execute as @s[tag=GossipStone27,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

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
