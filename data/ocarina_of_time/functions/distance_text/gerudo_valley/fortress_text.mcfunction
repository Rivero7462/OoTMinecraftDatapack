#Ichiro
#1
execute as @s[tag=JailCarpenter,scores={text=1}] at @s if entity @a[distance=..2] unless block ^4 ^1 ^ minecraft:barrier unless block ^-4 ^1 ^ minecraft:barrier unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Ichiro: ","color":"gold"},{"text":"Did you come here to save me? Oh, that's just swell! I'm "},{"text":"Ichiro the carpenter","color":"red"},{"text":". We were really interested in joining their all-female group, but they locked us up like this just because we're men! We don't care about the Gerudo anymore! They're so rude! "},{"text":"3 of my fellows","color":"red"},{"text":" have also been captured, so please help them escape too!"}]
execute as @s[tag=JailCarpenter,scores={text=1}] at @s if entity @a[distance=..2] unless block ^4 ^1 ^ minecraft:barrier unless block ^-4 ^1 ^ minecraft:barrier unless entity @s[tag=stoptext] run function ocarina_of_time:distance_text/gerudo_valley/carpenter
#2
execute as @s[tag=JailCarpenter,scores={text=2}] at @s if entity @a[distance=..2] unless block ^4 ^1 ^ minecraft:barrier unless block ^-4 ^1 ^ minecraft:barrier unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Jiro: ","color":"gold"},{"text":"You're a fine lad! Thank you for coming to save me! I'm "},{"text":"Jiro the carpenter","color":"red"},{"text":". These women are so scary! I'd rather work as a carpenter than join them! I can't wait to say good-bye to this place! "},{"text":"2 of my buddies","color":"red"},{"text":" are still being held prisoner. Will you please get them out too?"}]
execute as @s[tag=JailCarpenter,scores={text=2}] at @s if entity @a[distance=..2] unless block ^4 ^1 ^ minecraft:barrier unless block ^-4 ^1 ^ minecraft:barrier unless entity @s[tag=stoptext] run function ocarina_of_time:distance_text/gerudo_valley/carpenter
#3
execute as @s[tag=JailCarpenter,scores={text=3}] at @s if entity @a[distance=..2] unless block ^4 ^1 ^ minecraft:barrier unless block ^-4 ^1 ^ minecraft:barrier unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Sabooro: ","color":"gold"},{"text":"Thanks, boy! You're fantastic! I'm "},{"text":"Sabooro the carpenter","color":"red"},{"text":". Have you seen out boss, boy? He's probably worried about me! I have to get back to him immediately! "},{"text":"1 more of our workers","color":"red"},{"text":" is still a prisoner. Please save him!"}]
execute as @s[tag=JailCarpenter,scores={text=3}] at @s if entity @a[distance=..2] unless block ^4 ^1 ^ minecraft:barrier unless block ^-4 ^1 ^ minecraft:barrier unless entity @s[tag=stoptext] run function ocarina_of_time:distance_text/gerudo_valley/carpenter
#4
execute as @s[tag=JailCarpenter,scores={text=4}] at @s if entity @a[distance=..2] unless block ^4 ^1 ^ minecraft:barrier unless block ^-4 ^1 ^ minecraft:barrier unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Shiro: ","color":"gold"},{"text":"I was afraid you were going to forget about me! Now I'm free! Thanks! I'm "},{"text":"Shiro the carpenter","color":"red"},{"text":". For rescuing me, I'll tell you something interesting about the desert that I overheard the Gerudo talking about. They said, \"In order to cross the Haunted Wasteland, you'll need the '"},{"text":"eye of truth","color":"red"},{"text":".' The Colossus is on the far side of the wasteland...\" OK, now I'm going back to my "},{"text":"tent near Gerudo Valley","color":"red"},{"text":", so drop by sometime. You may find something helpful there! Byeee!"}]
execute as @s[tag=JailCarpenter,scores={text=4}] at @s if entity @a[distance=..2] unless block ^4 ^1 ^ minecraft:barrier unless block ^-4 ^1 ^ minecraft:barrier unless entity @s[tag=stoptext] run tag @a add MeetGerudoThief
execute as @s[tag=JailCarpenter,scores={text=4}] at @s if entity @a[distance=..2] unless block ^4 ^1 ^ minecraft:barrier unless block ^-4 ^1 ^ minecraft:barrier unless entity @s[tag=stoptext] run tag @a add NoOcarina
execute as @s[tag=JailCarpenter,scores={text=4}] at @s if entity @a[distance=..2] unless block ^4 ^1 ^ minecraft:barrier unless block ^-4 ^1 ^ minecraft:barrier unless entity @s[tag=stoptext] run function ocarina_of_time:distance_text/gerudo_valley/carpenter

