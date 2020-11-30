execute as @s[type=armor_stand,tag=Goron] at @s if entity @s[tag=Ball] run data merge entity @s {Pose:{Body:[-45f,0f,0f],Head:[90f,0f,0f],LeftLeg:[160f,180f,0f],RightLeg:[160f,180f,0f],LeftArm:[0f,0f,90f],RightArm:[0f,0f,-90f]}}
execute as @s[type=armor_stand,tag=Goron] at @s if entity @s[tag=Ball] run tp @s ~ ~-1.1 ~
execute as @s[type=armor_stand,tag=Goron] at @s if entity @s[tag=Ball] run tag @s add Stop
execute as @s[type=armor_stand,tag=Goron] at @s if entity @s[tag=Ball] run tag @s remove Ball

execute as @s[type=armor_stand,tag=Goron] at @s if entity @s[tag=stoptext] unless entity @s[tag=Stop] if entity @a[distance=2..3] run tag @s add Ball

#Goron1
#1
execute as @s[tag=Goron1,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tp @s ~ 103 ~
execute as @s[tag=Goron1,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron1,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron:","color":"gold"},{"text":" They say that a "},{"text":"beautiful fairy","color":"red"},{"text":" lives on top of Death Mountain! Don't you want to see her?"}]
execute as @s[tag=Goron1,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=Goron1,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tp @s ~ 103 ~
execute as @s[tag=Goron1,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron1,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"They say that a "},{"text":"fairy ","color":"red"},{"text":"lives on top of Death Mountain. If you want to make it to the top, you'd better take a big "},{"text":"shield ","color":"aqua"},{"text":"with you..."}]
execute as @s[tag=Goron1,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Goron2
#1
execute as @s[tag=Goron2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tp @s ~ 100 ~
execute as @s[tag=Goron2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron:","color":"gold"},{"text":" I wish I could roll down the mountain like a rock, with a "},{"text":"Bomb Flower","color":"red"},{"text":", and... "},{"text":"BOOOOOOM!","color":"red"},{"text":" If I could do that with a Bomb Flower, I could become a real man."}]
execute as @s[tag=Goron2,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=Goron2,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tp @s ~ 100 ~
execute as @s[tag=Goron2,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron2,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"Oh, I see... We should have thrown the bomb from the cliff..."}]
execute as @s[tag=Goron2,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=Goron2,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tp @s ~ 100 ~
execute as @s[tag=Goron2,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron2,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"You are incredible, destroying the Dodongos! Do you mind if I call you Big Brother?"}]
execute as @s[tag=Goron2,scores={text=3}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Goron3
execute as @s[tag=Goron7] at @s unless entity @s[scores={text=4}] run scoreboard players add @s[scores={text=1..2}] text 1
execute as @s[tag=Goron7] at @s unless entity @s[scores={text=4}] run scoreboard players set @s[scores={text=3..}] text 1
#1
execute as @s[tag=Goron7,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tp @s ~ 112 ~
execute as @s[tag=Goron7,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron7,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron:","color":"gold"},{"text":" I'm standing here to shade this "},{"text":"Bomb Flower","color":"red"},{"text":" from the sun. The plant growing over there is a "},{"text":"Bomb Flower","color":"red"},{"text":". It's a \"mining plant\" that grows only on this mountain. They usually grow only in dark places, like caves, so Bomb Flowers that grow in a place like this are extremely rare. If you have the "},{"text":"Goron's Bracelet","color":"red"},{"text":", even a little kid like you could easily pick one by standing by it."}]
execute as @s[tag=Goron7,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tag @s add stoptext
#2
execute as @s[tag=Goron7,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tp @s ~ 112 ~
execute as @s[tag=Goron7,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron7,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron:","color":"gold"},{"text":" I'm standing here to shade this "},{"text":"Bomb Flower","color":"red"},{"text":" from the sun. Did you see the cavern on your way here? That is "},{"text":"Dodongo's Cavern","color":"red"},{"text":". Because the light inside is very dim, the "},{"text":"Bomb Flowers","color":"red"},{"text":", a plant unique to this mountain, grow like crazy in there!"}]
execute as @s[tag=Goron7,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tag @s add stoptext
#3
execute as @s[tag=Goron7,scores={text=4}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tp @s ~ 112 ~
execute as @s[tag=Goron7,scores={text=4}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron7,scores={text=4}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"You are incredible, destroying the Dodongos! Do you mind if I call you Big Brother?"}]
execute as @s[tag=Goron7,scores={text=4}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tag @s add stoptext

#Goron4
#1
execute as @s[tag=Goron10,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tp @s ~ 93 ~
execute as @s[tag=Goron10,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron10,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron:","color":"gold"},{"text":" I am one of the "},{"text":"Gorons","color":"red"},{"text":", the stone-eating people who live on Death Mountain. Look at that huge boulder over there! It blocks the entrance to "},{"text":"Dodongo's Cavern","color":"red"},{"text":", which was once a very important place for us Gorons... But one day, many Dodongos suddenly appeared inside the cavern. It became a very dangerous place! On top of that, a "},{"text":"Gerudo in black armor","color":"red"},{"text":" used his magic to seal the entrance with that boulder! If you want to hear more Goron gossip, head up to our city! "},{"text":"Goron City","color":"red"},{"text":" is just a little way up the trail. It won't take much longer to get there, even on foot."}]
execute as @s[tag=Goron10,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=Goron10,scores={text=1}] at @s if entity @a[distance=..2] run scoreboard players set @s text 2
#2
execute as @s[tag=Goron10,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tp @s ~ 93 ~
execute as @s[tag=Goron10,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron10,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron:","color":"gold"},{"text":" If you want to hear more Goron gossip, head up to our city! "},{"text":"Goron City","color":"red"},{"text":" is just a little way up the trail. It won't take much longer to get there, even on foot."}]
execute as @s[tag=Goron10,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=Goron10,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tp @s ~ 93 ~
execute as @s[tag=Goron10,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron10,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"Oh, now we can enter the cavern. You're so smart!"}]
execute as @s[tag=Goron10,scores={text=3}] at @s if entity @a[distance=..2] run tag @s add stoptext
#4
execute as @s[tag=Goron10,scores={text=4}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tp @s ~ 93 ~
execute as @s[tag=Goron10,scores={text=4}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @s[tag=Goron10,scores={text=4}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"You are incredible, destroying the Dodongos! Do you mind if I call you Big Brother?"}]
execute as @s[tag=Goron10,scores={text=4}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Owl
#1
execute as @s[tag=OwlStand9,scores={text=1}] at @s if entity @a[distance=..3] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"You've done well to come all the way up here, "},{"selector":"@p"},{"text":". This is the summit of the sacred Death Mountain! Hoot! It is said that the clouds surrounding this peak reflect the condition of Death Mountain. When they look normal, it is at peace. Climbing all the way up here just proves how smart you are! Now I want to see you make another smart move... The "},{"text":"Great Fairy","color":"red"},{"text":" lives on this mountaintop, and she will give you a new skill! She is the leader of the fairies, you know. Hoo! Exactly what you need to do to find her, I cannot tell you. She insists all visitors find their own way. Check your surroundings for anything...suspicious. You will surely find your way to her. By the way, the nearby volcanic crater is far too hot for you, and you won't find her there anyway. I will perch here and wait for you. When you're ready to go back down, I can help you! Now get going!"}]
execute as @s[tag=OwlStand9,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext

#Gossip Stone 1
execute as @s[tag=GossipStone17,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Responding to your mask, this strange stone statue talks to you...\n"},{"text":"Gossip Stone: ","color":"gold"},{"text":"I overheard this... They say that Biggoron's Sword is super sharp and will never break."}]
execute as @s[tag=GossipStone17,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
