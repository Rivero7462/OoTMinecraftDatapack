execute as @s[type=armor_stand,tag=Goron] at @s if entity @s[tag=Ball] run data merge entity @s {Pose:{Body:[-45f,0f,0f],Head:[90f,0f,0f],LeftLeg:[160f,180f,0f],RightLeg:[160f,180f,0f],LeftArm:[0f,0f,90f],RightArm:[0f,0f,-90f]}}
execute as @s[type=armor_stand,tag=Goron] at @s if entity @s[tag=Ball] run tp @s ~ ~-1.1 ~
execute as @s[type=armor_stand,tag=Goron] at @s if entity @s[tag=Ball] run tag @s add Stop
execute as @s[type=armor_stand,tag=Goron] at @s if entity @s[tag=Ball] run tag @s remove Ball

execute as @s[type=armor_stand,tag=Goron] at @s if entity @s[tag=stoptext] unless entity @s[tag=Stop] if entity @a[distance=2..3] run tag @s add Ball

#Darunia
#1
execute as @s[tag=Darunia,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"This is a Goron problem! We don't need any help from strangers!"}]
execute as @s[tag=Darunia,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=Darunia,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"Destroy the monsters in "},{"text":"Dodongo's Cavern","color":"red"},{"text":", and become a real man! Then we can talk about the Spiritual Stone!"}]
execute as @s[tag=Darunia,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=Darunia,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"Hey, Brother, play that tune again sometime soon!"}]
execute as @s[tag=Darunia,scores={text=3}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Goron 1
#1
execute as @s[tag=Goron3,scores={text=1}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tp @s ~ 74 ~
execute as @s[tag=Goron3,scores={text=1}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron3,scores={text=1}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron:","color":"gold"},{"text":" Oh...I'm so hungry... Everyone feels faint from hunger because of the food shortage in this town. We are in danger of extinction! It's all because we can't enter our quarry, "},{"text":"Dodongo's Cavern","color":"red"},{"text":". We Gorons live on a diet of rocks... And the most delicious and nutritious rock around are found in Dodongo's Cavern! But that seems like ancient history now... We've become such gourmets that we can't stand to eat rocks from anywhere else! Sigh... I want to eat the top-sirloin rocks from "},{"text":"Dodongo's Cavern","color":"red"},{"text":"!"}]
execute as @s[tag=Goron3,scores={text=1}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] run tag @s add stoptext
execute as @s[tag=Goron3,scores={text=1}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] run scoreboard players set @s text 2
#2
execute as @s[tag=Goron3,scores={text=2}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tp @s ~ 74 ~
execute as @s[tag=Goron3,scores={text=2}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron3,scores={text=2}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"Sigh... I want to eat the top-sirloin rocks from "},{"text":"Dodongo's Cavern","color":"red"},{"text":"!"}]
execute as @s[tag=Goron3,scores={text=2}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] run tag @s add stoptext
#3
execute as @s[tag=Goron3,scores={text=3}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tp @s ~ 74 ~
execute as @s[tag=Goron3,scores={text=3}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron3,scores={text=3}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"You are incredible, destroying the Dodongos! Do you mind if I call you Big Brother?"}]
execute as @s[tag=Goron3,scores={text=3}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] run tag @s add stoptext
#4
execute as @s[tag=Goron3,scores={text=1..3}] at @s if entity @a[distance=..2] if entity @a[tag=Adult] unless entity @s[tag=stoptext] run tp @s ~ 74 ~
execute as @s[tag=Goron3,scores={text=1..3}] at @s if entity @a[distance=..2] if entity @a[tag=Adult] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron3,scores={text=1..3}] at @s if entity @a[distance=..2] if entity @a[tag=Adult] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"Thank you, "},{"selector":"@p"},{"text":"!"}]
execute as @s[tag=Goron3,scores={text=1..3}] at @s if entity @a[distance=..2] if entity @a[tag=Adult] run tag @s add stoptext

