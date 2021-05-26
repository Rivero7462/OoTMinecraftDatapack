#data merge entity 4f4c598c-f3d1-48f0-b82c-112474cbedd3 {Rotation:[110f],Pose:{RightLeg:[50f,0f,0f],LeftLeg:[-30f,0f,0f],Head:[20f,0f,0f]}}
#tp @e[tag=Nabooru1] -46 84.5 880

execute unless entity @a[scores={click=0..}] run fill -45 82 879 -45 82 879 minecraft:gold_block
execute unless entity @a[scores={click=0..}] run fill -44 86 880 -44 86 880 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -43 86 879 -43 86 879 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -42 86 880 -42 86 880 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -43 86 881 -43 86 881 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a -43 85 880
execute unless entity @a[scores={click=0..}] run tp @s -46 85 880 -90 ~
execute unless entity @a[scores={click=0..}] run data merge entity @s {Pose:{Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]}}
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Nabooru: ","color":"gold"},{"text":"I haven't seen you around, kid...","color":"white"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Nabooru: ","color":"gold"},{"text":"What do you want?","color":"white"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Nabooru:","color":"gold"},{"text":" You're just a kid! The temple is no place for kids!"}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Nabooru:","color":"gold"},{"text":" A Sage? I don't know anyone like that."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Nabooru:","color":"gold"},{"text":" You have nothing to do? What good timing! Can you do me a favor, kid?"}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Nabooru:","color":"gold"},{"text":" Wait a second. I want to ask you first..."}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Nabooru:","color":"gold"},{"text":" You wouldn't happen to be one of Ganondorf's...followers...would you?"}]
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @a[scores={click=15}] run tellraw @a ["",{"text":"Nabooru:","color":"gold"},{"text":" Uh-huh!"}]
execute if entity @a[scores={click=15}] run scoreboard players set @a click 16
execute if entity @a[scores={click=17}] run tellraw @a ["",{"text":"Nabooru:","color":"gold"},{"text":" You've got guts. I think I like you."}]
execute if entity @a[scores={click=17}] run scoreboard players set @a click 18
execute if entity @a[scores={click=19}] run tellraw @a ["",{"text":"Nabooru:","color":"gold"},{"text":" First of all, let me introduce myself. I'm "},{"text":"Nabooru","color":"red"},{"text":" of the Gerudo. I'm a lone-wolf thief."}]
execute if entity @a[scores={click=19}] run scoreboard players set @a click 20
execute if entity @a[scores={click=21}] run tellraw @a ["",{"text":"Nabooru: ","color":"gold"},{"text":"But don't get me wrong!"}]
execute if entity @a[scores={click=21}] run scoreboard players set @a click 22
execute if entity @a[scores={click=23}] run tellraw @a ["",{"text":"Nabooru: ","color":"gold"},{"text":"Though we're both thieves, I'm completely different from Ganondorf."}]
execute if entity @a[scores={click=23}] run scoreboard players set @a click 24
execute if entity @a[scores={click=25}] run tellraw @a ["",{"text":"Nabooru:","color":"gold"},{"text":" With his followers, he stole from women and children, and even killed people!"}]
execute if entity @a[scores={click=25}] run scoreboard players set @a click 26
execute if entity @a[scores={click=27}] run tellraw @a ["",{"text":"Nabooru:","color":"gold"},{"text":" A kid like you may not know this, but the Gerudo race consists only of women. Only one man is born every hundred years..."}]
execute if entity @a[scores={click=27}] run scoreboard players set @a click 28
execute if entity @a[scores={click=29}] run tellraw @a ["",{"text":"Nabooru:","color":"gold"},{"text":" Even though our laws say that lone male Gerudo must become King of the Gerudo, I'll never bow to such an evil man!"}]
execute if entity @a[scores={click=29}] run scoreboard players set @a click 30
execute if entity @a[scores={click=31}] run tellraw @a ["",{"text":"Nabooru:","color":"gold"},{"text":" By the way, what is your name, kid?"}]
execute if entity @a[scores={click=31}] run scoreboard players set @a click 32
execute if entity @a[scores={click=33}] run tellraw @a ["",{"text":"Nabooru:","color":"gold"},{"text":" "},{"selector":"@p"},{"text":"?!"}]
execute if entity @a[scores={click=33}] run scoreboard players set @a click 34
execute if entity @a[scores={click=35}] run tellraw @a ["",{"text":"Nabooru:","color":"gold"},{"text":" What kind of name is that? Well...anyway..."}]
execute if entity @a[scores={click=35}] run scoreboard players set @a click 36
execute if entity @a[scores={click=37}] run tellraw @a ["",{"text":"Nabooru:","color":"gold"},{"text":" I want to ask you a favor..."}]
execute if entity @a[scores={click=37}] run scoreboard players set @a click 38
execute if entity @a[scores={click=39}] run tellraw @a ["",{"text":"Nabooru:","color":"gold"},{"text":" Will you go through this tiny hole and get a treasure that's inside?"}]
execute if entity @a[scores={click=39}] run scoreboard players set @a click 40
execute if entity @a[scores={click=41}] run tellraw @a ["",{"text":"Nabooru:","color":"gold"},{"text":" The treasure is the "},{"text":"Silver Gauntlets","color":"blue"},{"text":". If you equip them, you can easily push and pull very heavy things!"}]
execute if entity @a[scores={click=41}] run scoreboard players set @a click 42
execute if entity @a[scores={click=43}] run tellraw @a ["",{"text":"Nabooru:","color":"gold"},{"text":" No, no, no, kid! Don't even think about taking this treasure for yourself!"}]
execute if entity @a[scores={click=43}] run scoreboard players set @a click 44
execute if entity @a[scores={click=45}] run tellraw @a ["",{"text":"Nabooru:","color":"gold"},{"text":" The Silver Gauntlets won't fit a little kid like you if you try to equip them! I want you to be a good boy and give them to me!"}]
execute if entity @a[scores={click=45}] run scoreboard players set @a click 46
execute if entity @a[scores={click=47}] run tellraw @a ["",{"text":"Nabooru:","color":"gold"},{"text":" Ganondorf and his minions are using the Spirit Temple as a hideout."}]
execute if entity @a[scores={click=47}] run scoreboard players set @a click 48
execute if entity @a[scores={click=49}] run tellraw @a ["",{"text":"Nabooru:","color":"gold"},{"text":" Only the Silver Gauntlets will allow me to sneak deep into this temple."}]
execute if entity @a[scores={click=49}] run scoreboard players set @a click 50
execute if entity @a[scores={click=51}] run tellraw @a ["",{"text":"Nabooru:","color":"gold"},{"text":" Once there, I'm going to steal all the treasure inside and mess up their plans!"}]
execute if entity @a[scores={click=51}] run scoreboard players set @a click 52
execute if entity @a[scores={click=53}] run tellraw @a ["",{"text":"Nabooru:","color":"gold"},{"text":" How about it? Will you do it?"}]
execute if entity @a[scores={click=53}] run scoreboard players set @a click 54
execute if entity @a[scores={click=55}] run tellraw @a ["",{"text":"Nabooru:","color":"gold"},{"text":" Thanks, kid!"}]
execute if entity @a[scores={click=55}] run scoreboard players set @a click 56
execute if entity @a[scores={click=57}] run tellraw @a ["",{"text":"Nabooru:","color":"gold"},{"text":" You and I, let's give Ganondorf and his followers a big surprise, shall we?"}]
execute if entity @a[scores={click=57}] run scoreboard players set @a click 58
execute if entity @a[scores={click=59}] run tellraw @a ["",{"text":"Nabooru:","color":"gold"},{"text":" If you can successfully get the "},{"text":"Silver Gauntlets","color":"blue"},{"text":"..."}]
execute if entity @a[scores={click=59}] run scoreboard players set @a click 60
execute if entity @a[scores={click=61}] run tellraw @a ["",{"text":"Nabooru:","color":"gold"},{"text":" I'll do something great for you!"}]
execute if entity @a[scores={click=61}] run scoreboard players set @a click 62
execute if entity @a[scores={click=62..}] run scoreboard players add @s lifetime 1

execute if entity @s[scores={lifetime=1..10}] run tp @s ~.2 ~ ~-.2 -135 ~

execute if entity @s[scores={lifetime=11}] run tag @a remove NoOcarina
execute if entity @s[scores={lifetime=11}] run tp @s -44 85 878 -70 ~
execute if entity @s[scores={lifetime=11}] run fill -47 85 880 -47 85 880 minecraft:air
execute if entity @s[scores={lifetime=11}] run fill -44 86 881 -42 86 879 minecraft:air
execute if entity @s[scores={lifetime=11}] run tag @s add stoptext
execute if entity @s[scores={lifetime=11}] run scoreboard players set @s text 2

execute if entity @s[scores={lifetime=11}] run tag @a remove MeetNabooru
execute if entity @s[scores={lifetime=11}] run scoreboard objectives remove click