#Gerudo Thief
#1
execute as @s[tag=GerudoThief,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Gerudo:","color":"gold"},{"text":" From now on, you're free to come and go as you please through the gate to the desert. You'll find the "},{"text":"Spirit Temple","color":"yellow"},{"text":", where the exalted Nabooru lives, out there in the desert."}]
execute as @s[tag=GerudoThief,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Gerudo Guards
#1
execute if block -72 67 1988 minecraft:gold_block as @s[tag=GerudoGuard,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Gerudo:","color":"gold"},{"text":" From now on, you're free to come and go as you please through the gate to the desert. You'll find the "},{"text":"Spirit Temple","color":"yellow"},{"text":", where the exalted Nabooru lives, out there in the desert."}]
execute if block -72 67 1988 minecraft:gold_block as @s[tag=GerudoGuard,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Gerudo 1
#1
execute if block -72 67 1988 minecraft:gold_block as @s[tag=PermanentGerudo1,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Gerudo: ","color":"gold"},{"text":"This is the Gerudo "},{"text":"Training Ground","color":"red"},{"text":". Gerudo Token verified. One try for "},{"text":"10 Rupees","color":"red"},{"text":"!"}]
execute if block -72 67 1988 minecraft:gold_block as @s[tag=PermanentGerudo1,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute if block -72 67 1988 minecraft:gold_block as @s[tag=PermanentGerudo1,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Gerudo: ","color":"gold"},{"text":"Hey, newcomer!"}]
execute if block -72 67 1988 minecraft:gold_block as @s[tag=PermanentGerudo1,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Gerudo 2
#1
execute if block -72 67 1988 minecraft:gold_block as @s[tag=PermanentGerudo2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Gerudo: ","color":"gold"},{"text":"Hey, newcomer!"}]
execute if block -72 67 1988 minecraft:gold_block as @s[tag=PermanentGerudo2,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Gerudo 3
#1
execute if block -72 67 1988 minecraft:gold_block as @s[tag=PermanentGerudo3,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Gerudo: ","color":"gold"},{"text":"Hey, newcomer!"}]
execute if block -72 67 1988 minecraft:gold_block as @s[tag=PermanentGerudo3,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Gerudo 4
#1
execute if block -72 67 1988 minecraft:gold_block as @s[tag=PermanentGerudo4,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Gerudo:","color":"gold"},{"text":" Hey, rookie! Are you going into the desert? I'll open this gate for you, but... You can't cross the desert unless you pass the two trials. The first trial is...the "},{"text":"River of Sand","color":"red"},{"text":"! After you cross it, follow the flags we placed there. The second trial is...the "},{"text":"Phantom Guide","color":"red"},{"text":"! Those without "},{"text":"eyes that can see the truth","color":"red"},{"text":" will only find themselves returning here. You are going anyway, aren't you? I won't stop you... Go ahead!"}]
execute if block -72 67 1988 minecraft:gold_block as @s[tag=PermanentGerudo4,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add OpenGate
execute if block -72 67 1988 minecraft:gold_block as @s[tag=PermanentGerudo4,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute if block -72 67 1988 minecraft:gold_block as @s[tag=PermanentGerudo4,scores={text=1}] at @s if entity @a[distance=..2] run scoreboard players set @s text 2
#2
execute if block -72 67 1988 minecraft:gold_block as @s[tag=PermanentGerudo4,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Gerudo: ","color":"gold"},{"text":"The first trial is...the "},{"text":"River of Sand","color":"red"},{"text":"! After you cross it, follow the flags we placed there. The second trial is...the "},{"text":"Phantom Guide","color":"red"},{"text":"! Those without "},{"text":"eyes that can see the truth ","color":"red"},{"text":"will only find themselves returning here. You are going anyway, aren't you? I won't stop you... Go ahead!"}]
execute if block -72 67 1988 minecraft:gold_block as @s[tag=PermanentGerudo4,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Gerudo 5
#1
execute if block -72 67 1988 minecraft:gold_block as @s[tag=PermanentGerudo5,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Gerudo:","color":"gold"},{"text":" Hey, newcomer! This is our "},{"text":"horseback archery field","color":"red"},{"text":". After a lot of hard practice and training, we finally have the skill to hit the bull's-eye while riding like the wind! If you think your riding skills are up to it, you should come and try. It's a dangerous sport, but it's fun!"}]
execute if block -72 67 1988 minecraft:gold_block as @s[tag=PermanentGerudo5,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute if block -72 67 1988 minecraft:gold_block as @s[tag=PermanentGerudo5,tag=!Prize1,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Gerudo:","color":"gold"},{"text":" Hey, newcomer, you have a fine horse! I don't know where you stole it from, but... OK, how about this "},{"text":"horseback archery challenge","color":"red"},{"text":"? Once the horse starts galloping, shoot the targets with your arrows. Let's see how many points you can score. You get 20 arrows. If you can score "},{"text":"1,000 points","color":"red"},{"text":", I will give you something good! Do you want to try for "},{"text":"20 Rupees","color":"red"},{"text":"?"}]
execute if block -72 67 1988 minecraft:gold_block as @s[tag=PermanentGerudo5,tag=!Prize1,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#3
execute if block -72 67 1988 minecraft:gold_block as @s[tag=PermanentGerudo5,tag=Prize1,tag=!Prize2,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Gerudo:","color":"gold"},{"text":" What? Do you want to try again? Looks like you have some potential! Do you want to try for "},{"text":"20 Rupees","color":"red"},{"text":"?"}]
execute if block -72 67 1988 minecraft:gold_block as @s[tag=PermanentGerudo5,tag=Prize1,tag=!Prize2,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#4
execute if block -72 67 1988 minecraft:gold_block as @s[tag=PermanentGerudo5,tag=Prize2,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Gerudo:","color":"gold"},{"text":" Hey, rookie! You're looking good! Show me your skill again! You can always try to better your score! My personal best is "},{"text":"1,500 points","color":"red"},{"text":"... Do you want to try for "},{"text":"20 Rupees","color":"red"},{"text":"?"}]
execute if block -72 67 1988 minecraft:gold_block as @s[tag=PermanentGerudo5,tag=Prize2,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