#Goron 2
#1
execute as @s[tag=Goron4,scores={text=1}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tp @s ~ 72 ~
execute as @s[tag=Goron4,scores={text=1}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron4,scores={text=1}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"Hey! It's dangerous for a little kid like you to come out here. You might fall down! Anyway, is there something you want? Ask Big Brother about complicated things. If he's in a bad mood, he'll probably get mad at you... It can be pretty scary. But... I know his SECRET. He may not look like the type, but Big Brother loves to dance! If he gets in a rhythm, he'll surely... I remember Big Brother used to always listen to the "},{"text":"music that comes from the forest","color":"green"},{"text":"... Ah yes, the good old days... That music makes me fell nostalgic too... If all the "},{"text":"torches ","color":"red"},{"text":"around here were lit, Goron City would really liven up!"}]
execute as @s[tag=Goron4,scores={text=1}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] run tag @s add stoptext
execute as @s[tag=Goron4,scores={text=1}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] run scoreboard players set @s text 2
#2
execute as @s[tag=Goron4,scores={text=2}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tp @s ~ 72 ~
execute as @s[tag=Goron4,scores={text=2}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron4,scores={text=2}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"I remember Big Brother used to always listen to the "},{"text":"music that comes from the forest","color":"green"},{"text":"... Ah yes, the good old days... That music makes me fell nostalgic too... If all the "},{"text":"torches ","color":"red"},{"text":"around here were lit, Goron City would really liven up!"}]
execute as @s[tag=Goron4,scores={text=2}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] run tag @s add stoptext
#3
execute as @s[tag=Goron4,scores={text=3}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tp @s ~ 72 ~
execute as @s[tag=Goron4,scores={text=3}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron4,scores={text=3}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"You are incredible, destroying the Dodongos! Do you mind if I call you Big Brother?"}]
execute as @s[tag=Goron4,scores={text=3}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] run tag @s add stoptext
#4
execute as @s[tag=Goron4,scores={text=1..3}] at @s if entity @a[distance=..2] if entity @a[tag=Adult] unless entity @s[tag=stoptext] run tp @s ~ 72 ~
execute as @s[tag=Goron4,scores={text=1..3}] at @s if entity @a[distance=..2] if entity @a[tag=Adult] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron4,scores={text=1..3}] at @s if entity @a[distance=..2] if entity @a[tag=Adult] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"Thank you, "},{"selector":"@p"},{"text":"!"}]
execute as @s[tag=Goron4,scores={text=1..3}] at @s if entity @a[distance=..2] if entity @a[tag=Adult] run tag @s add stoptext

#Goron 3
#1
execute as @s[tag=Goron5,scores={text=1}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tp @s ~ 62 ~
execute as @s[tag=Goron5,scores={text=1}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron5,scores={text=1}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"Oh? We don't get many visitors way up here. Where are you from? The forest? What's a \"forest\"? Eh? It's where a lot of \"trees\" and \"plants\" grow? Now I'm even more confused! Nothing grows around here besides the "},{"text":"Bomb Flowers","color":"red"},{"text":"... We don't have \"seeds\" or \"nuts\" around here either. Even Deku Sticks are very scarce around here! I know a trick to conserve sticks! If you light a stick on fire, it will burn to ashes. Right-click to put it away before it completely burns! By the way, I hid a stick nearby... Hehehee..."}]
execute as @s[tag=Goron5,scores={text=1}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] run tag @s add stoptext
execute as @s[tag=Goron5,scores={text=1}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] run scoreboard players set @s text 2
#2
execute as @s[tag=Goron5,scores={text=2}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tp @s ~ 62 ~
execute as @s[tag=Goron5,scores={text=2}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron5,scores={text=2}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"I know a trick to conserve sticks! If you light a stick on fire, it will burn to ashes. Right-click to put it away before it completely burns! By the way, I hid a stick nearby... Hehehee..."}]
execute as @s[tag=Goron5,scores={text=2}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] run tag @s add stoptext
#3
execute as @s[tag=Goron3,scores={text=1..2}] at @s if entity @a[distance=..2] if entity @a[tag=Adult] unless entity @s[tag=stoptext] run tp @s ~ 62 ~
execute as @s[tag=Goron3,scores={text=1..2}] at @s if entity @a[distance=..2] if entity @a[tag=Adult] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron3,scores={text=1..2}] at @s if entity @a[distance=..2] if entity @a[tag=Adult] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"Thank you, "},{"selector":"@p"},{"text":"!"}]
execute as @s[tag=Goron3,scores={text=1..2}] at @s if entity @a[distance=..2] if entity @a[tag=Adult] run tag @s add stoptext

