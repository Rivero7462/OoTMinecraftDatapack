execute unless entity @a[scores={click=0..}] run stopsound @a
execute unless entity @a[scores={click=0..}] run fill 935 9 1394 935 9 1394 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 936 9 1393 936 9 1393 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 937 9 1394 937 9 1394 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 936 9 1395 936 9 1395 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a 936 8.5 1394 -90 ~
execute unless entity @a[scores={click=0..}] run scoreboard players set @e[type=armor_stand,tag=Sheik1] timer 0
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1..}] run scoreboard players add @e[type=armor_stand,tag=Sheik1] timer 1
execute if entity @e[type=armor_stand,tag=Sheik1,scores={timer=15}] run tp @e[type=armor_stand,tag=Sheik1] 929 8 1394 -90 ~
execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"I have been waiting for you, "},{"selector":"@p"},{"text":"."}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tp @a 936 8.5 1394 90 ~
execute if entity @a[scores={click=3}] run function ocarina_of_time:music/sheik
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"selector":"@p"},{"text":", the Hero of Time..."}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"You have overcome many hardships and awakened six Sages."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"And now you have a final challenge-a showdown with Ganondorf, the King of Evil..."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"Before that...I have things I want to tell only to you. Please listen."}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"Another unknown legend of the Triforce passed down by the Shadow Folk, the Sheikah..."}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"If you would seek the sacred triangle, listen well..."}]
execute if entity @a[scores={click=13}] run function ocarina_of_time:music/chamber_of_sages
execute if entity @a[scores={click=13}] run tp @a 953 14 1431 -90 ~
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @a[scores={click=15}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"The resting place of the sacred triangle, the Sacred Realm, is a mirror that reflects what is in the heart..."}]
execute if entity @a[scores={click=15}] run scoreboard players set @a click 16
execute if entity @a[scores={click=17}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"the heart of one who enters it... If an evil heart, the Realm will become full of evil; if pure, the Realm will become a paradise."}]
execute if entity @a[scores={click=17}] run scoreboard players set @a click 18
execute if entity @a[scores={click=19}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"The Triforce...the sacred triangle... It is a balance that weighs the three forces: Power, Wisdom, and Courage."}]
execute if entity @a[scores={click=19}] run scoreboard players set @a click 20
execute if entity @a[scores={click=21}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"If the heart of the one who holds the sacred triangle has all three forces in balance, that one will gain the True Force to govern all."}]
execute if entity @a[scores={click=21}] run scoreboard players set @a click 22
execute if entity @a[scores={click=23}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"But if that one's heart is not in balance, the Triforce will separate into three parts: Power, Wisdom, and Courage."}]
execute if entity @a[scores={click=23}] run scoreboard players set @a click 24
execute if entity @a[scores={click=25}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"Only one part will remain for the one who touched the Triforce...the part representing the force that one most believes in."}]
execute if entity @a[scores={click=25}] run scoreboard players set @a click 26
execute if entity @a[scores={click=27}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"If that one seeks the True Force, that one must aquire the two lost parts."}]
execute if entity @a[scores={click=27}] run scoreboard players set @a click 28
execute if entity @a[scores={click=29}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"Those two parts will be held within others chosen by destiny who will bear the Triforce mark on the backs of their hands."}]
execute if entity @a[scores={click=29}] run scoreboard players set @a click 30
execute if entity @a[scores={click=31}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"Seven years ago, Ganondorf, the King of Thieves, used the door you opened in the Temple of Time and entered the Sacred Realm."}]
execute if entity @a[scores={click=31}] run function ocarina_of_time:music/sheik
execute if entity @a[scores={click=31}] run fill 937 9 1395 935 9 1393 minecraft:air
execute if entity @a[scores={click=31}] run fill 932 9 1394 932 9 1394 minecraft:barrier
execute if entity @a[scores={click=31}] run fill 933 9 1395 933 9 1395 minecraft:barrier
execute if entity @a[scores={click=31}] run fill 933 9 1393 933 9 1393 minecraft:barrier
execute if entity @a[scores={click=31}] run fill 934 9 1394 934 9 1394 minecraft:barrier
execute if entity @a[scores={click=31}] run tp @a 933 8 1394 90 ~
execute if entity @a[scores={click=31}] run scoreboard players set @a click 32
execute if entity @a[scores={click=33}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"But when he laid his hands on the Triforce, the legend came true."}]
execute if entity @a[scores={click=33}] run scoreboard players set @a click 34
execute if entity @a[scores={click=35}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"The Triforce separated into three parts. Only the "},{"text":"Triforce of Power","color":"red"},{"text":" remained in Ganondorf's hand."}]
execute if entity @a[scores={click=35}] run scoreboard players set @a click 36
execute if entity @a[scores={click=37}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"The strength of the Triforce of Power enabled him to become a mighty, evil king, but his dark ambitions were not satisfied."}]
execute if entity @a[scores={click=37}] run scoreboard players set @a click 38
execute if entity @a[scores={click=39}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"To gain complete mastery of the world, Ganondorf started looking for "},{"text":"those chosen by destiny ","color":"red"},{"text":"to hold the two other Triforce parts."}]
execute if entity @a[scores={click=39}] run scoreboard players set @a click 40
execute if entity @a[scores={click=41}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"The one who holds the "},{"text":"Triforce of Courage ","color":"red"},{"text":"is...you, "},{"selector":"@p"},{"text":"!"}]
execute if entity @a[scores={click=41}] run scoreboard players set @a click 42
execute if entity @a[scores={click=43}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"And the other, who holds the "},{"text":"Triforce of Wisdom","color":"red"},{"text":"..."}]
execute if entity @a[scores={click=43}] run scoreboard players set @a click 44
execute if entity @a[scores={click=45}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"is the seventh Sage, who is destined to be the leader of them all..."}]
execute if entity @a[scores={click=45}] run scoreboard players set @a click 46
execute if entity @a[scores={click=47}] at @a rotated ~ 0 run particle minecraft:flash ^ ^ ^1 0 0 0 1 3
execute if entity @a[scores={click=47}] run function ocarina_of_time:music/princess_zelda
execute if entity @a[scores={click=47}] run tp @s 929 8 1394
execute if entity @a[scores={click=47}] as @e[type=armor_stand,tag=Sheik1] at @s run tp @s ~ 5 ~
execute if entity @a[scores={click=47}] run scoreboard players set @a click 48
execute if entity @a[scores={click=49}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"It is I, the Princess of Hyrule, "},{"text":"Zelda","color":"red"},{"text":"."}]
execute if entity @a[scores={click=49}] run scoreboard players set @a click 50
execute if entity @a[scores={click=51}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"I apologize for meeting you in disguise, but it was necessary to hide from the King of Evil. Please forgive me..."}]
execute if entity @a[scores={click=51}] run scoreboard players set @a click 52
execute if entity @a[scores={click=53}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"On that day, seven years ago, Ganondorf attacked Hyrule Castle."}]
execute if entity @a[scores={click=53}] run scoreboard players set @a click 54
execute if entity @a[scores={click=55}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"I saw you as I was escaping from the castle with my attendant, Impa."}]
execute if entity @a[scores={click=55}] run scoreboard players set @a click 56
execute if entity @a[scores={click=57}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"I thought I should entrust the ocarina to you... I thought that would be our best chance..."}]
execute if entity @a[scores={click=57}] run scoreboard players set @a click 58
execute if entity @a[scores={click=59}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"As long as you had the ocarina in your possession, I thought Ganondorf could never enter the Sacred Realm, but..."}]
execute if entity @a[scores={click=59}] run scoreboard players set @a click 60
execute if entity @a[scores={click=61}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"But something I could never expect happened..."}]
execute if entity @a[scores={click=61}] run scoreboard players set @a click 62
execute if entity @a[scores={click=63}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"After you opened the Door of Time, the Master Sword sealed you away in the Sacred Realm."}]
execute if entity @a[scores={click=63}] run scoreboard players set @a click 64
execute if entity @a[scores={click=65}] run data merge entity @s {Pose:{Head:[20f,-20f,0f]}}
execute if entity @a[scores={click=65}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"Your spirit remained in the Sacred Realm...and then the Triforce fell into Ganondorf's hands. He went on to invade the Sacred Realm..."}]
execute if entity @a[scores={click=65}] run scoreboard players set @a click 66
execute if entity @a[scores={click=67}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"Ganondorf had become the Evil King, and the Sacred Realm became a world of evil. All of this is an unfortunate coincidence."}]
execute if entity @a[scores={click=67}] run scoreboard players set @a click 68
execute if entity @a[scores={click=69}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"I passed myself off as a Sheikah and hoped that you would return. I waited for seven years..."}]
execute if entity @a[scores={click=69}] run scoreboard players set @a click 70
execute if entity @a[scores={click=71}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute if entity @a[scores={click=71}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"And...now you are back. The dark age ruled by Ganondorf the Evil King will end!"}]
execute if entity @a[scores={click=71}] run scoreboard players set @a click 74
execute if entity @a[scores={click=75}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"The six Sages will open the sealed door and lure Ganondorf back into the Sacred Realm."}]
execute if entity @a[scores={click=75}] run scoreboard players set @a click 76
execute if entity @a[scores={click=77}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"I will then seal the door to the Sacred Realm from this world."}]
execute if entity @a[scores={click=77}] run scoreboard players set @a click 78
execute if entity @a[scores={click=79}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"Thus, Ganondorf the Evil King will vanish from Hyrule."}]
execute if entity @a[scores={click=79}] run scoreboard players set @a click 80
execute if entity @a[scores={click=81}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"selector":"@p"},{"text":"... In order to do this, I need your courage again. Please protect me while I do my part."}]
execute if entity @a[scores={click=81}] run scoreboard players set @a click 82
execute if entity @a[scores={click=83}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"And here is a weapon that can penetrate the Evil King's defenses... The power given to the chosen ones..."}]
execute if entity @a[scores={click=83}] run scoreboard players set @a click 84
execute if entity @a[scores={click=85}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"The sacred "},{"text":"Light Arrow","color":"aqua"},{"text":"!"}]
execute if entity @a[scores={click=85}] run scoreboard players set @a click 86
execute if entity @a[scores={click=87}] run tellraw @a ["",{"text":"You got the "},{"text":"Light Arrow","color":"aqua"},{"text":"! The light of justice will smite evil!"}]
execute if entity @a[scores={click=87}] run tag @e[type=area_effect_cloud,tag=Progress] add LightArrowHelp
execute if entity @a[scores={click=87}] run give @a minecraft:tipped_arrow{Potion:"slow_falling",display:{Name:"{\"text\":\"Light Arrow\"}"},LightArrow:1b,CustomModelData:1,HideFlags:63,ArrowBow:1b,MainHandItem:1b}
execute if entity @a[scores={click=87}] run scoreboard players set @a click 88
execute if entity @a[scores={click=89..90}] as @a at @s run tp @s ~ ~.05 ~
execute if entity @a[scores={click=89..90}] at @a if block ~ ~-1 ~ minecraft:air run scoreboard players add @a click 1
execute if entity @a[scores={click=89}] run stopsound @a music
execute if entity @a[scores={click=89}] run playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ .3 .5
execute if entity @a[scores={click=89}] run scoreboard players set @a click 90
execute if entity @a[scores={click=91}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"That rumbling... It can't be?!"}]
execute if entity @a[scores={click=91}] run scoreboard players set @a click 92
execute if entity @a[scores={click=93}] run summon minecraft:armor_stand 929 8 1394 {Tags:["Crystal"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:white_stained_glass_pane,Count:1,tag:{CustomModelData:21}}],DisabledSlots:2039583}
execute if entity @a[scores={click=93}] run data merge entity @s {Pose:{RightArm:[-90f,10f,10f],LeftArm:[-90f,-10f,-10f]}}
execute if entity @a[scores={click=93}] run function ocarina_of_time:music/ganondorf
execute if entity @a[scores={click=93}] run tellraw @a ["",{"text":"Ganondorf: ","color":"gold"},{"text":"Princess Zelda...you foolish traitor!"}]
execute if entity @a[scores={click=93}] run scoreboard players set @a click 94
execute if entity @a[scores={click=95}] run tellraw @a ["",{"text":"Ganondorf: ","color":"gold"},{"text":"I commend you for avoiding my pursuit for seven long years."}]
execute if entity @a[scores={click=95}] run scoreboard players set @a click 96
execute if entity @a[scores={click=97}] run tellraw @a ["",{"text":"Ganondorf: ","color":"gold"},{"text":"But you let your guard down... I knew you would appear if I let this kid wander around!"}]
execute if entity @a[scores={click=97}] run scoreboard players set @a click 98
execute if entity @a[scores={click=99}] run tellraw @a ["",{"text":"Ganondorf: ","color":"gold"},{"text":"My only mistake was to slightly underestimate the power of this kid..."}]
execute if entity @a[scores={click=99}] run data merge entity @s {Pose:{Head:[-30f,0f,0f],RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f]}}
execute if entity @a[scores={click=99}] run playsound minecraft:entity.panda.hurt ambient @a ~ ~ ~ .5 2
execute if entity @a[scores={click=99}] run scoreboard players set @a click 100
execute if entity @a[scores={click=101..}] run scoreboard players add @s lifetime 1
execute if entity @a[scores={click=101}] run tellraw @a ["",{"text":"Ganondorf: ","color":"gold"},{"text":"No... It was not the kid's power I misjudged. It was the power of the Triforce of Courage!"}]
execute if entity @a[scores={click=101}] run scoreboard players set @a click 102
execute if entity @a[scores={click=103}] run tellraw @a ["",{"text":"Ganondorf: ","color":"gold"},{"text":"But with the Triforce of Wisdom that Zelda has... When I obtain these two..."}]
execute if entity @a[scores={click=103}] run scoreboard players set @a click 104
execute if entity @a[scores={click=105}] run tellraw @a ["",{"text":"Ganondorf: ","color":"gold"},{"text":"Then I will become the true ruler of the world!"}]
execute if entity @a[scores={click=105}] run scoreboard players set @a click 106
execute if entity @a[scores={click=107}] run tellraw @a ["",{"text":"Ganondorf: ","color":"gold"},{"text":"If you want to rescue Zelda, come to my castle!"}]
execute if entity @a[scores={click=107}] run scoreboard players set @a click 108

execute unless entity @a[scores={click=108..}] if entity @s[scores={lifetime=1..30}] run tp @s ~ ~.2 ~
execute unless entity @a[scores={click=108..}] if entity @s[scores={lifetime=1..30}] as @e[type=armor_stand,tag=Crystal] run tp @s ~ ~.2 ~

execute if entity @a[scores={click=108..}] run tag @a remove NoOcarina
execute if entity @a[scores={click=108..}] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={lifetime=27..}] run scoreboard players set @s lifetime 27
execute if entity @a[scores={click=108..}] run function ocarina_of_time:music/temple_of_time
execute if entity @a[scores={click=108..}] run tp @s ~ 31 ~
execute if entity @a[scores={click=108..}] as @e[type=armor_stand,tag=Crystal] run tp @s ~ 31 ~
execute if entity @a[scores={click=108..}] run fill 932 9 1395 934 9 1393 minecraft:air
execute if entity @a[scores={click=108..}] run tag @a add SageBridge
execute if entity @a[scores={click=108..}] run tag @a remove ZeldaReunite
execute if entity @a[scores={click=108..}] run tag @a remove ZeldaReunite2
execute if entity @a[scores={click=108..}] run scoreboard objectives remove click
