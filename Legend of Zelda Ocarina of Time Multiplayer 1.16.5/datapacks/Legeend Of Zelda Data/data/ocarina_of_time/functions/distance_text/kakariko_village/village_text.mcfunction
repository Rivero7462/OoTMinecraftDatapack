#Clock Soldier
#1
execute as @s[tag=Guard28,scores={text=1}] at @s unless entity @s[tag=NightText] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" Ding dong, ding dong! I'm a clock soldier of Kakariko! The current time is: Day. Hello there, son. Zelda's attendant, the great "},{"text":"Impa","color":"red"},{"text":", opened this village to the common people. We have only a small population now, but someday this place will be as lively as Hyrule Caslte Town! Oh, yes! It will! Climb up the "},{"text":"stairs at the north","color":"red"},{"text":" end of the village to find the trail that leads up Death Mountain. But you need the king's permission to actually go up the mountain."}]
execute as @s[tag=Guard28,scores={text=1}] at @s unless entity @s[tag=NightText] if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=Guard28,scores={text=1}] at @s unless entity @s[tag=NightText] if entity @a[distance=..2] run scoreboard players set @s text 2
#2
execute as @s[tag=Guard28,scores={text=2}] at @s unless entity @s[tag=NightText] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" Ding dong, ding dong! I'm a clock soldier of Kakariko! The current time is: Day."}]
execute as @s[tag=Guard28,scores={text=2}] at @s unless entity @s[tag=NightText] if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=Guard28,scores={text=1}] at @s if entity @s[tag=NightText] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" Ding dong, ding dong! I'm a clock soldier of Kakariko! The current time is: Night. Hello there, son. Zelda's attendant, the great "},{"text":"Impa","color":"red"},{"text":", opened this village to the common people. We have only a small population now, but someday this place will be as lively as Hyrule Caslte Town! Oh, yes! It will! Climb up the "},{"text":"stairs at the north","color":"red"},{"text":" end of the village to find the trail that leads up Death Mountain. But you need the king's permission to actually go up the mountain."}]
execute as @s[tag=Guard28,scores={text=1}] at @s if entity @s[tag=NightText] if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=Guard28,scores={text=1}] at @s if entity @s[tag=NightText] if entity @a[distance=..2] run scoreboard players set @s text 2
#4
execute as @s[tag=Guard28,scores={text=2}] at @s if entity @s[tag=NightText] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" Ding dong, ding dong! I'm a clock soldier of Kakariko! The current time is: Night."}]
execute as @s[tag=Guard28,scores={text=2}] at @s if entity @s[tag=NightText] if entity @a[distance=..2] run tag @s add stoptext
#5
execute as @s[tag=Guard28,scores={text=3}] at @s unless entity @s[tag=NightText] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Soldier: ","color":"gold"},{"text":"Ding dong, ding dong! The current time is: Day. By the way, do you know what happened in the castle?"}]
execute as @s[tag=Guard28,scores={text=3}] at @s unless entity @s[tag=NightText] if entity @a[distance=..2] run tag @s add stoptext
#6
execute as @s[tag=Guard28,scores={text=3}] at @s if entity @s[tag=NightText] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Soldier: ","color":"gold"},{"text":"Ding dong, ding dong! The current time is: Night. By the way, do you know what happened in the castle?"}]
execute as @s[tag=Guard28,scores={text=3}] at @s if entity @s[tag=NightText] if entity @a[distance=..2] run tag @s add stoptext

#Mutoh
#1
execute as @s[tag=Mutoh,scores={text=1}] at @s unless entity @s[tag=NightText] if entity @a[distance=..2] run tellraw @a ["",{"text":"Mutoh:","color":"gold"},{"text":" I am the "},{"text":"boss of the carpenters","color":"red"},{"text":" who Impa hired to improve this village and make it into a true city! But young men these days don't have any ambition... Do you know what I mean, kid? My workers are just running aimlessly around the village, and they're not making any progress at all. Even my own son won't work-he just wanders around all day! They're all worthless, I tell you!"}]
execute as @s[tag=Mutoh,scores={text=1}] at @s unless entity @s[tag=NightText] if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=Mutoh,scores={text=1}] at @s unless entity @s[tag=NightText] if entity @a[distance=..2] run scoreboard players set @s text 2
#1
execute as @s[tag=Mutoh,scores={text=1}] at @s if entity @s[tag=NightText] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Mutoh:","color":"gold"},{"text":" They're all worthless, I tell you!"}]
execute as @s[tag=Mutoh,scores={text=1}] at @s if entity @s[tag=NightText] if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=Mutoh,scores={text=2}] at @s unless entity @s[tag=NightText] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Mutoh:","color":"gold"},{"text":" They're all worthless, I tell you!"}]
execute as @s[tag=Mutoh,scores={text=2}] at @s unless entity @s[tag=NightText] if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=Mutoh,scores={text=2}] at @s if entity @s[tag=NightText] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @p ["",{"text":"Mutoh:","color":"gold"},{"text":" Those guys each do the work of half a man, but they still want a full man's portion! They're lazy slackers, I tell you!"}]
execute as @s[tag=Mutoh,scores={text=2}] at @s if entity @s[tag=NightText] if entity @a[distance=..2] run tag @s add stoptext