#Goron 4
#1
execute as @s[tag=Goron6,scores={text=1}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tp @s ~ 58 ~
execute as @s[tag=Goron6,scores={text=1}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron6,scores={text=1}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"If I'm not mistaken, you came here to eat the "},{"text":"red stone","color":"red"},{"text":" too! Well, too bad! It's not here! What? That's not why you're here? You're looking for a \"Spiritual Stone\"? You must mean that delicious-looking red stone that was once displayed above the city! I was so hungry that I thought it would be OK to just give it one tiny, little lick...so I snuck up there. But it was already gone! I think Big Brother took it away. He always says that everyone is after that red stone! Big Brother has shut himself up in his room saying, \""},{"text":"I will wait in here for the Royal Family's messenger!","color":"red"},{"text":"\" Are you the Royal Family's messenger? If you were, you would have some kind of proof."}]
execute as @s[tag=Goron6,scores={text=1}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] run tag @s add stoptext
execute as @s[tag=Goron6,scores={text=1}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] run scoreboard players set @s text 2
#2
execute as @s[tag=Goron6,scores={text=2}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tp @s ~ 58 ~
execute as @s[tag=Goron6,scores={text=2}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron6,scores={text=2}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"Big Brother has shut himself up in his room saying, \""},{"text":"I will wait in here for the Royal Family's messenger!","color":"red"},{"text":"\" Are you the Royal Family's messenger? If you were, you would have some kind of proof."}]
execute as @s[tag=Goron6,scores={text=2}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] run tag @s add stoptext
#3
execute as @s[tag=Goron6,scores={text=3}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tp @s ~ 58 ~
execute as @s[tag=Goron6,scores={text=3}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron6,scores={text=3}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"Did you get the red stone? Let me get one little lick! No? Booooo!"}]
execute as @s[tag=Goron6,scores={text=3}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] run tag @s add stoptext
#4
execute as @s[tag=Goron6,scores={text=4}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tp @s ~ 58 ~
execute as @s[tag=Goron6,scores={text=4}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron6,scores={text=4}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"Did you get the red stone? Let me get one little lick! No? Booooo!"}]
execute as @s[tag=Goron6,scores={text=4}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] run tag @s add stoptext
#5
execute as @s[tag=Goron6,scores={text=1..4}] at @s if entity @a[distance=..2] if entity @a[tag=Adult] unless entity @s[tag=stoptext] run tp @s ~ 58 ~
execute as @s[tag=Goron6,scores={text=1..4}] at @s if entity @a[distance=..2] if entity @a[tag=Adult] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron6,scores={text=1..4}] at @s if entity @a[distance=..2] if entity @a[tag=Adult] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"Thank you, "},{"selector":"@p"},{"text":"!"}]
execute as @s[tag=Goron6,scores={text=1..4}] at @s if entity @a[distance=..2] if entity @a[tag=Adult] run tag @s add stoptext

#Goron 5
#1
execute as @s[tag=Goron8,scores={text=1}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tp @s ~ 64 ~
execute as @s[tag=Goron8,scores={text=1}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron8,scores={text=1}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"I'm so hungry that I can't think about anything but food! \"Spiritual Stone\"? That "},{"text":"red stone","color":"red"},{"text":" that was lighting up our city? Big Brother "},{"text":"Darunia ","color":"red"},{"text":"took it away. Then he shut himself up in his room and won't come out. Since then, It feels like all the lights in the city have gone out... Everyone seems so...depressed... I want you to bring "},{"text":"fire ","color":"red"},{"text":"from Big Brother's room back here."}]
execute as @s[tag=Goron8,scores={text=1}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] run tag @s add stoptext
execute as @s[tag=Goron8,scores={text=1}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] run scoreboard players set @s text 2
#2
execute as @s[tag=Goron8,scores={text=2}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tp @s ~ 64 ~
execute as @s[tag=Goron8,scores={text=2}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron8,scores={text=2}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"I want you to bring "},{"text":"fire ","color":"red"},{"text":"from Big Brother's room back here."}]
execute as @s[tag=Goron8,scores={text=2}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] run tag @s add stoptext
#3
execute as @s[tag=Goron8,scores={text=3}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tp @s ~ 64 ~
execute as @s[tag=Goron8,scores={text=3}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron8,scores={text=3}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"How was Big Brother? I see... By the way, do you know the music coming from deep inside this tunnel? We all like this music!"}]
execute as @s[tag=Goron8,scores={text=3}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] run tag @s add stoptext
#4
execute as @s[tag=Goron8,scores={text=1..3}] at @s if entity @a[distance=..2] if entity @a[tag=Adult] unless entity @s[tag=stoptext] run tp @s ~ 64 ~
execute as @s[tag=Goron8,scores={text=1..3}] at @s if entity @a[distance=..2] if entity @a[tag=Adult] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron8,scores={text=1..3}] at @s if entity @a[distance=..2] if entity @a[tag=Adult] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"Thank you, "},{"selector":"@p"},{"text":"!"}]
execute as @s[tag=Goron8,scores={text=1..3}] at @s if entity @a[distance=..2] if entity @a[tag=Adult] run tag @s add stoptext

