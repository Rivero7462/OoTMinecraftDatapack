#Saria
#1
execute as @s[tag=Saria,scores={text=1}] at @s if entity @a[distance=..2] run tellraw @a ["",{"text":"Saria:","color":"gold"},{"text":" Wow! A fairy! Finally, a fairy came to you, "},{"selector":"@p"},{"text":"! Wow! That's great news! I'm so happy for you! Now you're a true Kokiri, "},{"selector":"@p"},{"text":"! Is that right? The Great Deku Tree has summoned you? It's quite an honor to talk to the Great Deku Tree! I'll wait for you here, Get going! Go see the Great Deku Tree!"}]
execute as @s[tag=Saria,scores={text=1}] at @s if entity @a[distance=..2] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @s[tag=Saria,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=Saria,scores={text=1}] at @s if entity @a[distance=..2] run scoreboard players set @s text 2
#2
execute as @s[tag=Saria,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Saria:","color":"gold"},{"text":" I'll wait for you here, Get going! Go see the Great Deku Tree!"}]
execute as @s[tag=Saria,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=Saria,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Saria:","color":"gold"},{"text":" What?! "},{"text":"Mido ","color":"red"},{"text":"won't let you go see the Great Deku Tree? Ohh...that bum! I don't know why he's always so mean to everyone! What he said is true, though. The forest... Strange things have been happening here lately... You need to be ready for anything. You'd better find a weapon! You can buy a "},{"text":"shield ","color":"aqua"},{"text":"at the shop, but there is only one "},{"text":"sword ","color":"red"},{"text":"hidden somewhere in the forest."}]
execute as @s[tag=Saria,scores={text=3}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=Saria,scores={text=3}] at @s if entity @a[distance=..2] run scoreboard players set @s text 4
#4
execute as @s[tag=Saria,scores={text=4}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Saria:","color":"gold"},{"text":" You can buy a "},{"text":"shield ","color":"aqua"},{"text":"at the shop, but there is only one "},{"text":"sword ","color":"red"},{"text":"hidden somewhere in the forest."}]
execute as @s[tag=Saria,scores={text=4}] at @s if entity @a[distance=..2] run tag @s add stoptext
#5
execute as @s[tag=Saria,scores={text=5}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Saria:","color":"gold"},{"text":" "},{"selector":"@p"},{"text":" you're safe! We'll be friends forever, "},{"selector":"@p"},{"text":"."}]
execute as @s[tag=Saria,scores={text=5}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=Saria,scores={text=5}] at @s if entity @a[distance=..2] run scoreboard players set @s text 6
#6
execute as @s[tag=Saria,scores={text=6}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Saria:","color":"gold"},{"text":" We'll be friends forever, "},{"selector":"@p"},{"text":"."}]
execute as @s[tag=Saria,scores={text=6}] at @s if entity @a[distance=..2] run tag @s add stoptext

#KnowItAllBrother1
#1
execute as @s[tag=KnowItAllBrother1,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Know-It-All-Brother: ","color":"gold"},{"text":"Hey, let's work on some moves! Hold A or D to move "},{"text":"right or left","color":"red"},{"text":". To walk "},{"text":"backwards","color":"red"},{"text":", press S. To move "},{"text":"forward","color":"red"},{"text":", press W. If you have a your sword ready, You can do critical damage by "},{"text":"attacking while falling","color":"red"},{"text":"! It does more damage!"}]
execute as @s[tag=KnowItAllBrother1,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=KnowItAllBrother1,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Know-It-All-Brother: ","color":"gold"},{"text":"You're such a big, strong guy! I really want to be like you someday, even though I'll always be small."}]
execute as @s[tag=KnowItAllBrother1,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext

#KnowItAllBrother2
#1
execute as @s[tag=KnowItAllBrother2,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tellraw @a ["",{"text":"Know-It-All-Brother: ","color":"gold"},{"text":"You're not allowed to leave the forest! The Great Deku Tree said that if we Kokiri ever leave these woods, we will die!"}]
execute as @s[tag=KnowItAllBrother2,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=KnowItAllBrother2,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run scoreboard players set @s text 2
#2
execute as @s[tag=KnowItAllBrother2,scores={text=2}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Know-It-All-Brother:","color":"gold"},{"text":" The Great Deku Tree said that if we Kokiri ever leave these woods, we will die!"}]
execute as @s[tag=KnowItAllBrother2,scores={text=2}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=KnowItAllBrother2,scores={text=3}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Know-It-All-Brother: ","color":"gold"},{"text":"We Kokiri will die if we leave the forest! You're not going to try to leave the forest, are you?!"}]
execute as @s[tag=KnowItAllBrother2,scores={text=3}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
#4
execute as @s[tag=KnowItAllBrother2,scores={text=4}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Know-It-All-Brother:","color":"gold"},{"text":" Oh, you're OK? You didn't leave the forest after all, did you?"}]
execute as @s[tag=KnowItAllBrother2,scores={text=4}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
#5
execute as @s[tag=KnowItAllBrother2,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Know-It-All-Brother: ","color":"gold"},{"selector":"@p"},{"text":"... I wonder if he will come back..."}]
execute as @s[tag=KnowItAllBrother2,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext

#KnowItAllBrother3
#1
execute as @s[tag=KnowItAllBrother3,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tellraw @a ["",{"text":"Know-It-All-Brother:","color":"gold"},{"text":" That meanie, "},{"text":"Mido","color":"red"},{"text":", is making me cut the grass at Saria's house. Mido told Saria he would do it so she would like him, but I'm the one doing all the work! You and "},{"text":"Saria","color":"red"},{"text":" are close friends, so will you help me cut the grass? I'll let you keep anything you find while cutting it."}]
execute as @s[tag=KnowItAllBrother3,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=KnowItAllBrother3,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run scoreboard players set @s text 2
#2
execute as @s[tag=KnowItAllBrother3,scores={text=2}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Know-It-All-Brother:","color":"gold"},{"text":" You and "},{"text":"Saria","color":"red"},{"text":" are close friends, so will you help me cut the grass? I'll let you keep anything you find while cutting it."}]
execute as @s[tag=KnowItAllBrother3,scores={text=2}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=KnowItAllBrother3,scores={text=3}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Know-It-All-Brother: ","color":"gold"},{"text":"Mido is very upset! Did something happen to him?"}]
execute as @s[tag=KnowItAllBrother3,scores={text=3}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
#4
execute as @s[tag=KnowItAllBrother3,scores={text=4}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Know-It-All-Brother:","color":"gold"},{"text":" Jumping is going out of style now. I'm crazy about doing "},{"text":"backflips","color":"red"},{"text":"! Can you do one?"}]
execute as @s[tag=KnowItAllBrother3,scores={text=4}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
#5
execute as @s[tag=KnowItAllBrother3,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Know-It-All-Brother: ","color":"gold"},{"text":"I see. You didn't have any problems entering the forest, mister... Did the meanies out there bother you much? Before the Great Deku Tree died, you wouldn't see things like that around here... Since it's dangerous outside, I always stay inside my house. But I'm bored to death in here!"}]
execute as @s[tag=KnowItAllBrother3,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] run fill -557 62 -617 -557 62 -617 minecraft:gold_block
execute as @s[tag=KnowItAllBrother3,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext
#6
execute as @s[tag=KnowItAllBrother3,scores={text=2}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Know-It-All-Brother: ","color":"gold"},{"text":"Since it's dangerous outside, I always stay inside my house. But I'm bored to death in here!"}]
execute as @s[tag=KnowItAllBrother3,scores={text=2}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext
#7
execute as @s[tag=KnowItAllBrother3,scores={text=3}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Know-It-All-Brother:","color":"gold"},{"text":" I feel like I've known you for a long time, mister!"}]
execute as @s[tag=KnowItAllBrother3,scores={text=3}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext

#KnowItAllBrother4
#1
execute as @s[tag=KnowItAllBrother4,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Know-It-All-Brother: ","color":"gold"},{"text":"I can tell you about the ","color":"white"},{"text":"Inventory","color":"red"},{"text":". The nine slots on the lower part of your screen are your ","color":"white"},{"text":"hotbar items","color":"blue"},{"text":". To use an item you've found, drag it to one of the slots and ","color":"white"},{"text":"right or left","color":"blue"},{"text":" click. It's as easy as that!","color":"white"}]
execute as @s[tag=KnowItAllBrother4,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=KnowItAllBrother4,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Know-It-All-Brother: ","color":"gold"},{"text":"Since the Great Deku Tree withered... more meanies have been appearing in the forest. I'm scared!"}]
execute as @s[tag=KnowItAllBrother4,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext
#3
execute as @s[tag=KnowItAllBrother4,scores={text=2}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Know-It-All-Brother: ","color":"gold"},{"text":"Somehow, a fair wind has begun to blow recently."}]
execute as @s[tag=KnowItAllBrother4,scores={text=2}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext

#KnowItAllBrother5
#1
execute as @s[tag=KnowItAllBrother5,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Know-It-All-Brother: ","color":"gold"},{"text":"If you tap "},{"text":"F5","color":"blue"},{"text":", you can change your view. In a place like this, it will be hard to see. Elsewhere, like in a field, it will be a much easier perspective. Also, Navi the fairy will appear if you crouch. "},{"text":"Right-click","color":"aqua"},{"text":" to listen to her!"}]
execute as @s[tag=KnowItAllBrother5,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=KnowItAllBrother5,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Know-It-All-Brother: ","color":"gold"},{"text":"Where's Saria? Do you know Saria, mister? That's weird... Where has "},{"text":"Mido","color":"red"},{"text":" gone during such an emergency?"}]
execute as @s[tag=KnowItAllBrother5,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] run fill -607 54 -607 -607 54 -607 minecraft:gold_block
execute as @s[tag=KnowItAllBrother5,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext
#3
execute as @s[tag=KnowItAllBrother5,scores={text=2}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Know-It-All-Brother: ","color":"gold"},{"text":"Where has "},{"text":"Mido","color":"red"},{"text":" gone during such an emergency?"}]
execute as @s[tag=KnowItAllBrother5,scores={text=2}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext
#4
execute as @s[tag=KnowItAllBrother5,scores={text=3}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Know-It-All-Brother: ","color":"gold"},{"text":"I'm sure "},{"selector":"@p"},{"text":" will return someday!"}]
execute as @s[tag=KnowItAllBrother5,scores={text=3}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext

#KnowItAllBrother6
#1
execute as @s[tag=KnowItAllBrother6,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Know-It-All-Brother: ","color":"gold"},{"text":"There are three kinds of items: gear items, usable items, and quest items. "},{"text":"Gear ","color":"green"},{"text":"items are things that can be seen in your advancements tab. Most items can be used by right-clicking while holding them. Quest items are things you collect during your adventure. They can be traded with certain people by right-clicking them."}]
execute as @s[tag=KnowItAllBrother6,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=KnowItAllBrother6,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Know-It-All-Brother: ","color":"gold"},{"text":"An evil wind is blowing from the direction of the Forest Temple. "},{"text":"Saria","color":"red"},{"text":" left, saying, \"I have to do something about it!\" The "},{"text":"Forest Temple ","color":"green"},{"text":"is located in the Sacred Forest Meadow in the far side of the Lost Woods."}]
execute as @s[tag=KnowItAllBrother6,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run fill -609 54 -609 -609 54 -609 minecraft:gold_block
execute as @s[tag=KnowItAllBrother6,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext
#3
execute as @s[tag=KnowItAllBrother6,scores={text=2}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Know-It-All-Brother: ","color":"gold"},{"text":"The "},{"text":"Forest Temple ","color":"green"},{"text":"is located in the Sacred Forest Meadow in the far side of the Lost Woods."}]
execute as @s[tag=KnowItAllBrother6,scores={text=2}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext
#4
execute as @s[tag=KnowItAllBrother6,scores={text=3}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Know-It-All-Brother: ","color":"gold"},{"text":"Since a fair wind started to blow, I'm sure "},{"selector":"@p"},{"text":" will come back!"}]
execute as @s[tag=KnowItAllBrother6,scores={text=3}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext

#KnowItAllBrother7
#1
execute as @s[tag=KnowItAllBrother7,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Know-It-All-Brother: ","color":"gold"},{"text":"Stand on the stone, pick it up! Stand on the stone, pick it up! Mean old "},{"text":"Mido","color":"red"},{"text":"... He's making me pick up the rocks in front of his house."}]
execute as @s[tag=KnowItAllBrother7,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=KnowItAllBrother7,scores={text=2}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Know-It-All-Brother: ","color":"gold"},{"text":"Mido is very upset! Did something happen to him?"}]
execute as @s[tag=KnowItAllBrother7,scores={text=2}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=KnowItAllBrother7,scores={text=3}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Know-It-All-Brother:","color":"gold"},{"text":" You have a cool slingshot, huh? You know what's cool about it? You can aim while holding it in your hotbar and shoot by right clicking the mouse! How cool! If you have the slingshot ready, you can "},{"text":"shoot while moving","color":"red"},{"text":"... Did you know that?"}]
execute as @s[tag=KnowItAllBrother7,scores={text=3}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
#4
execute as @s[tag=KnowItAllBrother7,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Know-It-All-Brother: ","color":"gold"},{"text":"Why is that fairy following you around? You're not one of us!"}]
execute as @s[tag=KnowItAllBrother7,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext
#5
execute as @s[tag=KnowItAllBrother7,scores={text=2}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Know-It-All-Brother:","color":"gold"},{"text":" Teach me some fancy fencing! All I've ever done is right-click all my life!"}]
execute as @s[tag=KnowItAllBrother7,scores={text=2}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext

#Fado
#1
execute as @s[tag=Fado,scores={text=1}] at @s if entity @a[distance=..2] run tellraw @a ["",{"text":"Fado: ","color":"gold"},{"text":"Hee hee hee! You came all the way up here? You're a real man! Look! Isn't this view pretty? Change your viewpoint with F5 so you can look around better."}]
execute as @s[tag=Fado,scores={text=1}] at @s if entity @a[distance=..2] run give @p minecraft:lapis_lazuli{display:{Name:"{\"text\":\"Blue Rupee\"}"},Item:1b}
execute as @s[tag=Fado,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=Fado,scores={text=1}] at @s if entity @a[distance=..2] run scoreboard players set @s text 2
#2
execute as @s[tag=Fado,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Fado: ","color":"gold"},{"text":"Look! Isn't this view pretty? Change your viewpoint with F5 so you can look around better."}]
execute as @s[tag=Fado,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=Fado,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Fado:","color":"gold"},{"text":" What did you do to the Great Deku Tree?"}]
execute as @s[tag=Fado,scores={text=3}] at @s if entity @a[distance=..2] run tag @s add stoptext
#4
execute as @s[tag=Fado,scores={text=4}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Twin:","color":"gold"},{"text":" If you want to go to the Lost Woods, you'd better equip the right gear! Hee hee!"}]
execute as @s[tag=Fado,scores={text=4}] at @s if entity @a[distance=..2] unless entity @a[tag=Adult] run tag @s add stoptext
#4
execute as @s[tag=Fado,scores={text=4}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Fado: ","color":"gold"},{"text":"Heh heh heh. Are you going to become one...too? Heh heh!"}]
execute as @s[tag=Fado,scores={text=4}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext

#Twin1
#1
execute as @s[tag=Twin1,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tellraw @a ["",{"text":"Twin: ","color":"gold"},{"text":"Oh, a "},{"text":"fairy ","color":"aqua"},{"text":"finally came to you! Now you have a lot to learn! The best place to go to learn some new skills is in the "},{"text":"Forest Training Center","color":"green"},{"text":". It's on the hill just above here."}]
execute as @s[tag=Twin1,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=Twin1,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run scoreboard players set @s text 2
#2
execute as @s[tag=Twin1,scores={text=2}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Twin: ","color":"gold"},{"text":"The best place to go to learn some new skills is in the "},{"text":"Forest Training Center","color":"green"},{"text":". It's on the hill just above here."}]
execute as @s[tag=Twin1,scores={text=2}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=Twin1,scores={text=3}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Twin:","color":"gold"},{"text":" What? Where are you going?! To the castle? Where is the castle?"}]
execute as @s[tag=Twin1,scores={text=3}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
#4
execute as @s[tag=Twin1,scores={text=4}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Twin:","color":"gold"},{"text":" Saria wanted to see you... Did she find you already?"}]
execute as @s[tag=Twin1,scores={text=4}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
#5
execute as @s[tag=Twin1,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Twin: ","color":"gold"},{"text":"Have you been traveling around much, mister? Have you ever met a boy named "},{"selector":"@p"},{"text":"? Mido said that the Great Deku Tree withered because that boy did something wrong to it... Only Saria defended "},{"selector":"@p"},{"text":"-until she left. Maybe we misunderstood... will come back!"}]
execute as @s[tag=Twin1,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] run fill -596 62 -626 -596 62 -626 minecraft:gold_block
execute as @s[tag=Twin1,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext
#6
execute as @s[tag=Twin1,scores={text=2}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Twin: ","color":"gold"},{"text":"Maybe we misunderstood..."}]
execute as @s[tag=Twin1,scores={text=2}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext
#7
execute as @s[tag=Twin1,scores={text=3}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Twin:","color":"gold"},{"text":" Now that the "},{"text":"Deku Tree sprout","color":"red"},{"text":" is growing in the Great Deku Tree's meadow, the forest has returned to normal!"}]
execute as @s[tag=Twin1,scores={text=3}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext

#Twin2
#1
execute as @s[tag=Twin2,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tellraw @a ["",{"text":"Twin: ","color":"gold"},{"text":"Oh, you have a "},{"text":"fairy ","color":"aqua"},{"text":"now?! That's great, "},{"selector":"@p"},{"text":"! What? You've been called by the "},{"text":"Great Deku Tree","color":"red"},{"text":"? What an honor! He may give you a special gift! Tee hee! That's because the Great Deku Tree is our father, the forest guardian, and he gave life to all of us Kokiri!"}]
execute as @s[tag=Twin2,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=Twin2,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run scoreboard players set @s text 2
#2
execute as @s[tag=Twin2,scores={text=2}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Twin: ","color":"gold"},{"text":"I wonder if the "},{"text":"Great Deku Tree","color":"red"},{"text":" gave life to everything in the forest...? I mean in addition to us Kokiri?"}]
execute as @s[tag=Twin2,scores={text=2}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=Twin2,scores={text=3}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Twin:","color":"gold"},{"text":" What? Where are you going?! To the castle? Where is the castle?"}]
execute as @s[tag=Twin2,scores={text=3}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
#4
execute as @s[tag=Twin2,scores={text=4}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Twin:","color":"gold"},{"text":" Saria said she's waiting at the usual spot."}]
execute as @s[tag=Twin2,scores={text=4}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
#5
execute as @s[tag=Twin2,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Twin: ","color":"gold"},{"text":"Haven't I seen you somewhere before, mister?"}]
execute as @s[tag=Twin2,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext
#6
execute as @s[tag=Twin2,scores={text=2}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Twin:","color":"gold"},{"text":" I still think you really look like somebody I've seen before, mister."}]
execute as @s[tag=Twin2,scores={text=2}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext

#Twin3
#1
execute as @s[tag=Twin3,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Twin: ","color":"gold"},{"text":"Hi, "},{"selector":"@p"},{"text":"! Look this way! It's so great that you finally have a fairy partner!"}]
execute as @s[tag=Twin3,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=Twin3,scores={text=2}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Twin:","color":"gold"},{"text":" What? Where are you going?! To the castle? Where is the castle?"}]
execute as @s[tag=Twin3,scores={text=2}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=Twin3,scores={text=3}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Twin:","color":"gold"},{"text":" Mido might know something about Saria's whereabouts. I think Mido is sulking in one of the houses around here."}]
execute as @s[tag=Twin3,scores={text=3}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
#4
execute as @s[tag=Twin3,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Twin: ","color":"gold"},{"text":"You can buy "},{"text":"arrows","color":"red"},{"text":" at a shop only if you have a "},{"text":"bow","color":"red"},{"text":". Have you got one, mister?"}]
execute as @s[tag=Twin3,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext

#Fake Twin3
#1
execute as @s[tag=FakeTwin3,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Twin: ","color":"gold"},{"text":"Hi, "},{"selector":"@p"},{"text":"! Look this way! It's so great that you finally have a fairy partner!"}]
execute as @s[tag=FakeTwin3,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=FakeTwin3,scores={text=2}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Twin:","color":"gold"},{"text":" What? Where are you going?! To the castle? Where is the castle?"}]
execute as @s[tag=FakeTwin3,scores={text=2}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=FakeTwin3,scores={text=3}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Twin:","color":"gold"},{"text":" Mido might know something about Saria's whereabouts. I think Mido is sulking in one of the houses around here."}]
execute as @s[tag=FakeTwin3,scores={text=3}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
#4
execute as @s[tag=FakeTwin3,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Twin: ","color":"gold"},{"text":"You can buy "},{"text":"arrows","color":"red"},{"text":" at a shop only if you have a "},{"text":"bow","color":"red"},{"text":". Have you got one, mister?"}]
execute as @s[tag=FakeTwin3,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext

#Twin4
#1
execute as @s[tag=Twin4,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Twin:","color":"gold"},{"text":" My sister took some Rupees and went shopping at that store with the red roof. Tee hee! Speaking of "},{"text":"Rupees","color":"red"},{"text":", a "},{"text":"green ","color":"green"},{"text":"one is worth 1, a "},{"text":"blue ","color":"dark_blue"},{"text":"one is worth five, and a "},{"text":"red ","color":"red"},{"text":"one is worth twenty. Hee hee!"}]
execute as @s[tag=Twin4,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=Twin4,scores={text=2}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Twin:","color":"gold"},{"text":" "},{"selector":"@p"},{"text":", are you going to go away?"}]
execute as @s[tag=Twin4,scores={text=2}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=Twin4,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Twin: ","color":"gold"},{"text":"Saria went to the temple and hasn't come back..."}]
execute as @s[tag=Twin4,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext
#4
execute as @s[tag=Twin4,scores={text=2}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Twin:","color":"gold"},{"text":" I wonder if Saria will come back..."}]
execute as @s[tag=Twin4,scores={text=2}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext

#Twin5
#1
execute as @s[tag=Twin5,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Twin:","color":"gold"},{"text":" This shop... It sells things you can get in the forest for free! Tee hee! Do you know how to use the "},{"text":"Deku Shield","color":"red"},{"text":"? Tee hee! When you get the shield, tap F to equip it in your "},{"text":"offhand","color":"green"},{"text":". Once you have it equipped, hold right-click to block. Tee hee!"}]
execute as @s[tag=Twin5,scores={text=1}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=Twin5,scores={text=2}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Twin:","color":"gold"},{"text":" If you lose your shield, will you come back?"}]
execute as @s[tag=Twin5,scores={text=2}] at @s unless entity @a[tag=Adult] if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=Twin5,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Twin: ","color":"gold"},{"text":"Hi, mister! You can't use a Deku Shield! They're only for kids!"}]
execute as @s[tag=Twin5,scores={text=1}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext
#4
execute as @s[tag=Twin5,scores={text=2}] at @s if entity @a[tag=Adult,distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Twin: ","color":"gold"},{"text":"I'm sure "},{"selector":"@p"},{"text":" will return someday!"}]
execute as @s[tag=Twin5,scores={text=2}] at @s if entity @a[tag=Adult,distance=..2] run tag @s add stoptext

#Mido
#1
execute as @s[tag=Mido,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Mido:","color":"gold"},{"text":" If you want to pass through here, you should at least "},{"text":"equip","color":"green"},{"text":" a "},{"text":"sword","color":"red"},{"text":" and a "},{"text":"shield","color":"aqua"},{"text":"! Sheesh!"}]
execute as @s[tag=Mido,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=Mido,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Mido:","color":"gold"},{"text":" I, the great Mido, will never accept you as one of us! "},{"text":"Shoot! How did you get to be the favorite of Saria and the Great Deku Tree? Huh?! Grumble...grumble...","color":"white"}]
execute as @s[tag=Mido,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=Mido,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Mido:","color":"gold"},{"text":" Hey! What are you doing in my house?!"}]
execute as @s[tag=Mido,scores={text=3}] at @s if entity @a[distance=..2] run tag @s add stoptext
#4
execute as @s[tag=Mido,scores={text=4}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Mido:","color":"gold"},{"text":" If you're looking for Saria, she's in the "},{"text":"Lost Woods","color":"green"},{"text":", as usual. Don't tell me you don't know where that is! The entrance is up on the cliff overlooking the village! I know you'll get lost! Don't worry-you'll just end up back at the entrance! Harrumph!"}]
execute as @s[tag=Mido,scores={text=4}] at @s if entity @a[distance=..2] run tag @s add stoptext
#5
execute as @s[tag=Mido,scores={text=5}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Mido: ","color":"gold"},{"text":"Who do you think you are? That "},{"text":"Kokiri-like ","color":"green"},{"text":"clothing won't fool me! I promised Saria I would never let anybody go through here. If you want to see her that bad, I'm gonna need some proof that you're really a friend of hers! Something you could only have heard from her. ...Not that she would ever be friends with a grown-up like you."}]
execute as @s[tag=Mido,scores={text=5}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run fill -559 72 -688 -559 72 -688 minecraft:gold_block
execute as @s[tag=Mido,scores={text=5}] at @s if entity @a[distance=..2] run tag @s add stoptext
#6
execute as @s[tag=Mido,scores={text=6}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Mido: ","color":"gold"},{"text":"I promised Saria I would never let anybody go through here. If you want to see her that bad, I'm gonna need some proof that you're really a friend of hers! Something you could only have heard from her. ...Not that she would ever be friends with a grown-up like you."}]
execute as @s[tag=Mido,scores={text=6}] at @s if entity @a[distance=..2] run tag @s add stoptext
#7
execute as @s[tag=Mido,scores={text=7}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Mido: ","color":"gold"},{"text":"When I see you... I don't know why, but I remember...him..."}]
execute as @s[tag=Mido,scores={text=7}] at @s if entity @a[distance=..2] run tag @s add stoptext
#8
execute as @s[tag=Mido,scores={text=8}] at @s if entity @a[distance=..2] run tellraw @a ["",{"text":"Mido: ","color":"gold"},{"text":"Oh...I see... Saria won't ever come back... But...I...I made a promise to Saria... If "},{"selector":"@p"},{"text":" came back, I would be sure to tell him that Saria had been waiting for him... Because Saria...really...liked... Hey, you. If you see him somewhere, please let him know... And also... I'm sorry for being mean to him. Tell him that too."}]
execute as @s[tag=Mido,scores={text=8}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=Mido,scores={text=8}] at @s if entity @a[distance=..2] run scoreboard players set @s text 9
#9
execute as @s[tag=Mido,scores={text=9}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Mido: ","color":"gold"},{"text":"Hey, you. If you see him somewhere, please let him know... And also... I'm sorry for being mean to him. Tell him that too."}]
execute as @s[tag=Mido,scores={text=9}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Saria2
#1
execute as @s[tag=Saria2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Saria: ","color":"gold"},{"text":"When you want to hear my voice, play "},{"text":"Saria's Song","color":"green"},{"text":". You can talk with me anytime..."}]
execute as @s[tag=Saria2,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Deku Tree Sprout
#1
execute as @s[tag=Sprout,scores={text=1}] at @s if entity @a[distance=..2] run tellraw @a ["",{"text":"Deku Tree sprout: ","color":"gold"},{"text":"Hi there! I'm the "},{"text":"Deku Tree sprout","color":"red"},{"text":"! Because you and Saria broke the curse on the Forest Temple, I can grown and flourish! Thanks a lot!"}]
execute as @s[tag=Sprout,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=Sprout,scores={text=1}] at @s if entity @a[distance=..2] run scoreboard players set @s text 2
#2
execute as @s[tag=Sprout,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Deku Tree sprout: ","color":"gold"},{"text":"You are a "},{"text":"Hylian ","color":"aqua"},{"text":"and were always bound to leave this forest. And now...you have learned your own destiny... So you know what you must do..."}]
execute as @s[tag=Sprout,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Grog
#1
execute as @s[tag=Grog,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"??? No response. We should get his attention.","color":"aqua"}]
execute as @s[tag=Grog,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=Grog,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Grog: ","color":"gold"},{"text":"Hurry up, nice guy! Before it disappears, deliver it to that old crone..."}]
execute as @s[tag=Grog,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#LeaderScrub
#1
execute as @s[tag=LeaderScrub,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] unless entity @s[tag=FinishPrize1] run tellraw @a ["",{"text":"Leader: ","color":"gold"},{"text":"All of the young Deku Scrub brothers agree...you look exactly like our sacred forest totem! As an offering from us, please accept these "},{"text":"Deku Sticks","color":"red"},{"text":". We will also enhance your carrying skills! Abracadabra! Alakazaaaam!"}]
execute as @s[tag=LeaderScrub,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] as @e[type=area_effect_cloud,tag=Progress] if entity @s[tag=StickUpgrade1] run tag @s add StickUpgrade2
execute as @s[tag=LeaderScrub,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] as @e[type=area_effect_cloud,tag=Progress,tag=StickUpgrade2] run advancement grant @a only minecraft:_upgrades/stick_upgrade_2
execute as @s[tag=LeaderScrub,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] as @e[type=area_effect_cloud,tag=Progress,tag=StickUpgrade2] run tellraw @a ["",{"text":"You can now pick up even more "},{"text":"Deku Sticks","color":"red"},{"text":"! You can carry up to "},{"text":"30 ","color":"yellow"},{"text":"of them!"}]
execute as @s[tag=LeaderScrub,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] as @e[type=area_effect_cloud,tag=Progress,tag=StickUpgrade2] run give @a stick{display:{Name:"{\"text\":\"Deku Stick\"}"},DekuStick:1b,Item:1b} 30
execute as @s[tag=LeaderScrub,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] as @e[type=area_effect_cloud,tag=Progress] unless entity @s[tag=StickUpgrade1] run tag @s add StickUpgrade1
execute as @s[tag=LeaderScrub,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] as @e[type=area_effect_cloud,tag=Progress,tag=StickUpgrade1] unless entity @s[tag=StickUpgrade2] run advancement grant @a only minecraft:_upgrades/stick_upgrade_1
execute as @s[tag=LeaderScrub,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] as @e[type=area_effect_cloud,tag=Progress,tag=StickUpgrade1] unless entity @s[tag=StickUpgrade2] run tellraw @a ["",{"text":"Now you can pick up more "},{"text":"Deku Sticks","color":"red"},{"text":"! You can carry up to "},{"text":"20 ","color":"yellow"},{"text":"of them!"}]
execute as @s[tag=LeaderScrub,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] as @e[type=area_effect_cloud,tag=Progress,tag=StickUpgrade1] unless entity @s[tag=StickUpgrade2] run give @a stick{display:{Name:"{\"text\":\"Deku Stick\"}"},DekuStick:1b,Item:1b} 20
execute as @s[tag=LeaderScrub,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] as @e[type=zombie,tag=StageScrub] run scoreboard players set @s GameTimer 31
execute as @s[tag=LeaderScrub,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tag @s add FinishPrize1
execute as @s[tag=LeaderScrub,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=LeaderScrub,scores={text=1}] at @s if entity @a[distance=..2] run scoreboard players set @s text 0
#2
execute as @s[tag=LeaderScrub,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Leader:","color":"gold"},{"text":" All my young Deku Scrub brothers say... You have a horrible face! But don't worry! We will reward you with many "},{"text":"Deku Nuts","color":"red"},{"text":". Of course, we will also enable you to carry more of them! Abracadabra... Alakazaaaam!"}]
execute as @s[tag=LeaderScrub,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] as @e[type=area_effect_cloud,tag=Progress] if entity @s[tag=NutUpgrade1] run tag @s add NutUpgrade2
execute as @s[tag=LeaderScrub,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] as @e[type=area_effect_cloud,tag=Progress,tag=NutUpgrade2] run advancement grant @a only minecraft:_upgrades/nut_upgrade_2
execute as @s[tag=LeaderScrub,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] as @e[type=area_effect_cloud,tag=Progress,tag=NutUpgrade2] run tellraw @a ["",{"text":"You can now can carry even more "},{"text":"Deku Nuts","color":"red"},{"text":"! You can carry up to "},{"text":"40 ","color":"yellow"},{"text":"nuts!"}]
execute as @s[tag=LeaderScrub,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] as @e[type=area_effect_cloud,tag=Progress,tag=NutUpgrade2] run scoreboard players set @a DekuNuts 40
execute as @s[tag=LeaderScrub,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] as @e[type=area_effect_cloud,tag=Progress] unless entity @s[tag=NutUpgrade1] run tag @s add NutUpgrade1
execute as @s[tag=LeaderScrub,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] as @e[type=area_effect_cloud,tag=Progress,tag=NutUpgrade1] unless entity @s[tag=NutUpgrade2] run advancement grant @a only minecraft:_upgrades/nut_upgrade_1
execute as @s[tag=LeaderScrub,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] as @e[type=area_effect_cloud,tag=Progress,tag=NutUpgrade1] unless entity @s[tag=NutUpgrade2] run tellraw @a ["",{"text":"Now you can carry many "},{"text":"Deku Nuts","color":"red"},{"text":"! You can hold up to "},{"text":"30 ","color":"yellow"},{"text":"nuts!"}]
execute as @s[tag=LeaderScrub,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] as @e[type=area_effect_cloud,tag=Progress,tag=NutUpgrade1] unless entity @s[tag=NutUpgrade2] run scoreboard players set @a DekuNuts 30
execute as @s[tag=LeaderScrub,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] as @e[type=zombie,tag=StageScrub] run scoreboard players set @s StickCount 31
execute as @s[tag=LeaderScrub,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tag @s add FinishPrize2
execute as @s[tag=LeaderScrub,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=LeaderScrub,scores={text=2}] at @s if entity @a[distance=..2] run scoreboard players set @s text 0

#Running Man
#1
execute as @s[tag=RunningMan3,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Running Man:","color":"gold"},{"text":" Huff...puff...huff... Huff...huff...whew! You did quite well! But you couldn't beat me! Your time was "},{"score":{"name":"@a","objective":"RaceTime"},"color":"red"},{"text":", but I just beat you by one tick! Huff...huff... You'll have to challenge me again sometime! Huff...huff... Good-bye, then!"}]
execute as @s[tag=RunningMan3,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run scoreboard players operation @s lifetime = @a RaceTime
execute as @s[tag=RunningMan3,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run scoreboard players operation @e[type=armor_stand,tag=RunningMan2] lifetime = @a RaceTime
execute as @s[tag=RunningMan3,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run scoreboard players remove @e[type=armor_stand,tag=RunningMan2] lifetime 1
execute as @s[tag=RunningMan3,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tag @a add ResetRunningMan1
execute as @s[tag=RunningMan3,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tag @a remove TimedRace4
execute as @s[tag=RunningMan3,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tag @a remove TimedRace
execute as @s[tag=RunningMan3,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tag @s add RunAway
execute as @s[tag=RunningMan3,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run forceload remove 328 2020
execute as @s[tag=RunningMan3,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run scoreboard players reset @a RaceTime
execute as @s[tag=RunningMan3,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=RunningMan3,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Running Man:","color":"gold"},{"text":" Heh heh. You don't have enough killer instinct yet. Just train harder. Good-bye, then!"}]
execute as @s[tag=RunningMan3,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tag @a add ResetRunningMan2
execute as @s[tag=RunningMan3,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tag @a remove TimedRace4
execute as @s[tag=RunningMan3,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tag @a remove TimedRace
execute as @s[tag=RunningMan3,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tag @s add RunAway
execute as @s[tag=RunningMan3,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run scoreboard players reset @a RaceTime
execute as @s[tag=RunningMan3,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Business Scrub 1
execute as @s[tag=BusinessScrub6,scores={text=1}] at @s if entity @a[distance=..3] run summon minecraft:villager ~ ~-1 ~ {Tags:["ScrubShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:15,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:stick,Count:1,tag:{display:{Name:"{\"text\":\"Deku Stick\"}"},DekuStick:1b,Item:1b}},rewardExp:0b,maxUses:1}]}}
execute as @s[tag=BusinessScrub6,scores={text=1}] at @s if entity @a[distance=..3] run tellraw @a ["",{"text":"Business Scrub: ","color":"gold"},{"text":"All right! You win! In return, I will sell you Deku Sticks! "},{"text":"one ","color":"red"},{"text":"for "},{"text":"15 Rupees","color":"red"},{"text":" they are! Let's make a deal!"}]
execute as @s[tag=BusinessScrub6,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext
execute as @s[tag=BusinessScrub6,scores={text=1}] at @s if entity @a[distance=..3] run scoreboard players set @s text 0

#Business Scrub 2
execute as @s[tag=BusinessScrub7,scores={text=1}] at @s if entity @a[distance=..3] run summon minecraft:villager ~ ~-1 ~ {Tags:["ScrubShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:20,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:carrot_on_a_stick,Count:1,tag:{Unbreakable:1b,Damage:17,HideFlags:63,NutPickup:1b,PickupItem:1b,display:{Name:"\"Deku Nuts (5)\""}}},rewardExp:0b,maxUses:1}]}}
execute as @s[tag=BusinessScrub7,scores={text=1}] at @s if entity @a[distance=..3] run tellraw @a ["",{"text":"Business Scrub: ","color":"gold"},{"text":"I surrender! In return, I will sell you Deku Nuts! "},{"text":"five ","color":"red"},{"text":"for "},{"text":"20 Rupees","color":"red"},{"text":" they are! Let's make a deal!"}]
execute as @s[tag=BusinessScrub7,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext
execute as @s[tag=BusinessScrub7,scores={text=1}] at @s if entity @a[distance=..3] run scoreboard players set @s text 0

#Business Scrub 3
execute as @s[tag=BusinessScrub8,scores={text=1}] at @s if entity @a[distance=..3] run summon minecraft:villager ~ ~-1 ~ {Tags:["ScrubShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:40,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:stick,Count:1,tag:{display:{Name:"{\"text\":\"Deku Stick Upgrade\"}"},DekuStickUpgrade:1b}},rewardExp:0b,maxUses:1}]}}
execute as @s[tag=BusinessScrub8,scores={text=1}] at @s if entity @a[distance=..3] run tellraw @a ["",{"text":"Business Scrub: ","color":"gold"},{"text":"I surrender! To make your quest easier, I can enable you to pick up more "},{"text":"Deku Sticks","color":"red"},{"text":"! But it'll cost you "},{"text":"40 Rupees","color":"red"},{"text":"! Let's make a deal!"}]
execute as @s[tag=BusinessScrub8,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext
execute as @s[tag=BusinessScrub8,scores={text=1}] at @s if entity @a[distance=..3] run scoreboard players set @s text 0

#Business Scrub 4
execute as @s[tag=BusinessScrub10,scores={text=1}] at @s if entity @a[distance=..3] run summon minecraft:villager ~ ~-1 ~ {Tags:["ScrubShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:40,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:carrot_on_a_stick,Count:1,tag:{display:{Name:"{\"text\":\"Deku Nut Upgrade\"}"},Unbreakable:1b,Damage:17,HideFlags:63,DekuNutUpgrade:1b}},rewardExp:0b,maxUses:1}]}}
execute as @s[tag=BusinessScrub10,scores={text=1}] at @s if entity @a[distance=..3] run tellraw @a ["",{"text":"Business Scrub: ","color":"gold"},{"text":"I surrender! To make your quest easier, I can enable you to pick up more "},{"text":"Deku Nuts","color":"red"},{"text":"! But it'll cost you "},{"text":"40 Rupees","color":"red"},{"text":"! Let's make a deal!"}]
execute as @s[tag=BusinessScrub10,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext
execute as @s[tag=BusinessScrub10,scores={text=1}] at @s if entity @a[distance=..3] run scoreboard players set @s text 0

#Business Scrub 5
#1
execute if entity @a[tag=Adult] as @s[tag=BusinessScrub11,scores={text=1}] at @s if entity @a[distance=..3] run summon minecraft:villager ~ ~-1 ~ {Tags:["ScrubShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lapis_lazuli,Count:14,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},sell:{id:shears,Count:1,tag:{display:{Name:"{\"text\":\"Arrows (30)\"}"},Unbreakable:1b,Damage:20,Item:1b,ArrowPickup:1b,PickupItem:1b,ArrowPickup30:1b}},rewardExp:0b,maxUses:1}]}}
execute if entity @a[tag=Adult] as @s[tag=BusinessScrub11,scores={text=1}] at @s if entity @a[distance=..3] run tellraw @a ["",{"text":"Business Scrub: ","color":"gold"},{"text":"Knock it off! If you leave me alone, I will sell you "},{"text":"arrows","color":"red"},{"text":"! "},{"text":"Thirty ","color":"red"},{"text":"for "},{"text":"70 Rupees ","color":"red"},{"text":"they are! Let's make a deal!"}]
execute if entity @a[tag=Adult] as @s[tag=BusinessScrub11,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext
execute if entity @a[tag=Adult] as @s[tag=BusinessScrub11,scores={text=1}] at @s if entity @a[distance=..3] run scoreboard players set @s text 0
#2
execute unless entity @a[tag=Adult] as @s[tag=BusinessScrub11,scores={text=1}] at @s if entity @a[distance=..3] run summon minecraft:villager ~ ~-1 ~ {Tags:["ScrubShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:40,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:15,HideFlags:63,DekuSeedPickup:1b,PickupItem:1b,DekuSeedPickup3:1b,display:{Name:"\"Deku Seeds (30)\""}}},rewardExp:0b,maxUses:1}]}}
execute unless entity @a[tag=Adult] as @s[tag=BusinessScrub11,scores={text=1}] at @s if entity @a[distance=..3] run tellraw @a ["",{"text":"Business Scrub: ","color":"gold"},{"text":"All right! You win! In return, I will sell you Deku Seeds! "},{"text":"Thirty ","color":"red"},{"text":"for "},{"text":"40 Rupees","color":"red"},{"text":" they are! Let's make a deal!"}]
execute unless entity @a[tag=Adult] as @s[tag=BusinessScrub11,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext
execute unless entity @a[tag=Adult] as @s[tag=BusinessScrub11,scores={text=1}] at @s if entity @a[distance=..3] run scoreboard players set @s text 0

#Business Scrub 6
execute as @s[tag=BusinessScrub12,scores={text=1}] at @s if entity @a[distance=..3] run summon minecraft:villager ~ ~-1 ~ {Tags:["ScrubShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:40,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},buyB:{id:glass_bottle,Count:1,tag:{display:{Name:"\"Bottle\""}}},sell:{id:"carrot_on_a_stick",Count:1,tag:{display:{Name:"{\"text\":\"Green Potion\"}"},Unbreakable:1b,Damage:19,HideFlags:63,GreenPotion:1b}},rewardExp:0b,maxUses:1}]}}
execute as @s[tag=BusinessScrub12,scores={text=1}] at @s if entity @a[distance=..3] run tellraw @a ["",{"text":"Business Scrub: ","color":"gold"},{"text":"All right! You win! If you spare me, I will sell you a "},{"text":"Green Potion","color":"green"},{"text":" for "},{"text":"40 Rupees","color":"red"},{"text":"! Let's make a deal!"}]
execute as @s[tag=BusinessScrub12,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext
execute as @s[tag=BusinessScrub12,scores={text=1}] at @s if entity @a[distance=..3] run scoreboard players set @s text 0

#Business Scrub 7
execute as @s[tag=BusinessScrub13,scores={text=1}] at @s if entity @a[distance=..3] run summon minecraft:villager ~ ~-1 ~ {Tags:["ScrubShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:40,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},buyB:{id:glass_bottle,Count:1,tag:{display:{Name:"\"Bottle\""}}},sell:{id:"carrot_on_a_stick",Count:1,tag:{display:{Name:"{\"text\":\"Red Potion\"}"},Unbreakable:1b,Damage:20,HideFlags:63,RedPotion:1b}},rewardExp:0b,maxUses:1}]}}
execute as @s[tag=BusinessScrub13,scores={text=1}] at @s if entity @a[distance=..3] run tellraw @a ["",{"text":"Business Scrub: ","color":"gold"},{"text":"All right! You win! If you spare me, I will sell you a "},{"text":"Red Potion","color":"red"},{"text":" for "},{"text":"40 Rupees","color":"red"},{"text":"! Let's make a deal!"}]
execute as @s[tag=BusinessScrub13,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext
execute as @s[tag=BusinessScrub13,scores={text=1}] at @s if entity @a[distance=..3] run scoreboard players set @s text 0

#Gossip Stone 1
execute as @s[tag=GossipStone1,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Responding to your mask, this strange stone statue talks to you...\n"},{"text":"Gossip Stone: ","color":"gold"},{"text":"I overheard this... They say that the small holes in the ground that you can find all over Hyrule make a perfect breeding ground for bugs."}]
execute as @s[tag=GossipStone1,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#Gossip Stone 2
execute as @s[tag=GossipStone2,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Responding to your mask, this strange stone statue talks to you...\n"},{"text":"Gossip Stone: ","color":"gold"},{"text":"I overheard this... They say that one Kokiri has left the forest, but he is still alive!"}]
execute as @s[tag=GossipStone2,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#Gossip Stone 3
execute as @s[tag=GossipStone3,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Responding to your mask, this strange stone statue talks to you...\n"},{"text":"Gossip Stone: ","color":"gold"},{"text":"I overheard this... They say that the Kokiri are always followed by small fairies."}]
execute as @s[tag=GossipStone3,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#Gossip Stone 4
execute as @s[tag=GossipStone4,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Responding to your mask, this strange stone statue talks to you...\n"},{"text":"Gossip Stone: ","color":"gold"},{"text":"I overheard this... They say that when nonfairy folk enter the Lost Woods, they become monsters!"}]
execute as @s[tag=GossipStone4,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#Gossip Stone 5
execute as @s[tag=GossipStone5,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Responding to your mask, this strange stone statue talks to you...\n"},{"text":"Gossip Stone: ","color":"gold"},{"text":"I overheard this... They say that the owl named Kaepora Gaebora is the reincarnation of an ancient Sage."}]
execute as @s[tag=GossipStone5,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#Gossip Stone 6
execute as @s[tag=GossipStone6,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Responding to your mask, this strange stone statue talks to you...\n"},{"text":"Gossip Stone: ","color":"gold"},{"text":"I overheard this... They say that strange owl, Kaepora Gaebora, may look big and heavy, but its character is rather lighthearted."}]
execute as @s[tag=GossipStone6,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#Gossip Stone 7
execute as @s[tag=GossipStone7,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Responding to your mask, this strange stone statue talks to you...\n"},{"text":"Gossip Stone: ","color":"gold"},{"text":"I overheard this... They say that it's possible to find a total of 100 Gold Skulltulas throughout Hyrule."}]
execute as @s[tag=GossipStone7,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Gopher
#1
execute unless block 927 5 -635 minecraft:mossy_cobblestone as @s[tag=SecretGopher,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"AlaskanGopher: ","color":"gold"},{"text":"The hidden alcove is somewhere in the "},{"text":"Lost Woods","color":"green"},{"text":" and you must have a secret "},{"text":"on you","color":"red"},{"text":" to enter.\n"},{"text":"Kokiri Forest","color":"green"},{"text":"\n"},{"text":"Two in Castle Town","color":"aqua"},{"text":"\nThe field outside of "},{"text":"Hyrule Castle","color":"light_purple"},{"text":"\n"},{"text":"Hyrule Castle","color":"light_purple"},{"text":"\n"},{"text":"Kakariko Village","color":"red"},{"text":"\n"},{"text":"Goron City","color":"gold"},{"text":"\n"},{"text":"Zora's Domain","color":"blue"},{"text":"\n"},{"text":"Fishing Pond","color":"aqua"},{"text":"\n"},{"text":"Destroyed Castle Town","color":"red"},{"text":"\n"},{"text":"Zora's Domain ","color":"blue"},{"text":"(Adult)\n"},{"text":"Zora's Fountain ","color":"aqua"},{"text":"(Adult)\n"},{"text":"Inside Gerudo Fortress","color":"yellow"},{"text":"\n"},{"text":"Haunted Wasteland","color":"gold"},{"text":"\n"},{"text":"Desert Colossus","color":"yellow"},{"text":"\n"},{"text":"Outside Ganon's Castle","color":"red"},{"text":". Good Luck!"}]
execute unless block 927 5 -635 minecraft:mossy_cobblestone as @s[tag=SecretGopher,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute unless block 927 5 -635 minecraft:mossy_cobblestone as @s[tag=SecretGopher,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"AlaskanGopher: ","color":"gold"},{"text":"You...you got them all?! WOW! Nice job! I bet you sure feel powerful! Just don't do too crazy or you might destroy this world by accident!"}]
execute unless block 927 5 -635 minecraft:mossy_cobblestone as @s[tag=SecretGopher,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