#Mutoh's Wife
#1
execute as @s[tag=MutohWife,scores={text=1}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] run tellraw @p ["",{"text":"Woman:","color":"gold"},{"text":" Hi, boy! Is this the first time you've visited this village? A great woman, "},{"text":"Impa","color":"red"},{"text":", opened this village to us poor folk. Well, make yourself at home. The food isn't ready yet, though."}]
execute as @s[tag=MutohWife,scores={text=1}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] run tag @s add stoptext
execute as @s[tag=MutohWife,scores={text=1}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] run scoreboard players set @s text 2
#2
execute as @s[tag=MutohWife,scores={text=2}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tellraw @p ["",{"text":"Woman:","color":"gold"},{"text":" Well, make yourself at home. The food isn't ready yet, though."}]
execute as @s[tag=MutohWife,scores={text=2}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] run tag @s add stoptext
#3
execute as @s[tag=MutohWife,scores={text=3}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Woman: ","color":"gold"},{"text":"The great Impa is not here. Did something happen to her?"}]
execute as @s[tag=MutohWife,scores={text=3}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] run tag @s add stoptext
#4
execute as @s[tag=MutohWife,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Woman: ","color":"gold"},{"text":"All people have hardships in their past that they would rather no one found out about. Look at the bearded man over there. I bet even someone like him has had his share of troubles in the past..."}]
execute as @s[tag=MutohWife,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run fill 1541 56 1925 1541 56 1925 minecraft:gold_block
execute as @s[tag=MutohWife,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext
execute as @s[tag=MutohWife,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] run scoreboard players set @s text 2
#5
execute as @s[tag=MutohWife,scores={text=2}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Woman: ","color":"gold"},{"text":"Look at the bearded man over there. I bet even someone like him has had his share of troubles in the past..."}]
execute as @s[tag=MutohWife,scores={text=2}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext
#6
execute as @s[tag=MutohWife,scores={text=3}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Woman: ","color":"gold"},{"text":"That bearded guy went back to the ranch. He looked so happy!"}]
execute as @s[tag=MutohWife,scores={text=3}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext

#Grog
#1
execute as @s[tag=Grog,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @p ["",{"text":"Grog:","color":"gold"},{"text":" People are disgusting. My own father and mother are disgusting. You must be disgusting too!"}]
execute as @s[tag=Grog,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Guard29
#1
execute as @s[tag=Guard29,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" This used to be the "},{"text":"great Impa's house","color":"red"},{"text":", but she doesn't live here any longer. It is now open to all villagers. You are free to go on in. This village used to be a "},{"text":"Sheikah ","color":"blue"},{"text":"village, but the great Impa opened it to everyone."}]
execute as @s[tag=Guard29,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=Guard29,scores={text=1}] at @s if entity @a[distance=..2] run scoreboard players set @s text 2
#2
execute as @s[tag=Guard29,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" This village used to be a "},{"text":"Sheikah ","color":"blue"},{"text":"village, but the great Impa opened it to everyone."}]
execute as @s[tag=Guard29,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Kakariko Buff Guy
#Day
#1
execute as @s[tag=KakarikoBuffGuy,scores={text=1}] at @s unless entity @s[tag=NightText] unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Guy:","color":"gold"},{"text":" Hey, kid! Do you always enter other people's houses without permission? Didn't your parents teach you any manners? Oh well. Did you see a lady behind this house? She's going through hard times. Oh well. If that lady asks you about Cuccos, you should listen to her."}]
execute as @s[tag=KakarikoBuffGuy,scores={text=1}] at @s unless entity @s[tag=NightText] unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run fill 1529 57 1956 1529 57 1956 minecraft:gold_block
execute as @s[tag=KakarikoBuffGuy,scores={text=1}] at @s unless entity @s[tag=NightText] unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=KakarikoBuffGuy,scores={text=1}] at @s unless entity @s[tag=NightText] unless entity @a[tag=Adult] if entity @a[distance=..2] run scoreboard players set @s text 2
#2
execute as @s[tag=KakarikoBuffGuy,scores={text=2}] at @s unless entity @s[tag=NightText] unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Guy:","color":"gold"},{"text":" If that lady asks you about Cuccos, you should listen to her."}]
execute as @s[tag=KakarikoBuffGuy,scores={text=2}] at @s unless entity @s[tag=NightText] unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
#Night
#3
execute as @s[tag=KakarikoBuffGuy,scores={text=1}] at @s if entity @s[tag=NightText] unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @p ["",{"text":"Guy:","color":"gold"},{"text":" Is visiting other people's houses at this late hour your idea of fun? You must not have had a good upbringing. Oh well. That lady takes care of Cuccos, but she is, in fact, allergic to them. Oh well."}]
execute as @s[tag=KakarikoBuffGuy,scores={text=1}] at @s if entity @s[tag=NightText] unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run fill 1528 57 1956 1528 57 1956 minecraft:gold_block
execute as @s[tag=KakarikoBuffGuy,scores={text=1}] at @s if entity @s[tag=NightText] unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=KakarikoBuffGuy,scores={text=1}] at @s if entity @s[tag=NightText] unless entity @a[tag=Adult] if entity @a[distance=..2] run scoreboard players set @s text 2
#4
execute as @s[tag=KakarikoBuffGuy,scores={text=2}] at @s if entity @s[tag=NightText] unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @p ["",{"text":"Guy:","color":"gold"},{"text":" That lady takes care of Cuccos, but she is, in fact, allergic to them. Oh well."}]
execute as @s[tag=KakarikoBuffGuy,scores={text=2}] at @s if entity @s[tag=NightText] unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
#Adult
#5
execute as @s[tag=KakarikoBuffGuy,scores={text=1}] at @s unless entity @s[tag=NightText] if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Guy: ","color":"gold"},{"text":"Hey! Young man! A grown boy like you entering a person's house without permission?! I want to talk to your parents! Oh well. This isn't my house anyway. This is the "},{"text":"great Impa's","color":"red"},{"text":" house! The great Impa has gone to the "},{"text":"graveyard ","color":"light_purple"},{"text":"to seal up the humongous creature there. Since Ganondorf appeared, many monsters have been sighted around here. Only the great Impa has kept peace in our village. You have to remember that, young man! Oh well. Speaking of the great Impa, she hasn't come back yet. I wonder what happened to her? I heard that the "},{"text":"ghost of the gravekeeper","color":"red"},{"text":" often appears in the graveyard behind this village... But no big deal."}]
execute as @s[tag=KakarikoBuffGuy,scores={text=1}] at @s unless entity @s[tag=NightText] if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run fill 1527 57 1956 1527 57 1956 minecraft:gold_block
execute as @s[tag=KakarikoBuffGuy,scores={text=1}] at @s unless entity @s[tag=NightText] if entity @a[tag=Adult,distance=..2] run tag @s add stoptext
execute as @s[tag=KakarikoBuffGuy,scores={text=1}] at @s unless entity @s[tag=NightText] if entity @a[tag=Adult,distance=..2] run scoreboard players set @s text 2
#6
execute as @s[tag=KakarikoBuffGuy,scores={text=2}] at @s unless entity @s[tag=NightText] if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Guy: ","color":"gold"},{"text":"I heard that the "},{"text":"ghost of the gravekeeper","color":"red"},{"text":" often appears in the graveyard behind this village... But no big deal."}]
execute as @s[tag=KakarikoBuffGuy,scores={text=2}] at @s unless entity @s[tag=NightText] if entity @a[tag=Adult,distance=..2] run tag @s add stoptext
#7
execute as @s[tag=KakarikoBuffGuy,scores={text=1}] at @s if entity @s[tag=NightText] if entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Guy:","color":"gold"},{"text":" If that lady asks you about Cuccos, you should listen to her."}]
execute as @s[tag=KakarikoBuffGuy,scores={text=1}] at @s if entity @s[tag=NightText] if entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext

#Ichiro1
#1
execute as @s[tag=Ichiro1,scores={text=1}] at @s unless entity @s[tag=NightText] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Ichiro:","color":"gold"},{"text":" I heard that out boss's house is just behind this house. He doesn't want any of us to know, though."}]
execute as @s[tag=Ichiro1,scores={text=1}] at @s unless entity @s[tag=NightText] if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=Ichiro1,scores={text=1}] at @s if entity @s[tag=NightText] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Ichiro:","color":"gold"},{"text":" A job where you can make a lot of money without much effort... The only thing I can think of is thievery... Is that a bad idea?"}]
execute as @s[tag=Ichiro1,scores={text=1}] at @s if entity @s[tag=NightText] if entity @a[distance=..2] run tag @s add stoptext

#Ichiro2
#1
execute as @s[tag=Ichiro2,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..3] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Ichiro:","color":"gold"},{"text":" Who's there? What a bad kid, trying to enter from the rear door! Such a bad kid... I have to tell you some juicy gossip! The boss carpenter has a son... He's the guy who sits under the tree every night... Don't tell the boss I told you that!"}]
execute as @s[tag=Ichiro2,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext

#Anju
#1
execute as @s[tag=Anju,scores={text=1}] at @s if entity @s[tag=NightText] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Anju:","color":"gold"},{"text":" Please don't tease my Cuccos!"}]
execute as @s[tag=Anju,scores={text=1}] at @s if entity @s[tag=NightText] if entity @a[distance=..2] run tag @s add stoptext
#1 2
execute as @s[tag=Anju,scores={text=1}] at @s unless entity @s[tag=NightText] if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Anju:","color":"gold"},{"text":" What should I do?! My "},{"text":"Cuccos ","color":"red"},{"text":"have all flown away! You, little boy! Please! Please help me bring them back to this pen!"}]
execute as @s[tag=Anju,scores={text=1}] at @s unless entity @s[tag=NightText] if entity @a[distance=..2] unless entity @a[tag=Adult] run tag @s add stoptext
#2
execute as @s[tag=Anju,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] unless entity @a[tag=Adult] run tellraw @a ["",{"text":"Anju:","color":"gold"},{"text":" My Cuccos have run away! Please catch six more!"}]
execute as @s[tag=Anju,scores={text=2}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] run tag @s add stoptext
#3
execute as @s[tag=Anju,scores={text=3}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Anju:","color":"gold"},{"text":" I'm still missing some Cuccos! Please round up five more!"}]
execute as @s[tag=Anju,scores={text=3}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] run tag @s add stoptext
#4
execute as @s[tag=Anju,scores={text=4}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Anju:","color":"gold"},{"text":" My Cuccos have run away! Please help me bring the other four back to this pen! Please!"}]
execute as @s[tag=Anju,scores={text=4}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] run tag @s add stoptext
#5
execute as @s[tag=Anju,scores={text=5}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Anju:","color":"gold"},{"text":" My Cuccos have run away! Please help me bring the other three back to this pen! Please!"}]
execute as @s[tag=Anju,scores={text=5}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] run tag @s add stoptext
#6
execute as @s[tag=Anju,scores={text=6}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Anju:","color":"gold"},{"text":" My Cuccos have run away! Please help me bring the other two back to this pen! Please!"}]
execute as @s[tag=Anju,scores={text=6}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] run tag @s add stoptext
#7
execute as @s[tag=Anju,scores={text=7}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Anju:","color":"gold"},{"text":" My Cuccos have run away! Please help me bring the last one back to this pen! Please!"}]
execute as @s[tag=Anju,scores={text=7}] at @s if entity @a[distance=..2] run tag @s add stoptext
#8
execute as @s[tag=Anju,scores={text=8}] at @s if entity @a[distance=..2] run tellraw @a ["",{"text":"Anju:","color":"gold"},{"text":" Thank you for finding my Cuccos. I have allergies, so I get goose bumps when I touch them. For helping me, I will give this to you. Isn't it all sparkly and pretty? Please take good care of it!"}]
execute as @s[tag=Anju,scores={text=8}] at @s unless entity @s[tag=BottleDone] if entity @a[distance=..2] run scoreboard players add @e[type=area_effect_cloud,tag=Progress] Bottle 1
execute as @s[tag=Anju,scores={text=8}] at @s unless entity @s[tag=BottleDone] if entity @a[distance=..2] run give @a minecraft:glass_bottle{display:{Name:"\"Bottle\""}}
execute as @s[tag=Anju,scores={text=8}] at @s if entity @s[tag=BottleDone] if entity @a[distance=..2] run give @a minecraft:purple_dye{display:{Name:"{\"text\":\"Purple Rupee\"}"},Item:1b}
execute as @s[tag=Anju,scores={text=8}] at @s if entity @a[distance=..2] run tag @s add BottleDone
execute as @s[tag=Anju,scores={text=8}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=Anju,scores={text=8}] at @s if entity @a[distance=..2] run scoreboard players set @s text 9
#9
execute as @s[tag=Anju,scores={text=9}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Anju:","color":"gold"},{"text":" Please don't tease my Cuccos!"}]
execute as @s[tag=Anju,scores={text=9}] at @s if entity @a[distance=..2] run tag @s add stoptext
#10
execute as @s[tag=Anju,scores={text=10}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Anju:","color":"gold"},{"text":" Hey, what are you doing?! Now go round them up, or pay for them!"}]
execute as @s[tag=Anju,scores={text=10}] at @s if entity @a[distance=..2] run tag @s add stoptext
#11
execute as @s[tag=Anju,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Anju: ","color":"gold"},{"text":"I bred a new type of miniature Cucco! I call it the "},{"text":"Pocket Cucco","color":"red"},{"text":"! I don't get goose bumps from this baby. "},{"text":"Cuccos ","color":"red"},{"text":"are very good at getting lazy, late risers out of bed. Haven't you heard of them before? It makes them very happy to crow "},{"text":"CUCCKOOOO","color":"red"},{"text":"! Especially when it wakes up a very heavy sleeper! However, my Cucco is not entirely happy right now... You... You look like you're good at handling Cuccos. Here-take this egg. After the Cucco hatches, bring it back to me after a while, and I'll check out its mood.\nYou borrowed a "},{"text":"Pocket Egg","color":"red"},{"text":"! A Pocket Cucco will hatch from it overnight. Be sure to give it back when you are done with it."}]
execute as @s[tag=Anju,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tag @a add PocketCucco
execute as @s[tag=Anju,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run fill 1538 67 1951 1538 67 1951 minecraft:gold_block
execute as @s[tag=Anju,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run give @a minecraft:shears{display:{Name:"{\"text\":\"Pocket Egg\"}"},Unbreakable:1b,Damage:34,HideFlags:63,WeirdEgg:1b}
execute as @s[tag=Anju,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext
#12
execute as @s[tag=Anju,scores={text=2}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Anju: ","color":"gold"},{"text":"Please make this Cucco happy! OK?"}]
execute as @s[tag=Anju,scores={text=2}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext
#13
execute as @s[tag=Anju,scores={text=3}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Anju: ","color":"gold"},{"text":"Oh, your Cucco looks pretty happy! He must have awakened an extremely lazy guy! You're a good Cucco keeper! I'll give you a rare, valuable Cucco, if you're interested... Its name is "},{"text":"Cojiro","color":"red"},{"text":", and it used to be my brother's Cucco. Its blue body is quite charming. It's so cute! Since my brother has gone, it's strange, but Cojiro has stopped crowing. Do you want to keep "},{"text":"Cojiro","color":"red"},{"text":"?\nYou returned the Pocket Cucco and got "},{"text":"Cojiro ","color":"red"},{"text":"in return! Unlike other Cuccos, Cojiro rarely crows. Take Cojiro to the "},{"text":"Lost Woods","color":"green"},{"text":". You may find someone there who knows this bird personally."}]
execute as @s[tag=Anju,scores={text=3}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tag @a remove PocketCucco
execute as @s[tag=Anju,scores={text=3}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run clear @a minecraft:shears{display:{Name:"{\"text\":\"Cucco\"}"},Unbreakable:1b,Damage:1,HideFlags:63,PocketCucco:1b}
execute as @s[tag=Anju,scores={text=3}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run give @a minecraft:shears{display:{Name:"{\"text\":\"Cojiro\"}"},Unbreakable:1b,Damage:2,HideFlags:63,Cojiro:1b}
execute as @s[tag=Anju,scores={text=3}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run fill 1538 68 1949 1538 68 1949 minecraft:gold_block
execute as @s[tag=Anju,scores={text=3}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext
#14
execute as @s[tag=Anju,scores={text=4}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Anju:","color":"gold"},{"text":" Please don't tease my Cuccos!"}]
execute as @s[tag=Anju,scores={text=4}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext
#15
execute as @s[tag=Anju,scores={text=5}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Anju: ","color":"gold"},{"text":"My brother must have been very lonely..."}]
execute as @s[tag=Anju,scores={text=5}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext

#Door Guy
#1
execute as @s[tag=DoorGuy,scores={text=1}] at @s unless entity @a[tag=Adult] unless entity @s[tag=NightText] if entity @a[distance=..3] unless entity @s[tag=stoptext] run tellraw @a {"text":"My little boy isn't here right now... I think he went to play in the graveyard..."}
execute as @s[tag=DoorGuy,scores={text=1}] at @s unless entity @a[tag=Adult] unless entity @s[tag=NightText] if entity @a[distance=..3] run tag @s add stoptext
#2
execute as @s[tag=DoorGuy,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @s[tag=NightText] if entity @a[distance=..3] unless entity @s[tag=stoptext] run tellraw @a {"text":"Oh, my boy is asleep right now. Please come back some other time to play with him!"}
execute as @s[tag=DoorGuy,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @s[tag=NightText] if entity @a[distance=..3] run tag @s add stoptext

#Keaton Guard
#1
execute as @s[tag=Guard30,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" The "},{"text":"road is closed","color":"red"},{"text":" beyond this point! Can't you read the sign over there? Eh? Oh, I see. You're just a kid, and you can't read yet. Ha ha hah! (Right click guard to give letter)"}]
execute as @s[tag=Guard30,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=Guard30,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" I wish I could go to the "},{"text":"mask shop","color":"red"},{"text":" in town to buy a present for my kid... ...Sigh..."}]
execute as @s[tag=Guard30,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=Guard30,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" My boy will be very happy with this! You really are Mr. Hero! Wha ha ha hah!"}]
execute as @s[tag=Guard30,scores={text=3}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Sabooro1
#1
execute as @s[tag=Sabooro1,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Sabooro:","color":"gold"},{"text":" Look at that poor girl over there. She works so hard taking care of her Cuccos, even though touching them gives her goose bumps... What a trooper! I would really like to help her! I've just been feeling so charitable these days! Don't you feel that way too?"}]
execute as @s[tag=Sabooro1,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#Shiro1
#1
execute as @s[tag=Shiro1,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Shiro:","color":"gold"},{"text":" Have you seen "},{"text":"Mr. Dampé","color":"red"},{"text":", who lives in the graveyard up ahead? It's day right now, so he's probably asleep in his hut. Why don't you go out onto the field and kill some time?"}]
execute as @s[tag=Shiro1,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#Jiro1
#1
execute as @s[tag=Jiro1,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Jiro:","color":"gold"},{"text":" All day long, we are working on many construction projects in the village. It's going to take a while before everything is done. Our boss works us very hard!"}]
execute as @s[tag=Jiro1,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Sabooro2
#1
execute as @s[tag=Sabooro2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @p ["",{"text":"Sabooro:","color":"gold"},{"text":" Look at this, kid! My beautiful, smooth hands are all worn out from working. Sob...sob..."}]
execute as @s[tag=Sabooro2,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#Shiro2
#1
execute as @s[tag=Shiro2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @p ["",{"text":"Shiro:","color":"gold"},{"text":" I'm starving! Isn't dinner ready yet? It's night already!"}]
execute as @s[tag=Shiro2,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#Jiro2
#1
execute as @s[tag=Jiro2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @p ["",{"text":"Jiro:","color":"gold"},{"text":" I'm starving! Let's eat dinner...right now!"}]
execute as @s[tag=Jiro2,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Guru-Guru
#1
execute as @s[tag=GuruGuru,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Guru-Guru:","color":"gold"},{"text":" Go around! Go around and around and around! What fun! I'm so happy! I'm a music man who loves to go around and around! Go around and around! I'm tring to come up with a musical theme inspired by this windmill...going around and around and around!"}]
execute as @s[tag=GuruGuru,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=GuruGuru,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Guru-Guru: ","color":"gold"},{"text":"Go around, go around, go around... What? It's going way too fast!"}]
execute as @s[tag=GuruGuru,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Adult Guru-Guru
#1
execute as @s[tag=GuruGuru2,scores={text=1..2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Guru-Guru: ","color":"gold"},{"text":"Oh no! A storm again! You played the ocarina again, didn't you?! Grrrrrrrrrrrrrrr!"}]
execute as @s[tag=GuruGuru2,scores={text=1..2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Boy
#1
execute as @s[tag=GraveyardBoy,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Boy: ","color":"gold"},{"text":"Little kids can't go on the "},{"text":"Heart-Pounding Gravedigging Tour","color":"red"},{"text":" described on the sign. Since I can't do that, I'm just imitating Dampé the gravekeeper all day. But with my cute face, I'm not heart-pounding at all, am I?"}]
execute as @s[tag=GraveyardBoy,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=GraveyardBoy,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Boy: ","color":"gold"},{"text":"I'm gonna dig and dig! Just like Dampé!"}]
execute as @s[tag=GraveyardBoy,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Dampe
#1
execute as @s[tag=Dampe,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Dampé:","color":"gold"},{"text":" Hey, kid! Don't mess around with the graves! I'm "},{"text":"Dampé the gravekeeper","color":"red"},{"text":"! My face may be scary, but I'm not a bad guy... Let me give you an advertisement for my side business... "},{"text":"Dampé the Gravekeeper's","color":"red"},{"text":" Heart-Pounding "},{"text":"Gravedigging Tour","color":"aqua"},{"text":"! What's gonna come out?! What's gonna come out?! When I start digging, we'll find out! Do you want me to dig here? "},{"text":"10 Rupees ","color":"red"},{"text":"for one hole (Right click Dampé to dig one hole)"}]
execute as @s[tag=Dampe,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=Dampe,scores={text=1}] at @s if entity @a[distance=..2] run fill 1611 69 1963 1611 69 1963 minecraft:gold_block
#2
execute as @s[tag=Dampe,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Dampé:","color":"gold"},{"text":" Do you want me to dig here? "},{"text":"10 Rupees ","color":"red"},{"text":"for one hole (Right click Dampé to dig one hole)"}]
execute as @s[tag=Dampe,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Dampe Book
#1
execute as @s[tag=DampeBook,scores={text=1}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Dampé's Diary:","color":"gold"},{"text":" When I dug a hole, I found a treasure that stretches-BOING! and shrinks-BOING! It's so fun. I'll never give it to anybody!"}]
execute as @s[tag=DampeBook,scores={text=1}] at @s if entity @a[distance=..1] run tag @s add stoptext
#2
execute as @s[tag=DampeBook,scores={text=1}] at @s if entity @a[tag=Adult] if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Dampé: ","color":"gold"},{"text":"Whoever reads this, please enter my grave. I will let you have my stretching, shrinking "},{"text":"keepsake","color":"red"},{"text":". I'm waiting for you. -Dampé"}]
execute as @s[tag=DampeBook,scores={text=1}] at @s if entity @a[tag=Adult] if entity @a[distance=..1] run tag @s add stoptext

#Ghost Dampe
#1
execute as @s[tag=Dampe2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Dampé: ","color":"gold"},{"text":"Hehehe, young man... You were very quick to be able to keep up with me! Hehehe! As a reward, I'm going to give you my treasure. It's called the "},{"text":"Hookshot","color":"red"},{"text":"! Its spring-loaded chain will pull you to any spot where its hook sticks. Doesn't that sound cool? I'm sure it will help you! I live here now, so come back again sometime. I'll give you something cool! One more thing! Be careful on your way back! Heheheh..."}]
execute as @s[tag=Dampe2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run clone 1638 42 2004 1638 42 2004 1638 42 2013
execute as @s[tag=Dampe2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={lifetime=17..}] run scoreboard players set @s lifetime 17
execute as @s[tag=Dampe2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tag @a add FinalSheikText
execute as @s[tag=Dampe2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run function ocarina_of_time:moving_things/kakariko_village/race_reset
execute as @s[tag=Dampe2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run scoreboard players set @s text 0
#2
execute as @s[tag=Dampe2,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Dampé: ","color":"gold"},{"text":"You're back, young man... Was the present I gave to you fun and useful?"}]
execute as @s[tag=Dampe2,scores={text=2},tag=Heart] at @s unless entity @s[tag=Rupee] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"You got a "},{"text":"Piece of Heart","color":"red"},{"text":"!"}]
execute as @s[tag=Dampe2,scores={text=2},tag=Heart] at @s unless entity @s[tag=Rupee] if entity @a[distance=..2] unless entity @s[tag=stoptext] run give @a minecraft:golden_carrot{display:{Name:"{\"text\":\"Heart Piece\"}"},InventoryItem:1b,HeartPiece:1b} 1
execute as @s[tag=Dampe2,scores={text=2},tag=Rupee] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run give @p minecraft:red_dye{display:{Name:"{\"text\":\"Red Rupee\"}"},Item:1b} 1
execute as @s[tag=Dampe2,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run function ocarina_of_time:moving_things/kakariko_village/race_reset
execute as @s[tag=Dampe2,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run scoreboard players set @s text 0

#Blue Twin
#1
execute as @s[tag=BlueTwin2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=NightText] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Blue Twin: ","color":"gold"},{"text":"I tell you, I saw him! I saw the ghostly figure of Dampé the gravekeeper sinking into his grave. It looked like he was holding some kind of "},{"text":"treasure","color":"red"},{"text":"!"}]
execute as @s[tag=BlueTwin2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=NightText] run tag @s add stoptext
#2
execute as @s[tag=BlueTwin2,scores={text=1}] at @s if entity @a[distance=..2] if entity @s[tag=NightText] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Twin: ","color":"gold"},{"text":"Nobody believes what I've been telling them all these past seven years!"}]
execute as @s[tag=BlueTwin2,scores={text=1}] at @s if entity @a[distance=..2] if entity @s[tag=NightText] run tag @s add stoptext
#3
execute as @s[tag=BlueTwin2,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=NightText] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Twin: ","color":"gold"},{"text":"There he is! It's him! He's the one who dropped from the sky surrounded by a blue light! Now do you believe me?"}]
execute as @s[tag=BlueTwin2,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=NightText] run tag @s add stoptext
#4
execute as @s[tag=BlueTwin2,scores={text=2}] at @s if entity @a[distance=..2] if entity @s[tag=NightText] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Twin: ","color":"gold"},{"text":"The fire almost consumed us all! But together, we all were able to put out the fire! Pretty good work, don't you think?"}]
execute as @s[tag=BlueTwin2,scores={text=2}] at @s if entity @a[distance=..2] if entity @s[tag=NightText] run tag @s add stoptext

#Red Twin
#1
execute as @s[tag=RedTwin2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=NightText] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Red Twin: ","color":"gold"},{"text":"Wah hah hah hah hah hah! Look at this guy! Ever since he escaped from Hyrule Castle Town, he's become even more timid!"}]
execute as @s[tag=RedTwin2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=NightText] run tag @s add stoptext
#2
execute as @s[tag=RedTwin2,scores={text=1}] at @s if entity @a[distance=..2] if entity @s[tag=NightText] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Red Twin: ","color":"gold"},{"text":"Wah hah hah hah hah hah! Those are some funny-looking clothes, man!"}]
execute as @s[tag=RedTwin2,scores={text=1}] at @s if entity @a[distance=..2] if entity @s[tag=NightText] run tag @s add stoptext
#3
execute as @s[tag=RedTwin2,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=NightText] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Twin: ","color":"gold"},{"text":"Wah hah hah hah hah hah! He must have been seeing things! Wah hah hah hah hah hah!"}]
execute as @s[tag=RedTwin2,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=NightText] run tag @s add stoptext
#4
execute as @s[tag=RedTwin2,scores={text=2}] at @s if entity @a[distance=..2] if entity @s[tag=NightText] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Twin: ","color":"gold"},{"text":"Wah hah hah hah hah hah! When times are touch, laughter is the best medicine! That's what my dad always said!"}]
execute as @s[tag=RedTwin2,scores={text=2}] at @s if entity @a[distance=..2] if entity @s[tag=NightText] run tag @s add stoptext

#Shikashi
#1
execute as @s[tag=Shikashi2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=NightText] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Shikashi: ","color":"gold"},{"text":"A long time ago...there was a man in this very village who had an eye they said could see the truth! Now usually, you have to train your mind's eye most strenuously to actually see the truth... But this fella, no-they say he had a different way of doing things... His house stood where the well is now..."}]
execute as @s[tag=Shikashi2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=NightText] run tag @s add stoptext
#2
execute as @s[tag=Shikashi2,scores={text=1}] at @s if entity @a[distance=..2] if entity @s[tag=NightText] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Shikashi: ","color":"gold"},{"text":"Folks around here tell of a "},{"text":"fabulously rich family","color":"red"},{"text":" that once lived in one of the houses in this village... But they say that the entire family was cursed to their greed! Who knows what might happen to those who are consumed by greed..."}]
execute as @s[tag=Shikashi2,scores={text=1}] at @s if entity @a[distance=..2] if entity @s[tag=NightText] run tag @s add stoptext

#Beard Guy
#1
execute as @s[tag=BeardGuy2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=NightText] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Guy: ","color":"gold"},{"text":"The windmill draws water up from the depths of the well. Now the well is dried up, though. Hrrrrm..."}]
execute as @s[tag=BeardGuy2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=NightText] run tag @s add stoptext
#2
execute as @s[tag=BeardGuy2,scores={text=1}] at @s if entity @a[distance=..2] if entity @s[tag=NightText] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Guy: ","color":"gold"},{"text":"The lady here is really generous. She even took care of the carpenters when they were here!"}]
execute as @s[tag=BeardGuy2,scores={text=1}] at @s if entity @a[distance=..2] if entity @s[tag=NightText] run tag @s add stoptext

#Honey
#1
execute as @s[tag=Honey2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Honey: ","color":"gold"},{"text":"Hee hee... Violating our personal space! He must have something better to do... Don't you agree darling?"}]
execute as @s[tag=Honey2,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Darling
#1
execute as @s[tag=Darling2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Darling: ","color":"gold"},{"text":"Heh... What an annoying person, interrupting us like this... Don't you agree, my love?"}]
execute as @s[tag=Darling2,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Platform Guy
#1
execute as @s[tag=PlatformGuy2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Guy: ","color":"gold"},{"text":"Look at me! I'm on top of the world! It really bothers me to see anyone at a higher level than I am! I have to be on top!"}]
execute as @s[tag=PlatformGuy2,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Beggar
#1
execute as @s[tag=Beggar2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Beggar: ","color":"gold"},{"text":"Please... Please sell me the "},{"text":"contents of a bottle","color":"red"},{"text":"... Please..."}]
execute as @s[tag=Beggar2,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext

#MamamuYan
#1
execute as @s[tag=MamamuYan2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Mamamu Yan: ","color":"gold"},{"text":"Look at him...the man with the beard. I think he was fired from his job at the ranch... He's always just lazing around-morning, noon, and night. He's an awfully carefree guy during such hard times."}]
execute as @s[tag=MamamuYan2,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=MamamuYan2,scores={text=1}] at @s if entity @a[distance=..2] run scoreboard players set @s text 2
#2
execute as @s[tag=MamamuYan2,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Mamamu Yan: ","color":"gold"},{"text":"He's always just lazing around-morning, noon, and night. He's an awfully carefree guy during such hard times."}]
execute as @s[tag=MamamuYan2,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=MamamuYan2,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Mamamu Yan: ","color":"gold"},{"text":"That lazy man-he kind of reminded me of my little Richard... What's that? You say you've never heard of my little Richard? He was such a famous puppy! You seriously haven't heard of him?"}]
execute as @s[tag=MamamuYan2,scores={text=3}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Talon Sleep
#1
execute as @s[tag=VillageTalonSleep1,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Talon: ","color":"gold"},{"text":"Zzzzzzz... Malon...doing all right... Mumble...mumble... Sorry to make you worry..."}]
execute as @s[tag=VillageTalonSleep1,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Talon Awake
#1
execute as @s[tag=VillageTalon,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Talon: ","color":"gold"},{"text":"Ingo took over the Lon Lon Ranch. They call it "},{"text":"Ingo Ranch","color":"red"},{"text":" nowadays. I was kicked out of there, and look at me now! My girl, Malon, still works at the ranch... I'm worried about her..."}]
execute as @s[tag=VillageTalon,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=VillageTalon,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Talon: ","color":"gold"},{"text":"Did you save Malon? Thanks! I'm goin' back to the ranch then! Yeehah!"}]
execute as @s[tag=VillageTalon,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run fill 1540 55 1916 1540 55 1916 minecraft:gold_block
execute as @s[tag=VillageTalon,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tag @a add TalonReturns
execute as @s[tag=VillageTalon,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Roof Guy
#1
execute as @s[tag=RoofGuy,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Guy:","color":"gold"},{"text":" Hey! Good to see you up here! I'll give you this as a memento."}]
execute as @s[tag=RoofGuy,scores={text=1}] at @s if entity @a[distance=..2] run tellraw @a ["",{"text":"You got a "},{"text":"Piece of Heart","color":"red"},{"text":"!"}]
execute as @s[tag=RoofGuy,scores={text=1}] at @s if entity @a[distance=..2] run give @a minecraft:golden_carrot{display:{Name:"{\"text\":\"Heart Piece\"}"},InventoryItem:1b,HeartPiece:1b} 1
execute as @s[tag=RoofGuy,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=RoofGuy,scores={text=1}] at @s if entity @a[distance=..2] run scoreboard players set @s text 2
#2
execute as @s[tag=RoofGuy,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Guy:","color":"gold"},{"text":" To get a good view, press F5 to look around."}]
execute as @s[tag=RoofGuy,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Granny
#1
execute as @s[tag=Granny,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Granny: ","color":"gold"},{"text":"I heard that the "},{"text":"Lost Woods","color":"green"},{"text":", where fairies live, is a strange place with many mysterious smells. I wish I could just once make medicine with some of the strange things I might find there... I may not be able to see very well anymore, but my nose still works fine! Hehehe!"}]
execute as @s[tag=Granny,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=Granny,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Granny: ","color":"gold"},{"text":"Ultimate potion! How about "},{"text":"100 Rupees","color":"red"},{"text":"?"}]
execute as @s[tag=Granny,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Shooting Gallery
#1
execute as @s[tag=ShootingGallery2,scores={text=1}] at @s if entity @a[distance=..3] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Owner: ","color":"gold"},{"text":"All right. You don't have to if you don't want to."}]
execute as @s[tag=ShootingGallery2,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext

#Skeleton
#1
execute as @s[tag=Skeleton1,scores={text=1}] at @s if entity @a[distance=..3] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Those who break into the Royal Tomb will be obstructed by the ","color":"white"},{"text":"lurkers in the dark","color":"red"},{"text":"."}]
execute as @s[tag=Skeleton1,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext

#Sharp Grave
#1
execute as @s[tag=SharpGrave,scores={text=1}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a {"text":"Royal Composer Bros.\nSharp the Elder\nR.I.P."}
execute as @s[tag=SharpGrave,scores={text=1}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] unless block 1641 75 1953 minecraft:gold_block run summon minecraft:armor_stand 1639 78 1945 {Tags:["Sharp"],Marker:1b,Rotation:[90f],Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:81}}],DisabledSlots:4144959}
execute as @s[tag=SharpGrave,scores={text=1}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] unless block 1641 75 1953 minecraft:gold_block run summon minecraft:zombie 1639 78 1945 {Tags:["Sharp","Invisible","Fire"],Rotation:[90f],NoGravity:1b,Silent:1b,Health:10,Attributes:[{Name:"generic.attack_damage",Base:1}],DeathLootTable:"ocarina_of_time:entities/nothing"}
execute as @s[tag=SharpGrave,scores={text=1}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run fill 1641 75 1953 1641 75 1953 minecraft:gold_block
execute as @s[tag=SharpGrave,scores={text=1}] at @s if entity @a[distance=..1] run tag @s add stoptext

#Flat Grave
#1
execute as @s[tag=FlatGrave,scores={text=1}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a {"text":"Royal Composer Bros.\nFlat the Younger\nR.I.P."}
execute as @s[tag=FlatGrave,scores={text=1}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] unless block 1641 75 1954 minecraft:gold_block run summon minecraft:armor_stand 1639 78 1954 {Tags:["Flat"],Marker:1b,Rotation:[90f],Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:82}}],DisabledSlots:4144959}
execute as @s[tag=FlatGrave,scores={text=1}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] unless block 1641 75 1954 minecraft:gold_block run summon minecraft:zombie 1639 78 1954 {Tags:["Flat","Invisible","Fire"],Rotation:[90f],NoGravity:1b,Silent:1b,Health:10,Attributes:[{Name:"generic.attack_damage",Base:1}],DeathLootTable:"ocarina_of_time:entities/nothing"}
execute as @s[tag=FlatGrave,scores={text=1}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run fill 1641 75 1954 1641 75 1954 minecraft:gold_block
execute as @s[tag=FlatGrave,scores={text=1}] at @s if entity @a[distance=..1] run tag @s add stoptext

#Sharp Soul
#1
execute as @s[tag=Sharp,tag=Die,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Sharp: ","color":"gold"},{"text":"GYAAAAH! YOU KILLED ME... Unbelievable! Oh, what? You're not one of Ganondorf's men, are you? Because of my role as a ghost, I had to act like that. I apologize. Now then, let me introduce myself. Ahem... I am one of the ghostly Composer Brothers of Kakariko Village. All the people in this village are born to serve the Royal Family of Hyrule. We brothers also served the Royal Family and were assigned to study the hereditary mystic powers of the family. Though we never could figure out the power of the Triforce, we had almost completed our "},{"text":"study of controlling time","color":"red"},{"text":" with the tones of ocarinas. Uh, I mean... Actually, we did complete that study! We would have been famous, if that hateful Ganondorf had not tried to steal our results. We could never let him reap the fruits of our research! That's why we gave our lives to protect the secret."}]
execute as @s[tag=Sharp,tag=Die,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run fill 1643 75 1944 1643 75 1944 minecraft:gold_block
execute as @s[tag=Sharp,tag=Die,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=Sharp,tag=Die,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Flat: ","color":"gold"},{"text":"GYAAAAH! I'M DEAD AGAIN! Wait. Have we met before? Somehow you remind me of...Princess Zelda... Hmm... Since you may have some connection with the Royal Family, I will tell you a little more of our tale. Back then, people called us great composers because of the many musical masterpieces we wrote. But we brothers were not just composers. We had a mission to analyze the mysterious powers of Hyrule's Royal Family. Our names would be a part of Hyrule's history if we could complete our research! We kept our study extremely secret until we completed it. To tell the truth, each of us was studying a different song-one to "},{"text":"summon the sun ","color":"red"},{"text":"and another to "},{"text":"summon the moon","color":"red"},{"text":". If you were really sent by a member of the Royal Family, I will tell you about the results of our study. We inscribed it on the "},{"text":"royal tombstone","color":"red"},{"text":". As a messenger of the Royal Family, you should show your royal credentials on top of the Triforce mark..."}]
execute as @s[tag=Sharp,tag=Die,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=Sharp,tag=Die,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Sharp: ","color":"gold"},{"text":"GYAAAH! You killed me! Huh? Oh, it's you. Did you try to play the "},{"text":"Sun's Song","color":"yellow"},{"text":"? Like I told you before, with that song, you can turn day to night or night to day whenever you want. When you're in darkness, that song should bring the sun's light to you. You should try it."}]
execute as @s[tag=Sharp,tag=Die,scores={text=3}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Flat Soul
#1
execute as @s[tag=Flat,tag=Die,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Flat: ","color":"gold"},{"text":"GYAAAAH! YOU KILLED ME... Unbelievable! Oh, what? You're not one of Ganondorf's men, are you? Because of my role as a ghost, I had to act like that. I apologize. Now then, let me introduce myself. Ahem... I am one of the ghostly Composer Brothers of Kakariko Village. All the people in this village are born to serve the Royal Family of Hyrule. We brothers also served the Royal Family and were assigned to study the hereditary mystic powers of the family. Though we never could figure out the power of the Triforce, we had almost completed our "},{"text":"study of controlling time","color":"red"},{"text":" with the tones of ocarinas. Uh, I mean... Actually, we did complete that study! We would have been famous, if that hateful Ganondorf had not tried to steal our results. We could never let him reap the fruits of our research! That's why we gave our lives to protect the secret."}]
execute as @s[tag=Flat,tag=Die,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run fill 1643 75 1945 1643 75 1945 minecraft:gold_block
execute as @s[tag=Flat,tag=Die,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=Flat,tag=Die,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Flat: ","color":"gold"},{"text":"GYAAAAH! I'M DEAD AGAIN! Wait. Have we met before? Somehow you remind me of...Princess Zelda... Hmm... Since you may have some connection with the Royal Family, I will tell you a little more of our tale. Back then, people called us great composers because of the many musical masterpieces we wrote. But we brothers were not just composers. We had a mission to analyze the mysterious powers of Hyrule's Royal Family. Our names would be a part of Hyrule's history if we could complete our research! We kept our study extremely secret until we completed it. To tell the truth, each of us was studying a different song-one to "},{"text":"summon the sun ","color":"red"},{"text":"and another to "},{"text":"summon the moon","color":"red"},{"text":". If you were really sent by a member of the Royal Family, I will tell you about the results of our study. We inscribed it on the "},{"text":"royal tombstone","color":"red"},{"text":". As a messenger of the Royal Family, you should show your royal credentials on top of the Triforce mark..."}]
execute as @s[tag=Flat,tag=Die,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=Flat,tag=Die,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Flat: ","color":"gold"},{"text":"GYAAAH! You killed me! Huh? Oh, it's you. Did you try to play the "},{"text":"Sun's Song","color":"yellow"},{"text":"? Like I told you before, with that song, you can turn day to night or night to day whenever you want. When you're in darkness, that song should bring the sun's light to you. You should try it."}]
execute as @s[tag=Flat,tag=Die,scores={text=3}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Gossip Stone 1
execute as @s[tag=GossipStone29,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Responding to your mask, this strange stone statue talks to you...\n"},{"text":"Gossip Stone: ","color":"gold"},{"text":"I overheard this... They say that there is a secret near a tree in Kakriko Village."}]
execute as @s[tag=GossipStone29,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Cursed Man
#1
execute as @s[tag=CursedMan,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Cursed Man: ","color":"gold"},{"text":"We all look like this because of the spiders' curse. If every "},{"text":"Spider of the Curse ","color":"red"},{"text":"in the entire world was destroyed, the curse would be broken. When you destroy a Spider of the Curse, a token will appear. Collect it as proof of your achievement. The number in your Skulltula "},{"text":"Advancements Tab","color":"green"},{"text":" indicates how many Spiders of the Curse you have destroyed so far. Look for them not only out in the open, but also inside the dungeons. Of course, this is just our dream... You don't have to do it if you don't want to... If you break the curse on my family, we will make you "},{"text":"very rich","color":"red"},{"text":"..."}]
execute as @s[tag=CursedMan,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=CursedMan,scores={text=1}] at @s if entity @a[distance=..2] run scoreboard players set @s text 2
#2
execute as @s[tag=CursedMan,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Cursed Man: ","color":"gold"},{"text":"If you break the curse on my family, we will make you "},{"text":"very rich","color":"red"},{"text":"..."}]
execute as @s[tag=CursedMan,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=CursedMan,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Cursed Man: ","color":"gold"},{"text":"We look like this because of the spiders' curse. But... Since you've destroyed "},{"score":{"name":"@a","objective":"GoldenSkullToken"},"color":"red"},{"text":" Spiders of the Curse, the curse is starting to weaken!"},{"text":" Did the kids who returned to normal give you any rewards? You should know that the only way to become ","color":"white"},{"text":"very rich ","color":"red"},{"text":"is to destroy as many Spiders of the Curse as possible! There are some tricks to finding them all! First of all, you'll have to hunt at night. Secondly, keep in mind that they love soft soil... Pay close attention to your surroundings! Please-we're counting on you!"}]
execute as @s[tag=CursedMan,scores={text=3}] at @s if entity @a[distance=..2] run tag @s add stoptext
#4
execute as @s[tag=CursedMan,scores={text=4}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Cursed Man: ","color":"gold"},{"text":"Since you've destroyed ","color":"white"},{"score":{"name":"@a","objective":"GoldenSkullToken"},"color":"red"},{"text":" Spiders of the Curse, the curse is starting to weaken! Did the kids who returned to normal give you any rewards? You should know that the only way to become ","color":"white"},{"text":"very rich ","color":"red"},{"text":"is to destroy as many Spiders of the Curse as possible! There are some tricks to finding them all! First of all, you'll have to hunt at night. Secondly, keep in mind that they love soft soil... Pay close attention to your surroundings! Please-we're counting on you!"}]
execute as @s[tag=CursedMan,scores={text=4}] at @s if entity @a[distance=..2] run tag @s add stoptext
#5
execute as @s[tag=CursedMan,scores={text=5}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Cursed Man: ","color":"gold"},{"text":"Thank you for saving my kids. What? Me? Oh, that's OK... You have already destroyed "},{"score":{"name":"@a","objective":"GoldenSkullToken"},"color":"red"},{"text":" Spiders of the Curse so far, so...that's fine...don't worry about me..."}]
execute as @s[tag=CursedMan,scores={text=5}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Uncursed Man
#1
execute as @s[tag=UncursedMan,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Man: ","color":"gold"},{"text":"Since you've destroyed ","color":"white"},{"score":{"name":"@a","objective":"GoldenSkullToken"},"color":"red"},{"text":" Spiders of the Curse, the curse on me has been broken. Thank you! Here is a token of my appreciation! Please take it.","color":"white"}]
execute as @s[tag=UncursedMan,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run give @a minecraft:yellow_dye{display:{Name:"{\"text\":\"Huge Rupee\"}"},Item:1b}
execute as @s[tag=UncursedMan,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=UncursedMan,scores={text=1}] at @s if entity @a[distance=..2] run scoreboard players set @s text 2
#2
execute as @s[tag=UncursedMan,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Man: ","color":"gold"},{"text":"We'll be careful not to get cursed again!"}]
execute as @s[tag=UncursedMan,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Cursed Child
execute as @s[tag=CursedChild,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Cursed Child: ","color":"gold"},{"text":"Yeaaarrgh! I'm cursed!"}]
execute as @s[tag=CursedChild,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Uncursed Children
execute as @s[tag=UncursedChild,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Child: ","color":"gold"},{"text":"The curse has been broken! Thank you! Here's a reward for you!"}]
execute as @s[tag=UncursedChild,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Child: ","color":"gold"},{"text":"Please save my other brothers too! I'm sure they will give you something a lot better! Will you do it?!"}]
execute as @s[tag=UncursedChild,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=UncursedChild,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Child: ","color":"gold"},{"text":"I'm so happy that everyone is back to normal!"}]
execute as @s[tag=UncursedChild,scores={text=3}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=UncursedChild,scores={text=4}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Child: ","color":"gold"},{"text":"We'll be careful not to get cursed again!"}]
execute as @s[tag=UncursedChild,scores={text=4}] at @s if entity @a[distance=..2] run tag @s add stoptext
#1
execute as @s[tag=UncursedChild1,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"You got an "},{"text":"Adult's Wallet","color":"blue"},{"text":"! Adults are allowed to carry a lot of money. Now you can hold up to "},{"text":"200 Rupees","color":"yellow"},{"text":"."}]
execute as @s[tag=UncursedChild1,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run advancement grant @a only minecraft:_gear/adult_wallet
execute as @s[tag=UncursedChild1,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tag @e[type=area_effect_cloud,tag=Wallet] add AdultWallet
#2
execute as @s[tag=UncursedChild2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"You obtained the "},{"text":"Shard of Agony","color":"red"},{"text":"! This unique crystal resonates when brought near something secret or hidden."}]
execute as @s[tag=UncursedChild2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run advancement grant @a only minecraft:_gear/shard_agony
execute as @s[tag=UncursedChild2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tag @a add ShardAgony
#3
execute as @s[tag=UncursedChild3,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"You got a "},{"text":"Giant's Wallet","color":"blue"},{"text":"! What a huge wallet! Now you can carry up to "},{"text":"500 Rupees","color":"yellow"},{"text":"."}]
execute as @s[tag=UncursedChild3,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run advancement grant @a only minecraft:_gear/giant_wallet
execute as @s[tag=UncursedChild3,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tag @e[type=area_effect_cloud,tag=Wallet] add GiantWallet
#4
execute as @s[tag=UncursedChild4,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"You got "},{"text":"Bombchu","color":"red"},{"text":"!"}]
execute as @s[tag=UncursedChild4,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run give @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Bombchu (10)\"}"},Unbreakable:1b,HideFlags:63,BombchuPickup:1b,BombchuPickup10:1b,PickupItem:1b,Item:1b}
#5
execute as @s[tag=UncursedChild5,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"You got a "},{"text":"Piece of Heart","color":"red"},{"text":"!"}]
execute as @s[tag=UncursedChild5,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run give @a minecraft:golden_carrot{display:{Name:"{\"text\":\"Heart Piece\"}"},InventoryItem:1b,HeartPiece:1b} 1
execute as @s[tag=UncursedChild,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=UncursedChild,scores={text=1}] at @s if entity @a[distance=..2] run scoreboard players set @s text 2