#Rolling Goron 11
#1
execute as @s[tag=Goron11,scores={text=1},tag=Wait] at @s if entity @a[distance=..2] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"Why did you stop me? Don't stop me here! You can't stop my wild rolling! This wild rolling is the only way to relieve my stress! Now stand in awe of my wild, wild rolling!"}]
execute as @s[tag=Goron11,scores={text=1},tag=Wait] at @s if entity @a[distance=..2] run tag @s remove Wait
#2
execute as @s[tag=Goron11,scores={text=2},tag=Wait] at @s if entity @a[distance=..2] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"All right! I'll give you this in honor of your courage!"}]
execute as @s[tag=Goron11,scores={text=2},tag=Wait] at @s if entity @a[distance=..2] as @e[type=area_effect_cloud,tag=Progress] if entity @s[tag=BombUpgrade1] run tag @s add BombUpgrade2
execute as @s[tag=Goron11,scores={text=2},tag=Wait] at @s if entity @a[distance=..2] if entity @e[type=area_effect_cloud,tag=Progress,tag=BombUpgrade2] run advancement grant @a only minecraft:_upgrades/bomb_upgrade_2
execute as @s[tag=Goron11,scores={text=2},tag=Wait] at @s if entity @a[distance=..2] if entity @e[type=area_effect_cloud,tag=Progress,tag=BombUpgrade2] run tellraw @a ["",{"text":"You got the ","color":"white"},{"text":"Biggest Bomb Bag","color":"red"},{"text":"! Now you can carry up to "},{"text":"40 ","color":"yellow"},{"text":"Bombs!"}]
execute as @s[tag=Goron11,scores={text=2},tag=Wait] at @s if entity @a[distance=..2] if entity @e[type=area_effect_cloud,tag=Progress,tag=BombUpgrade2] run give @p tnt{display:{Name:"\"Bomb\""}} 50
execute as @s[tag=Goron11,scores={text=2},tag=Wait] at @s if entity @a[distance=..2] as @e[type=area_effect_cloud,tag=Progress] unless entity @s[tag=BombUpgrade1] run tag @s add BombUpgrade1
execute as @s[tag=Goron11,scores={text=2},tag=Wait] at @s if entity @a[distance=..2] as @e[type=area_effect_cloud,tag=Progress,tag=BombUpgrade1] unless entity @s[tag=BombUpgrade2] run advancement grant @a only minecraft:_upgrades/bomb_upgrade_1
execute as @s[tag=Goron11,scores={text=2},tag=Wait] at @s if entity @a[distance=..2] as @e[type=area_effect_cloud,tag=Progress,tag=BombUpgrade1] unless entity @s[tag=BombUpgrade2] run tellraw @a ["",{"text":"You got a "},{"text":"Big Bomb Bag","color":"red"},{"text":"! Now you can carry more bombs, up to a maximum of "},{"text":"30","color":"yellow"},{"text":"!"}]
execute as @s[tag=Goron11,scores={text=2},tag=Wait] at @s if entity @a[distance=..2] as @e[type=area_effect_cloud,tag=Progress,tag=BombUpgrade1] unless entity @s[tag=BombUpgrade2] run give @p tnt{display:{Name:"\"Bomb\""}} 50
execute as @s[tag=Goron11,scores={text=2},tag=Wait] at @s if entity @a[distance=..2] run tag @s add Prize
execute as @s[tag=Goron11,scores={text=2},tag=Wait] at @s if entity @a[distance=..2] run tag @s remove Wait
#3
execute as @s[tag=Goron11,scores={text=3},tag=Wait] at @s if entity @a[distance=..2] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"Thank you! Let me express my joy with more wild rolling!"}]
execute as @s[tag=Goron11,scores={text=3},tag=Wait] at @s if entity @a[distance=..2] run tag @s remove Wait

