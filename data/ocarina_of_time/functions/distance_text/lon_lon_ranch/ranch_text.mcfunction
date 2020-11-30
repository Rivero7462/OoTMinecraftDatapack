#Ingo
#1
execute as @s[tag=Ingo,scores={text=1}] at @s if entity @a[distance=..2] run tellraw @a ["",{"text":"Ingo:","color":"gold"},{"text":" What? What are you doing hanging around here? You little weirdo! I am "},{"text":"Ingo","color":"red"},{"text":", and I mind the ranch. I've been working at this ranch for a long time for that lazy bum, Talon. Today, for example, he's gone somewhere for a delivery and hasn't come back yet! So I'm doing all the work around here. Oh well... It's tough to be a working man."}]
execute as @s[tag=Ingo,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=Ingo,scores={text=1}] at @s if entity @a[distance=..2] run scoreboard players set @s text 2
#2
execute as @s[tag=Ingo,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Ingo:","color":"gold"},{"text":" Oh well... It's tough to be a working man."}]
execute as @s[tag=Ingo,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=Ingo,scores={text=3}] at @s if entity @a[distance=..2] run tellraw @a ["",{"text":"Ingo:","color":"gold"},{"text":" I can't believe that I, the great "},{"text":"Ingo","color":"red"},{"text":", am working on this dump of a ranch! Because the owner is so lazy, I always have to do all the work around here! I, the hardworking "},{"text":"Ingo","color":"red"},{"text":", should be in charge-not that lazy bum, Talon!"}]
execute as @s[tag=Ingo,scores={text=3}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=Ingo,scores={text=3}] at @s if entity @a[distance=..2] run scoreboard players set @s text 4
#4
execute as @s[tag=Ingo,scores={text=4}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Ingo:","color":"gold"},{"text":" I, the hardworking "},{"text":"Ingo","color":"red"},{"text":", should be in charge-not that lazy bum, Talon!"}]
execute as @s[tag=Ingo,scores={text=4}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Talon Door
execute as @s[tag=TalonDoor,scores={text=1}] at @s if entity @a[distance=..3] if entity @a[scores={time=13001..23000}] if block 423 3 1362 minecraft:gold_block if entity @a[x=496,y=30,z=1279,dx=0,dy=0,dz=1] unless entity @a[tag=Adult] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Talon: ","color":"gold"},{"text":"Malon's gone to sleep! I'm goin' to sleep now too. Come back again when it's light out!"}]
execute as @s[tag=TalonDoor,scores={text=1}] at @s if entity @a[distance=..3] if entity @a[scores={time=13001..23000}] if block 423 3 1362 minecraft:gold_block if entity @a[x=496,y=30,z=1279,dx=0,dy=0,dz=1] run tag @s add stoptext

#Malon
#1
execute as @s[tag=Malon3,scores={text=1}] at @s if entity @a[distance=..2] run tellraw @a ["",{"text":"Malon:","color":"gold"},{"text":" It seems like Epona is afraid of you, fairy boy..."}]
execute as @s[tag=Malon3,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=Malon3,scores={text=1}] at @s if entity @a[distance=..2] run scoreboard players set @s text 2
#2
execute as @s[tag=Malon3,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Malon:","color":"gold"},{"text":" My mother composed this song. Epona loves it! Let's sing together."}]
execute as @s[tag=Malon3,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=Malon3,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Malon:","color":"gold"},{"text":" Oh, Epona! She's grown fond of you, fairy boy."}]
execute as @s[tag=Malon3,scores={text=3}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Talon
#1
execute as @s[tag=Talon2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @a[scores={time=13001..23000}] unless entity @a[tag=CuccoMinigame] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Talon:","color":"gold"},{"text":" Mumble...mumble... I'm up! I'm up! What? Hey, forest kid! Got some free time? Then c'mon and play! I'm going to throw these Cuccos into that there gaggle of normal Cuccos. If you can pick out these three special birds from among the normal Cuccos within the time limit, I'll give you "},{"text":"something good","color":"red"},{"text":". If you can't find them, I win. It'll be "},{"text":"10 Rupees","color":"red"},{"text":"... Want to play? (Right-click to play game)"}]
execute as @s[tag=Talon2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @a[scores={time=13001..23000}] run tag @s add stoptext
#2
execute as @s[tag=Talon2,scores={text=2}] at @s if entity @a[distance=..2] unless entity @a[scores={time=13001..23000}] unless entity @a[tag=CuccoMinigame] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Talon:","color":"gold"},{"text":" Hey, "},{"selector":"@p"},{"text":"! If you're lookin' for Malon, she's right outside. Did you come here to play? Well then, how about playing the "},{"text":"Super Cucco-findin' game","color":"red"},{"text":" with me? Or do you want to buy some "},{"text":"Lon Lon Milk","color":"red"},{"text":"? (Right-click to play game or buy milk)"}]
execute as @s[tag=Talon2,scores={text=2}] at @s if entity @a[distance=..2] unless entity @a[scores={time=13001..23000}] run tag @s add stoptext
#Sleep
execute as @s[tag=TalonSleep4,scores={text=1..2}] at @s if entity @a[distance=..2] if entity @a[scores={time=13001..23000}] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Talon:","color":"gold"},{"text":" Zzzzzzzzzzzzzzzz..."}]
execute as @s[tag=TalonSleep4,scores={text=1..2}] at @s if entity @a[distance=..2] if entity @a[scores={time=13001..23000}] run tag @s add stoptext

#Adult Malon
#1
execute as @s[tag=AdultMalon1,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Malon: ","color":"gold"},{"text":"Oh...a visitor! It's been a long time since we've had a visitor here... Where did you come from? Since Ganondorf came, people in the castle town have gone, places have been ruined, and monsters are wandering everywhere. Mr. Ingo is just using the ranch to gain Ganondorf's favor... Everyone seems to be turning evil... But Dad... He was kicked out of the ranch by Mr. Ingo... If I disobey Mr. Ingo, he will treat the horses so badly... So...there's nothing I can do... If only I could play their favorite song for them..."}]
execute as @s[tag=AdultMalon1,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=AdultMalon1,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Malon: ","color":"gold"},{"text":"Please keep it secret from Mr. Ingo that I sing this song..."}]
execute as @s[tag=AdultMalon1,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=AdultMalon1,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Malon: ","color":"gold"},{"text":"Epona ","color":"red"},{"text":"really like that song... Only I could tame that horse... Even Mr. Ingo had a hard time... Hee hee hee!"}]
execute as @s[tag=AdultMalon1,scores={text=3}] at @s if entity @a[distance=..2] run tag @s add stoptext
#4
execute as @s[tag=AdultMalon1,scores={text=5..7}] at @s if entity @a[scores={time=13001..23000}] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Malon: ","color":"gold"},{"text":"Mr. Ingo... He must have been tempted by evil powers. He's not really a bad person at all..."}]
execute as @s[tag=AdultMalon1,scores={text=5..7}] at @s if entity @a[scores={time=13001..23000}] if entity @a[distance=..2] run tag @s add stoptext
#5
execute as @s[tag=AdultMalon1,scores={text=5}] at @s unless entity @a[scores={time=13001..23000}] if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Malon: ","color":"gold"},{"text":"Thank you very much for the other day... I haven't even asked you your name yet...... Really? "},{"selector":"@p"},{"text":"! That's what I thought! You're the fairy boy from the forest! That was years ago! Do you remember me? You do? I was sure it was you, because Epona remembered you! Oh, I have to tell you about "},{"text":"Mr. Ingo","color":"red"},{"text":"... He was afraid the Evil King might find out that Epona had been taken away... It really upset him! But one day, all of a sudden, he went back to being a normal, "},{"text":"nice person","color":"red"},{"text":"! I can't believe it, but peace is returning to this ranch! It's all because of you! I owe you so much! Thank you! Thank you, "},{"selector":"@p"},{"text":"!"}]
execute as @s[tag=AdultMalon1,scores={text=5}] at @s unless entity @a[scores={time=13001..23000}] if entity @a[distance=..2] unless entity @s[tag=stoptext] run fill 457 26 1325 457 26 1325 minecraft:gold_block
execute as @s[tag=AdultMalon1,scores={text=5}] at @s unless entity @a[scores={time=13001..23000}] if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=AdultMalon1,scores={text=5}] at @s unless entity @a[scores={time=13001..23000}] if entity @a[distance=..2] run scoreboard players set @s text 6
#6
execute as @s[tag=AdultMalon1,scores={text=6}] at @s unless entity @a[scores={time=13001..23000}] if entity @a[distance=..2] if entity @e[type=horse,tag=Epona,distance=..20] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Malon: ","color":"gold"},{"text":"Epona looks great! It looks like you were able to tame her too! How about trying your skill with Epona on an "},{"text":"obstacle course","color":"red"},{"text":"? I'll time you for "},{"text":"two laps","color":"red"},{"text":". It's pretty challenging. If you miss jumping a fence in the proper order, you'll fail. How about it? Do you want to try?"}]
execute as @s[tag=AdultMalon1,scores={text=6}] at @s unless entity @a[scores={time=13001..23000}] if entity @a[distance=..2] if entity @e[type=horse,tag=Epona,distance=..20] unless entity @s[tag=stoptext] run fill 455 26 1325 455 26 1325 minecraft:gold_block
execute as @s[tag=AdultMalon1,scores={text=6}] at @s unless entity @a[scores={time=13001..23000}] if entity @a[distance=..2] if entity @e[type=horse,tag=Epona,distance=..20] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Play","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[type=armor_stand,tag=AdultMalon1] at @s if entity @a[distance=..20] if entity @e[type=horse,tag=Epona,distance=..20] run tag @a add MalonMinigame"}}]
execute as @s[tag=AdultMalon1,scores={text=6}] at @s unless entity @a[scores={time=13001..23000}] if entity @a[distance=..2] if entity @e[type=horse,tag=Epona,distance=..20] run tag @s add stoptext
execute as @s[tag=AdultMalon1,scores={text=6}] at @s unless entity @a[scores={time=13001..23000}] if entity @a[distance=..2] if entity @e[type=horse,tag=Epona,distance=..20] run scoreboard players set @s text 7
#7
execute as @s[tag=AdultMalon1,scores={text=7}] at @s unless entity @a[scores={time=13001..23000}] if entity @a[distance=..2] if entity @e[type=horse,tag=Epona,distance=..20] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Malon: ","color":"gold"},{"text":"How about trying your skill with Epona on an "},{"text":"obstacle course","color":"red"},{"text":"? I'll time you for "},{"text":"two laps","color":"red"},{"text":". It's pretty challenging. If you miss jumping a fence in the proper order, you'll fail. How about it? Do you want to try?"}]
execute as @s[tag=AdultMalon1,scores={text=7}] at @s unless entity @a[scores={time=13001..23000}] if entity @a[distance=..2] if entity @e[type=horse,tag=Epona,distance=..20] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Play","color":"green","clickEvent":{"action":"run_command","value":"/execute as @e[type=armor_stand,tag=AdultMalon1] at @s if entity @a[distance=..20] if entity @e[type=horse,tag=Epona,distance=..20] run tag @a add MalonMinigame"}}]
execute as @s[tag=AdultMalon1,scores={text=7}] at @s unless entity @a[scores={time=13001..23000}] if entity @a[distance=..2] if entity @e[type=horse,tag=Epona,distance=..20] run tag @s add stoptext
#6 and 7
execute as @s[tag=AdultMalon1,scores={text=6..7}] at @s unless entity @a[scores={time=13001..23000}] if entity @a[distance=..2] unless entity @e[type=horse,tag=Epona,distance=..20] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Malon: ","color":"gold"},{"text":"How is "},{"text":"Epona ","color":"red"},{"text":"doing? If you play "},{"text":"Epona's Song","color":"red"},{"text":" with your ocarina, she will surely come to you. Please come back to the ranch whenever you want to "},{"text":"practice ","color":"red"},{"text":"riding!"}]
execute as @s[tag=AdultMalon1,scores={text=6..7}] at @s unless entity @a[scores={time=13001..23000}] if entity @a[distance=..2] unless entity @e[type=horse,tag=Epona,distance=..20] run tag @s add stoptext

#Adult Ingo
#1
execute as @s[tag=AdultIngo1,scores={text=1}] at @s if entity @a[distance=..2] run tellraw @a ["",{"text":"Ingo: ","color":"gold"},{"text":"There are some people in Kakariko spreading rumors that I cheated Talon out of the ranch, but... Don't be ridiculous! That guy Talon was weak! I, the hardworking "},{"text":"Ingo","color":"red"},{"text":", poured so much energy into this place! I don't want any strangers like you saying anything bad about me! Listen. The "},{"text":"great Ganondorf","color":"red"},{"text":" recognized my obvious talents and gave the ranch to me! I will raise a fine horse and win recognition from the great Ganondorf! Say, young man, do you want to ride one of my fine horses? If you pay me "},{"text":"10 Rupees","color":"red"},{"text":", you can ride. (Right-click to play game)"}]
execute as @s[tag=AdultIngo1,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
execute as @s[tag=AdultIngo1,scores={text=1}] at @s if entity @a[distance=..2] run scoreboard players set @s text 2
#2
execute as @s[tag=AdultIngo1,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Ingo: ","color":"gold"},{"text":"If you pay me "},{"text":"10 Rupees","color":"red"},{"text":", you can ride. (Right-click to play game)"}]
execute as @s[tag=AdultIngo1,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=AdultIngo1,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Ingo: ","color":"gold"},{"text":"You can talk to me from horseback. Are you ready to go home soon?"}]
execute as @s[tag=AdultIngo1,scores={text=3}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @p ["",{"text":"Yes, I'm done","color":"green","clickEvent":{"action":"run_command","value":"/execute if entity @a[tag=HorseRanchGame] run scoreboard players set @a MiniGameTime 5"}}]
execute as @s[tag=AdultIngo1,scores={text=3}] at @s if entity @a[distance=..2] run tag @s add stoptext
#4
execute as @s[tag=AdultIngo1,scores={text=4}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Ingo: ","color":"gold"},{"text":"When you want to dismount, crouch. Hey young man! Do I know you? I just felt as though I've seen you somewhere before... You can talk to be from horseback. Are you ready to go home soon?"}]
execute as @s[tag=AdultIngo1,scores={text=4}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @p ["",{"text":"Yes, I'm done","color":"green","clickEvent":{"action":"run_command","value":"/execute if entity @a[tag=HorseRanchGame] run scoreboard players set @a MiniGameTime 5"}}]
execute as @s[tag=AdultIngo1,scores={text=4}] at @s if entity @a[distance=..2] run tag @s add stoptext
#5
execute as @s[tag=AdultIngo1,scores={text=5}] at @s if entity @a[distance=..3] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Ingo: ","color":"gold"},{"text":"You're getting better! How about a little race with me? One lap around the corral with that horse. Let's make a little wager-say "},{"text":"50 Rupees","color":"red"},{"text":"?"}]
execute as @s[tag=AdultIngo1,scores={text=5}] at @s if entity @a[distance=..3] run tag @s remove RaceChance
execute as @s[tag=AdultIngo1,scores={text=5}] at @s if entity @a[distance=..3] run tag @s add stoptext
#6
execute as @s[tag=AdultIngo1,scores={text=6}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Ingo: ","color":"gold"},{"text":"Heh heh... Are you mad because you lost? If you're that upset, how about another race? Bet "},{"text":"50 Rupees","color":"red"},{"text":" and race again?"}]
execute as @s[tag=AdultIngo1,scores={text=6}] at @s if entity @a[distance=..2] run tag @s remove RaceChance
execute as @s[tag=AdultIngo1,scores={text=6}] at @s if entity @a[distance=..2] run tag @s add stoptext
#7
execute as @s[tag=AdultIngo1,scores={text=7}] at @s if entity @a[distance=..3] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Ingo: ","color":"gold"},{"text":"Hah ha hah! As I promised, I'll give the horse to you... However... I'll never let you leave this ranch!"}]
execute as @s[tag=AdultIngo1,scores={text=7}] at @s if entity @a[distance=..3] run tag @s remove RaceChance
execute as @s[tag=AdultIngo1,scores={text=7}] at @s if entity @a[distance=..3] run tag @s add stoptext

#Adult Nice Ingo
#1
execute as @s[tag=AdultIngo2,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Ingo: ","color":"gold"},{"text":"Hi there. How are you? I am Ingo. I feel so honored to be allowed to work here."}]
execute as @s[tag=AdultIngo2,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Sleep Ingo 1
execute as @s[tag=SleepIngo1,scores={text=1}] at @s if entity @a[distance=..3] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Ingo: ","color":"gold"},{"text":"Zzzzzzzzzzzzzz... S-stop that song... I...I... Mumble...mumble..."}]
execute as @s[tag=SleepIngo1,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext

#Sleep Ingo 2
execute as @s[tag=SleepIngo3,scores={text=1}] at @s if entity @a[distance=..3] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Ingo: ","color":"gold"},{"text":"Zzzzzzzzzzz... Mumble... It's not easy to be a working man..."}]
execute as @s[tag=SleepIngo3,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext

#Adult Talon
#1
execute as @s[tag=AdultTalon,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Talon: ","color":"gold"},{"text":"I'm gonna turn over a new leaf and work real hard from now on."}]
execute as @s[tag=AdultTalon,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Business Scrub 1
execute as @s[tag=BusinessScrub10,scores={text=1}] at @s if entity @a[distance=..3] run summon minecraft:villager ~ ~-1 ~ {Tags:["ScrubShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:20,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:carrot_on_a_stick,Count:1,tag:{Unbreakable:1b,Damage:17,HideFlags:63,NutPickup:1b,PickupItem:1b,display:{Name:"\"Deku Nuts (5)\""}}},rewardExp:0b,maxUses:1}]}}
execute as @s[tag=BusinessScrub10,scores={text=1}] at @s if entity @a[distance=..3] run tellraw @a ["",{"text":"Business Scrub: ","color":"gold"},{"text":"I surrender! In return, I will sell you Deku Nuts! "},{"text":"five ","color":"red"},{"text":"for "},{"text":"20 Rupees","color":"red"},{"text":" they are! Let's make a deal!"}]
execute as @s[tag=BusinessScrub10,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext
execute as @s[tag=BusinessScrub10,scores={text=1}] at @s if entity @a[distance=..3] run scoreboard players set @s text 0

#Business Scrub 2
execute as @s[tag=BusinessScrub11,scores={text=1}] at @s if entity @a[distance=..3] run summon minecraft:villager ~ ~-1 ~ {Tags:["ScrubShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:40,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:shears,Count:1,tag:{Unbreakable:1b,Damage:15,HideFlags:63,DekuSeedPickup:1b,PickupItem:1b,DekuSeedPickup3:1b,display:{Name:"\"Deku Seeds (30)\""}}},rewardExp:0b,maxUses:1}]}}
execute as @s[tag=BusinessScrub11,scores={text=1}] at @s if entity @a[distance=..3] run tellraw @a ["",{"text":"Business Scrub: ","color":"gold"},{"text":"All right! You win! In return, I will sell you Deku Seeds! "},{"text":"Thirty ","color":"red"},{"text":"for "},{"text":"40 Rupees","color":"red"},{"text":" they are! Let's make a deal!"}]
execute as @s[tag=BusinessScrub11,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext
execute as @s[tag=BusinessScrub11,scores={text=1}] at @s if entity @a[distance=..3] run scoreboard players set @s text 0

#Business Scrub 3
execute as @s[tag=BusinessScrub12,scores={text=1}] at @s if entity @a[distance=..3] run summon minecraft:villager ~ ~-1 ~ {Tags:["ScrubShop","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:15,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:stick,Count:1,tag:{display:{Name:"{\"text\":\"Deku Stick\"}"},DekuStick:1b,Item:1b}},rewardExp:0b,maxUses:1}]}}
execute as @s[tag=BusinessScrub12,scores={text=1}] at @s if entity @a[distance=..3] run tellraw @a ["",{"text":"Business Scrub: ","color":"gold"},{"text":"I quit! If you let me go, I'll sell you some "},{"text":"bombs","color":"red"},{"text":"! "},{"text":"Five ","color":"red"},{"text":"for "},{"text":"40 Rupees ","color":"red"},{"text":"they are! Let's make a deal!"}]
execute as @s[tag=BusinessScrub12,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext
execute as @s[tag=BusinessScrub12,scores={text=1}] at @s if entity @a[distance=..3] run scoreboard players set @s text 0