#Goron 12
#1
execute as @s[tag=Goron12,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tp @s ~ 69 ~
execute as @s[tag=Goron12,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron12,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"selector":"@p","color":"gold"},{"text":": ","color":"gold"},{"text":"Dad told me not to let anybody follow him to the temple, but... Only you, "},{"selector":"@p"},{"text":", can save everyone! I'm sure the shop owner, who is hiding somewhere right now, will also help you! Now I'll tell you about the secret passage to the Fire Temple! Try to move the "},{"text":"statue ","color":"red"},{"text":"inside Dad's room!"}]
execute as @s[tag=Goron12,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=Goron12,scores={text=1}] at @s if entity @a[distance=..2] run fill 2191 65 1819 2191 65 1819 minecraft:gold_block
#2
execute as @s[tag=Goron12,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tp @s ~ 69 ~
execute as @s[tag=Goron12,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron12,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"selector":"@p","color":"gold"},{"text":":","color":"gold"},{"text":" Try to move the "},{"text":"statue ","color":"red"},{"text":"inside Dad's room!"}]
execute as @s[tag=Goron12,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=Goron12,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tp @s ~ 69 ~
execute as @s[tag=Goron12,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron12,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"selector":"@p","color":"gold"},{"text":": ","color":"gold"},{"text":"Brother "},{"selector":"@p"},{"text":"! Everybody has come back! Dad and you destroyed the dragon together, didn't you?! When I grow up, I want to be a strong man like you, "},{"selector":"@p"},{"text":"!"}]
execute as @s[tag=Goron12,scores={text=3}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Medigoron
#Child
#1
execute as @s[tag=Medigoron,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..3] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Medigoron:","color":"gold"},{"text":" I'm working on something really cool right now! But I think it's going to take a while... If you can wait five or six years, it should be ready. OK?"}]
execute as @s[tag=Medigoron,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..3] run tag @s add stoptext
execute as @s[tag=Medigoron,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..3] run scoreboard players set @s text 2
#2
execute as @s[tag=Medigoron,scores={text=2..4}] at @s unless entity @a[tag=Adult] if entity @a[distance=..3] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Medigoron:","color":"gold"},{"text":" If you can wait five or six years, it should be ready. OK?"}]
execute as @s[tag=Medigoron,scores={text=2..4}] at @s unless entity @a[tag=Adult] if entity @a[distance=..3] run tag @s add stoptext
#Adult
#1..2
execute as @s[tag=Medigoron,scores={text=1..2}] at @s if entity @a[tag=Adult,distance=..3] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Medigoron:","color":"gold"},{"text":" How about buying this knife for "},{"text":"200 Rupees","color":"red"},{"text":"?"}]
execute as @s[tag=Medigoron,scores={text=1..2}] at @s if entity @a[tag=Adult,distance=..3] run tag @s add stoptext
#3
execute as @s[tag=Medigoron,scores={text=3}] at @s if entity @a[tag=Adult,distance=..3] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Medigoron: ","color":"gold"},{"text":"My brother is a world-famous bladesmith. I have a long way to go before I'll be able to forge weapons as sturdy as the ones he makes."}]
execute as @s[tag=Medigoron,scores={text=3}] at @s if entity @a[tag=Adult,distance=..3] run tag @s add stoptext
#4
execute as @s[tag=Medigoron,scores={text=4}] at @s if entity @a[tag=Adult,distance=..3] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Medigoron:","color":"gold"},{"text":" It looks like there is a problem with its durability...but still... How about buying this knife for "},{"text":"200 Rupees","color":"red"},{"text":"?"}]
execute as @s[tag=Medigoron,scores={text=4}] at @s if entity @a[tag=Adult,distance=..3] run tag @s add stoptext
execute as @s[tag=Medigoron,scores={text=4}] at @s if entity @a[tag=Adult,distance=..3] run scoreboard players set @s text 2

#Gossip Stone 1
execute as @s[tag=GossipStone15,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Responding to your mask, this strange stone statue talks to you...\n"},{"text":"Gossip Stone: ","color":"gold"},{"text":"I overheard this... They say that there is a secret around the entrance to Gerudo Valley."}]
execute as @s[tag=GossipStone15,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#Gossip Stone 2
execute as @s[tag=GossipStone16,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Responding to your mask, this strange stone statue talks to you...\n"},{"text":"Gossip Stone: ","color":"gold"},{"text":"I overheard this... They say that Ganondorf is not satisfied with ruling only the Gerudo and aims to conquer all of Hyrule!"}]
execute as @s[tag=GossipStone16,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

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
