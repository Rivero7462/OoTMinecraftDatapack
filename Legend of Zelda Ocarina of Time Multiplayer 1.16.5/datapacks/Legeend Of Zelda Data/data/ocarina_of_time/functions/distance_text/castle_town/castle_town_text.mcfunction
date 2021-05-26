#Guard1 3 and 4
#1
execute as @s[tag=Guard1,scores={text=1}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" Welcome to Hyrule Castle Town. It's a peaceful, prosperous town."}]
execute as @s[tag=Guard1,scores={text=1}] at @s if entity @a[distance=..1] run tag @s add stoptext
#2
execute as @s[tag=Guard1,scores={text=2}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" Kids shouldn't be wandering around town at nighttime! Stay indoors until morning!"}]
execute as @s[tag=Guard1,scores={text=2}] at @s if entity @a[distance=..1] run tag @s add stoptext
#Guard 3 and 4
execute as @s[tag=Guard3,scores={text=1}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" Kids shouldn't be wandering around town at nighttime! Stay indoors until morning!"}]
execute as @s[tag=Guard3,scores={text=1}] at @s if entity @a[distance=..1] run tag @s add stoptext
execute as @s[tag=Guard4,scores={text=1}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" Kids shouldn't be wandering around town at nighttime! Stay indoors until morning!"}]
execute as @s[tag=Guard4,scores={text=1}] at @s if entity @a[distance=..1] run tag @s add stoptext
#3
execute as @s[tag=Guard1,scores={text=3}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Soldier: ","color":"gold"},{"text":"Welcome to Hyrule Castle Town. We're normally a peaceful town, but something seems to have happened at the castle. I wish I could go and see for myself, but my job is to guard this spot and I'm not allowed to guard anything else. It's frustrating."}]
execute as @s[tag=Guard1,scores={text=3}] at @s if entity @a[distance=..1] run tag @s add stoptext

#Pot Guard
#1
execute as @s[tag=Guard31,scores={text=1}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" Man, I am SO bored... Things would sure be more interesting if there were more...troubles in the world... Hey, that's just between you and me, OK? Anyway, maybe we can let off some steam by breaking some jars. Stand near a jar, and left-click with your sword to break it!"}]
execute as @s[tag=Guard31,scores={text=1}] at @s if entity @a[distance=..1] run tag @s add stoptext
#2
execute as @s[tag=Guard31,scores={text=2}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" Man, I am SO tired! The night watch is so boring! I wish some ghosts would come out or something... Hey, I'm really interested in ghosts! Studying them is a hobby of mine, but you never know... The time may come when that kind of knowledge might be useful!"}]
execute as @s[tag=Guard31,scores={text=2}] at @s if entity @a[distance=..1] run tag @s add stoptext

#Red Twin
#1
execute as @s[tag=RedTwin,scores={text=1}] at @s if entity @a[distance=..1] run tellraw @a ["",{"text":"Red Twin: ","color":"gold"},{"text":"Wha-ha-ha! What a crazy guy! Can you believe this guy was crazy enough to try to sneak into the castle to see "},{"text":"Princess Zelda","color":"red"},{"text":"? All because of this idiot, they've tightened security at the castle. Wha-ha-hah!"}]
execute as @s[tag=RedTwin,scores={text=1}] at @s if entity @a[distance=..1] run tag @s add stoptext
execute as @s[tag=RedTwin,scores={text=1}] at @s if entity @a[distance=..1] run scoreboard players set @s text 2
#2
execute as @s[tag=RedTwin,scores={text=2}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Red Twin: ","color":"gold"},{"text":"All because of this idiot, they've tightened security at the castle. Wha-ha-hah!"}]
execute as @s[tag=RedTwin,scores={text=2}] at @s if entity @a[distance=..1] run tag @s add stoptext
#3
execute as @s[tag=RedTwin,scores={text=3}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Red Twin: ","color":"gold"},{"text":"Look at this guy-he's so scared! What a wimp! Ha ha hah!"}]
execute as @s[tag=RedTwin,scores={text=3}] at @s if entity @a[distance=..1] run tag @s add stoptext

#Blue Twin
#1
execute as @s[tag=BlueTwin,scores={text=1}] at @s if entity @a[distance=..1] run tellraw @a ["",{"text":"Blue Twin: ","color":"gold"},{"text":"I wanted to see "},{"text":"Princess Zelda","color":"red"},{"text":"! I avoided the guards... Swam through the moat... I was almost there when they caught me! I found a "},{"text":"small hole","color":"red"},{"text":" in the side of the castle that I thought I could sneak into, but I got stuck there."}]
execute as @s[tag=BlueTwin,scores={text=1}] at @s if entity @a[distance=..1] run tag @s add stoptext
execute as @s[tag=BlueTwin,scores={text=1}] at @s if entity @a[distance=..1] run scoreboard players set @s text 2
#2
execute as @s[tag=BlueTwin,scores={text=2}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Blue Twin: ","color":"gold"},{"text":"I found a "},{"text":"small hole","color":"red"},{"text":" in the side of the castle that I thought I could sneak into, but I got stuck there."}]
execute as @s[tag=BlueTwin,scores={text=2}] at @s if entity @a[distance=..1] run tag @s add stoptext
#3
execute as @s[tag=BlueTwin,scores={text=3}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Blue Twin: ","color":"gold"},{"text":"I almost got kicked by that black horse!"}]
execute as @s[tag=BlueTwin,scores={text=3}] at @s if entity @a[distance=..1] run tag @s add stoptext

#Wondering Girl
#1
execute as @s[tag=WonderingGirl,scores={text=1}] at @s if entity @a[distance=..1] run tellraw @a ["",{"text":"Lady: ","color":"gold"},{"text":"Do you know about the "},{"text":"Temple of Time","color":"aqua"},{"text":" that we have in the northeast part of town? Legends say that the Temple of Time is the entrance to the Sacred Realm... Did you know that?"}]
execute as @s[tag=WonderingGirl,scores={text=1}] at @s if entity @a[distance=..1] run tag @s add stoptext
execute as @s[tag=WonderingGirl,scores={text=1}] at @s if entity @a[distance=..1] run scoreboard players set @s text 2
#2
execute as @s[tag=WonderingGirl,scores={text=2}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Lady: ","color":"gold"},{"text":"Legends say that the Temple of Time is the entrance to the Sacred Realm... Did you know that?"}]
execute as @s[tag=WonderingGirl,scores={text=2}] at @s if entity @a[distance=..1] run tag @s add stoptext
#3
execute as @s[tag=WonderingGirl,scores={text=3}] at @s if entity @a[distance=..1] run tellraw @a ["",{"text":"Lady: ","color":"gold"},{"text":"What happened?!"}]
execute as @s[tag=WonderingGirl,scores={text=3}] at @s if entity @a[distance=..1] run tag @s add stoptext
execute as @s[tag=WonderingGirl,scores={text=3}] at @s if entity @a[distance=..1] run scoreboard players set @s text 2

#Shikashi
#1
execute as @s[tag=Shikashi,scores={text=1}] at @s if entity @a[distance=..1] run tellraw @a ["",{"text":"Shikashi: ","color":"gold"},{"text":"Have you heard the legend of the Shadow Folk? They are the "},{"text":"Sheikah","color":"blue"},{"text":"...the shadows of the Hylians. They say they swore allegiance to the king of Hyrule and guarded the Royal Family. But with the long peace, no one has seen a Sheikah around here for a long time. However... I heard there is one "},{"text":"Sheikah ","color":"blue"},{"text":"woman living in the castle..."}]
execute as @s[tag=Shikashi,scores={text=1}] at @s if entity @a[distance=..1] run tag @s add stoptext
execute as @s[tag=Shikashi,scores={text=1}] at @s if entity @a[distance=..1] run scoreboard players set @s text 2
#2
execute as @s[tag=Shikashi,scores={text=2}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Shikashi: ","color":"gold"},{"text":"I heard there is one "},{"text":"Sheikah ","color":"blue"},{"text":"woman living in the castle..."}]
execute as @s[tag=Shikashi,scores={text=2}] at @s if entity @a[distance=..1] run tag @s add stoptext
#3
execute as @s[tag=Shikashi,scores={text=3}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Shikashi: ","color":"gold"},{"text":"The one riding on the white horse holding the little girl... Wasn't that a legendary Sheikah?"}]
execute as @s[tag=Shikashi,scores={text=3}] at @s if entity @a[distance=..1] run tag @s add stoptext

#Old Lady
#1
execute as @s[tag=OldLady,scores={text=1}] at @s if entity @a[distance=..1] run tellraw @a ["",{"text":"Old Lady:","color":"gold"},{"text":" I made a lot of money! Maybe I should go look for more things to sell! I know! I should go to "},{"text":"Lake Hylia","color":"blue"},{"text":"! Many things float down the river and end up there! Hah hah!"}]
execute as @s[tag=OldLady,scores={text=1}] at @s if entity @a[distance=..1] run tag @s add stoptext
execute as @s[tag=OldLady,scores={text=1}] at @s if entity @a[distance=..1] run scoreboard players set @s text 2
#2
execute as @s[tag=OldLady,scores={text=2}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Old Lady: ","color":"gold"},{"text":"I know! I should go to "},{"text":"Lake Hylia","color":"blue"},{"text":"! Many things float down the river and end up there! Hah hah!"}]
execute as @s[tag=OldLady,scores={text=2}] at @s if entity @a[distance=..1] run tag @s add stoptext
#3
execute as @s[tag=OldLady,scores={text=3}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Old Lady: ","color":"gold"},{"text":"I have a feeling something terrible is going to happen... Maybe I should leave town soon."}]
execute as @s[tag=OldLady,scores={text=3}] at @s if entity @a[distance=..1] run tag @s add stoptext

#Itchy Girl
#1
execute as @s[tag=ItchyGirl,scores={text=1}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Lady:","color":"gold"},{"text":" I'm not dancing, you know... My back itches! Ooh! Aaah! Ooh!"}]
execute as @s[tag=ItchyGirl,scores={text=1}] at @s if entity @a[distance=..1] run tag @s add stoptext
#2
execute as @s[tag=ItchyGirl,scores={text=2}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Lady:","color":"gold"},{"text":" I might have seen a cute little girl around here... Maybe she went to the castle? Who knows?"}]
execute as @s[tag=ItchyGirl,scores={text=2}] at @s if entity @a[distance=..1] run tag @s add stoptext

#Buff Guy
#1
execute as @s[tag=BuffGuy,scores={text=1}] at @s if entity @a[distance=..1] run tellraw @a ["",{"text":"Guy:","color":"gold"},{"text":" Hey, forest boy! This is "},{"text":"Hyrule Castle Town","color":"aqua"},{"text":"! Take your time and enjoy the sights! If you came here to see "},{"text":"Hyrule Castle","color":"aqua"},{"text":", follow the central street. If you want to see the "},{"text":"back alleys","color":"blue"},{"text":" of the town, take the street to the left."}]
execute as @s[tag=BuffGuy,scores={text=1}] at @s if entity @a[distance=..1] run tag @s add stoptext
execute as @s[tag=BuffGuy,scores={text=1}] at @s if entity @a[distance=..1] run scoreboard players set @s text 2
#2
execute as @s[tag=BuffGuy,scores={text=2}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Guy:","color":"gold"},{"text":" If you came here to see "},{"text":"Hyrule Castle","color":"aqua"},{"text":", follow the central street. If you want to see the "},{"text":"back alleys","color":"blue"},{"text":" of the town, take the street to the left."}]
execute as @s[tag=BuffGuy,scores={text=2}] at @s if entity @a[distance=..1] run tag @s add stoptext
#3
execute as @s[tag=BuffGuy,scores={text=3}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Guy: ","color":"gold"},{"text":"Something happened in the castle! Kid, you'd better be careful!"}]
execute as @s[tag=BuffGuy,scores={text=3}] at @s if entity @a[distance=..1] run tag @s add stoptext

#Crowd
scoreboard players add @s[tag=Generic4,scores={text=1..40}] text 1
scoreboard players set @s[tag=Generic4,scores={text=41..}] text 1
#1
execute as @s[tag=Generic4,scores={text=1..8}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Crowd: ","color":"gold"},{"text":"Hey, have you heard that Princess Zelda sees prophetic visions in her dreams?"}]
execute as @s[tag=Generic4,scores={text=1..8}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=Generic4,scores={text=9..16}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Crowd: ","color":"gold"},{"text":"Huh? What? Shoo, kid! Shoo!"}]
execute as @s[tag=Generic4,scores={text=9..16}] at @s if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=Generic4,scores={text=17..24}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Crowd: ","color":"gold"},{"text":"Hey, let go! It's mine! I found it first!"}]
execute as @s[tag=Generic4,scores={text=17..24}] at @s if entity @a[distance=..2] run tag @s add stoptext
#4
execute as @s[tag=Generic4,scores={text=25..32}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Crowd: ","color":"gold"},{"text":"C'mon, can't you make it any cheaper?"}]
execute as @s[tag=Generic4,scores={text=25..32}] at @s if entity @a[distance=..2] run tag @s add stoptext
#5
execute as @s[tag=Generic4,scores={text=33..40}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Crowd: ","color":"gold"},{"text":"Hey, who bumped me?!"}]
execute as @s[tag=Generic4,scores={text=33..40}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Beard Guy
#1
execute as @s[tag=BeardGuy,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Guy: ","color":"gold"},{"text":"Ahem! Hrrrm! This beard is my pride and joy! Doesn't it look luxuriant, kid?!"}]
execute as @s[tag=BeardGuy,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute as @s[tag=BeardGuy,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Guy: ","color":"gold"},{"text":"Ahem! Hrrrm! This beard is my pride and joy! Doesn't it look luxuriant, kid?! What?! You're looking for the guy from Lon Lon Ranch? Hmm...maybe... I saw a "},{"text":"guy with a shabby-looking beard ","color":"red"},{"text":"delivering some boxes to the castle."}]
execute as @s[tag=BeardGuy,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#3
execute as @s[tag=BeardGuy,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Guy: ","color":"gold"},{"text":"That guy riding on the black horse must have been Ganondorf, who is renowned as the Gerudo King of Thieves."}]
execute as @s[tag=BeardGuy,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Castle Town Lady
#1
execute as @s[tag=CastleTownLady,scores={text=1}] at @s if entity @a[distance=..1] run tellraw @a ["",{"text":"Lady: ","color":"gold"},{"text":"Kid, have you been to "},{"text":"Lon Lon Ranch","color":"yellow"},{"text":"? Their milk is delicious! There are many horses there, and the young daughter of the ranch owner is cute! To get to "},{"text":"Lon Lon Ranch","color":"yellow"},{"text":", after you leave town, head due south across the field. You should visit the ranch at least once!"}]
execute as @s[tag=CastleTownLady,scores={text=1}] at @s if entity @a[distance=..1] run tag @s add stoptext
execute as @s[tag=CastleTownLady,scores={text=1}] at @s if entity @a[distance=..1] run scoreboard players set @s text 2
#2
execute as @s[tag=CastleTownLady,scores={text=2}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Lady: ","color":"gold"},{"text":"To get to "},{"text":"Lon Lon Ranch","color":"yellow"},{"text":", after you leave town, head due south across the field. You should visit the ranch at least once!"}]
execute as @s[tag=CastleTownLady,scores={text=2}] at @s if entity @a[distance=..1] run tag @s add stoptext
#3
execute as @s[tag=CastleTownLady,scores={text=3}] at @s if entity @a[distance=..1] run tellraw @a ["",{"text":"Lady: ","color":"gold"},{"text":"Wasn't that Princess Zelda riding on the white horse?!"}]
execute as @s[tag=CastleTownLady,scores={text=3}] at @s if entity @a[distance=..1] run tag @s add stoptext
execute as @s[tag=CastleTownLady,scores={text=3}] at @s if entity @a[distance=..1] run scoreboard players set @s text 2

#Honey and Darling
#1
execute as @s[tag=Honey,scores={text=1}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Honey:","color":"gold"},{"text":" Ohh... You are...so handsome... Just like the king of Hyrule... Hee hee..."}]
execute as @s[tag=Honey,scores={text=1}] at @s if entity @a[distance=..1] run tag @s add stoptext
#1
execute as @s[tag=Darling,scores={text=1}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Darling:","color":"gold"},{"text":" Ohh... You are...more beautiful...than Princess Zelda... Ohh..."}]
execute as @s[tag=Darling,scores={text=1}] at @s if entity @a[distance=..1] run tag @s add stoptext

#MamamuYan
#1
execute as @s[tag=MamamuYan,scores={text=1}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Mamamu Yan:","color":"gold"},{"text":" My precious puppy can run faster than any other mutts around here!"}]
execute as @s[tag=MamamuYan,scores={text=1}] at @s if entity @a[distance=..1] run tag @s add stoptext
#2
execute as @s[tag=MamamuYan,scores={text=2}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Mamamu Yan:","color":"gold"},{"text":" I can't find my puppy anywhere! I need you to look for it! Please!"}]
execute as @s[tag=MamamuYan,scores={text=2}] at @s if entity @a[distance=..1] run tag @s add stoptext
#3
execute as @s[tag=MamamuYan,scores={text=3}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Mamamu Yan:","color":"gold"},{"text":" Arrrgh! That is not my dog! How could you mix up my puppy with a mutt like that?!"}]
execute as @s[tag=MamamuYan,scores={text=3}] at @s if entity @a[distance=..1] run tag @s add stoptext
#4
execute as @s[tag=MamamuYan,scores={text=4}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Mamamu Yan:","color":"gold"},{"text":" Richard! This is my little Richard! Thank you! Thank you! I'll give this to you as a reward!"}]
execute as @s[tag=MamamuYan,scores={text=4}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tp @e[type=wolf,tag=Richard] 845 62 1433
execute as @s[tag=MamamuYan,scores={text=4}] at @s if entity @a[distance=..1] unless entity @s[tag=Prize1] run tellraw @a ["",{"text":"You got a "},{"text":"Piece of Heart","color":"red"},{"text":"!"}]
execute as @s[tag=MamamuYan,scores={text=4}] at @s if entity @a[distance=..1] unless entity @s[tag=Prize1] run give @a minecraft:golden_carrot{display:{Name:"{\"text\":\"Heart Piece\"}"},InventoryItem:1b,HeartPiece:1b} 1
execute as @s[tag=MamamuYan,scores={text=4}] at @s if entity @a[distance=..1] if entity @s[tag=Prize1] run give @p minecraft:lapis_lazuli{display:{Name:"{\"text\":\"Blue Rupee\"}"},Item:1b}
execute as @s[tag=MamamuYan,scores={text=4}] at @s if entity @a[distance=..1] run tag @s add Prize
execute as @s[tag=MamamuYan,scores={text=4}] at @s if entity @a[distance=..1] run tag @s add Prize1
execute as @s[tag=MamamuYan,scores={text=4}] at @s if entity @a[distance=..1] run tag @e[type=wolf,tag=PickupDog,distance=..4] remove PickupDog
execute as @s[tag=MamamuYan,scores={text=4}] at @s if entity @a[distance=..1] run tag @s add stoptext
execute as @s[tag=MamamuYan,scores={text=4}] at @s if entity @a[distance=..1] run scoreboard players set @s text 5
#5
execute as @s[tag=MamamuYan,scores={text=5}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Mamamu Yan:","color":"gold"},{"text":" At night it's dangerous to go out, with all the wild dogs around... No, I wasn't warning you! I'm worried about my puppy!"}]
execute as @s[tag=MamamuYan,scores={text=5}] at @s if entity @a[distance=..1] run tag @s add stoptext

#Old Man 1
#1
execute as @s[tag=OldMan1,scores={text=1}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Old Man: ","color":"gold"},{"text":"There's a rumor going around that there is a potion shop that can make the ultimate medicine!"}]
execute as @s[tag=OldMan1,scores={text=1}] at @s if entity @a[distance=..1] run tag @s add stoptext

#Old Man 2
#1
execute as @s[tag=OldMan2,scores={text=1}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Old Man: ","color":"gold"},{"text":"Hey, sonny, I'll tell you something helpful... I heard there is a "},{"text":"mysterious fountain","color":"red"},{"text":" somewhere near the castle..."}]
execute as @s[tag=OldMan2,scores={text=1}] at @s if entity @a[distance=..1] run tag @s add stoptext

#Buff Guy 2
#1
execute as @s[tag=BuffGuy2,scores={text=1}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Guy: ","color":"gold"},{"text":"Heyyy, what...? What's wrong with loitering around all day? Huh, kid?"}]
execute as @s[tag=BuffGuy2,scores={text=1}] at @s if entity @a[distance=..1] run tag @s add stoptext

#Dog Guy
execute as @s[tag=DogGuy,scores={text=1}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Guy:","color":"gold"},{"text":" It seems strange that packs of dogs roam our streets at night... Doesn't that seem weird to you?"}]
execute as @s[tag=DogGuy,scores={text=1}] at @s if entity @a[distance=..1] run tag @s add stoptext

#Dead Guard
#1
execute as @s[tag=DeadGuard,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a {"text":"He's not moving anymore..."}
execute as @s[tag=DeadGuard,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Platform Guy
#1
execute as @s[tag=PlatformGuy,scores={text=1}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Guy: ","color":"gold"},{"text":"They say we "},{"text":"Hylians ","color":"aqua"},{"text":"have big ears in order to hear the voices of the gods...but I've never heard them!"}]
execute as @s[tag=PlatformGuy,scores={text=1}] at @s if entity @a[distance=..1] run tag @s add stoptext

#Malon
#1
execute as @s[tag=Malon1,scores={text=1}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Malon:","color":"gold"},{"text":" Dad went to the castle to deliver some milk, and he hasn't come back yet..."}]
execute as @s[tag=Malon1,scores={text=1}] at @s if entity @a[distance=..1] run tag @s add stoptext

#Girl Chasing Cucco
#1
execute as @s[tag=GirlChasingCucco,scores={text=1}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Girl: ","color":"gold"},{"text":"I can't catch that Cucco!"}]
execute as @s[tag=GirlChasingCucco,scores={text=1}] at @s if entity @a[distance=..1] run tag @s add stoptext
#2
execute as @s[tag=GirlChasingCucco,scores={text=2}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Girl: ","color":"gold"},{"text":"That scary-looking man took off out of here really fast!"}]
execute as @s[tag=GirlChasingCucco,scores={text=2}] at @s if entity @a[distance=..1] run tag @s add stoptext
execute as @s[tag=GirlChasingCucco,scores={text=2}] at @s if entity @a[distance=..1] run tag @s add Reset
execute as @s[tag=GirlChasingCucco,scores={text=2}] at @s if entity @a[distance=..1] run scoreboard players set @s text 1

#Sakon
#1
execute as @s[tag=Sakon,scores={text=1}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Sakon: ","color":"gold"},{"text":"Huff huff! I'm late! I'm late! For a very important date!"}]
execute as @s[tag=Sakon,scores={text=1}] at @s if entity @a[distance=..1] run tag @s add stoptext
#2
execute as @s[tag=Sakon,scores={text=2}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Sakon: ","color":"gold"},{"text":"Oh so scary... Oh so scary..."}]
execute as @s[tag=Sakon,scores={text=2}] at @s if entity @a[distance=..1] run tag @s add stoptext
execute as @s[tag=Sakon,scores={text=2}] at @s if entity @a[distance=..1] run tag @s add Reset
execute as @s[tag=Sakon,scores={text=2}] at @s if entity @a[distance=..1] run scoreboard players set @s text 1

#Mask Guy
#1
execute as @s[tag=MaskGuy,scores={text=1}] at @s if entity @a[distance=..1] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Guy: ","color":"gold"},{"text":"What a strange shop! I wonder when it'll be open for business. I read the sign there, but it still seems weird!"}]
execute as @s[tag=MaskGuy,scores={text=1}] at @s if entity @a[distance=..1] run tag @s add stoptext

#Mask Salesman
#1
execute as @s[tag=MaskSalesman,scores={text=1}] at @s if entity @a[distance=..3] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Mask Salesman: ","color":"gold"},{"text":"Hiyeee! Welcome to the "},{"text":"Happy Mask Shop","color":"red"},{"text":"! We deal in masks that bring happiness to everyone! How would you like to be a happiness salesman? I'll lend you a mask. You sell the mask and bring the "},{"text":"money ","color":"red"},{"text":"back here. If you want to read the fine print, take a look at the "},{"text":"sign ","color":"red"},{"text":"right over there. After you've sold all the masks, you will become happy yourself! Have faith..."}]
execute as @s[tag=MaskSalesman,scores={text=1}] at @s if entity @a[distance=..3] unless entity @s[tag=stoptext] run tag @s add Mask1
execute as @s[tag=MaskSalesman,scores={text=1}] at @s if entity @a[distance=..3] unless entity @s[tag=stoptext] run give @a player_head{Mask:1b,display:{Name:"\"No Mask\""},SkullOwner:{Id:[I;-416605196,811749369,-2012475764,588086662],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjBkOTY0NmM0MWVkOTU2MGY2ODI3ZmM0NDI2NTU4ZjU2MmQ0YWU3ZGFkYWMwZDc0NDlmNWNjNDk0ZTIxYjllZiJ9fX0="}]}}}
execute as @s[tag=MaskSalesman,scores={text=1}] at @s if entity @a[distance=..3] run scoreboard players set @s text 0

#Shooting Gallery
#1
execute as @s[tag=ShootingGallery,scores={text=1}] at @s if entity @a[distance=..3] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Owner: ","color":"gold"},{"text":"All right. You don't have to if you don't want to."}]
execute as @s[tag=ShootingGallery,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext

#Beggar
#1
execute as @s[tag=Beggar,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Beggar: ","color":"gold"},{"text":"Please... Please sell me the "},{"text":"contents of a bottle","color":"red"},{"text":"... Please..."}]
execute as @s[tag=Beggar,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Item Shop Guy
#1
execute as @s[tag=BuffGuy3,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Guy: ","color":"gold"},{"text":"I heard a rumor that there is a monster that eats "},{"text":"Hylian Shields","color":"aqua"},{"text":" somewhere out there in the world. Have you ever seen it?"}]
execute as @s[tag=BuffGuy3,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Goron
#1
execute as @s[tag=Goron7,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"I came here to sell bombs... Please buy some!"}]
execute as @s[tag=Goron7,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Bowling Owner
#1
execute as @s[tag=BowlingOwner,scores={text=1}] at @s if entity @a[distance=..3] run tellraw @a ["",{"text":"Owner: ","color":"gold"},{"text":"Zzzzz...zzzzz... Oh, I'm sorry. We're not open for business yet. Please come back soon!"}]
execute as @s[tag=BowlingOwner,scores={text=1}] at @s if entity @a[distance=..3] run data merge entity @s {ArmorItems:[{},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:15912849}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:14052080}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1823248539,969362498,-1501815747,874035989],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNThjOTQxZWZmNmRjOTAzNzNkZWRhZGRlMGZiZmVlNmI1ZTM1ZDBkYzM2OGU1OGVkNmM5MjQ1ZTUyYmFlZjU3OCJ9fX0="}]}}}}]}
execute as @s[tag=BowlingOwner,scores={text=1}] at @s if entity @a[distance=..3] run tag @s add stoptext
execute as @s[tag=BowlingOwner,scores={text=1}] at @s if entity @a[distance=..3] run scoreboard players set @s text 2
#2
execute as @s[tag=BowlingOwner,scores={text=2}] at @s if entity @a[distance=..3] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Owner: ","color":"gold"},{"text":"Oh, I'm sorry. We're not open for business yet. Please come back soon!"}]
execute as @s[tag=BowlingOwner,scores={text=2}] at @s if entity @a[distance=..3] run tag @s add stoptext
#3
execute as @s[tag=BowlingOwner,scores={text=3}] at @s if entity @a[distance=..3] run tellraw @a ["",{"text":"Owner: ","color":"gold"},{"text":"Zzzzz...zzzzz... Huh? Wha-! Uh-oh! A customer! Welcome to our cutting-edge amusement center: "},{"text":"The Bombchu Bowling Alley!","color":"red"},{"text":" Do you want to know what you can win? Well, it's a secret. I can't tell you until you've paid to play. It's "},{"text":"30 Rupees ","color":"red"},{"text":"per game. Do you want to play?"}]
execute as @s[tag=BowlingOwner,scores={text=3}] at @s if entity @a[distance=..3] run data merge entity @s {ArmorItems:[{},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:15912849}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:14052080}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1823248539,969362498,-1501815747,874035989],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNThjOTQxZWZmNmRjOTAzNzNkZWRhZGRlMGZiZmVlNmI1ZTM1ZDBkYzM2OGU1OGVkNmM5MjQ1ZTUyYmFlZjU3OCJ9fX0="}]}}}}]}
execute as @s[tag=BowlingOwner,scores={text=3}] at @s if entity @a[distance=..3] run tag @s add stoptext
execute as @s[tag=BowlingOwner,scores={text=3}] at @s if entity @a[distance=..3] run scoreboard players set @s text 4
#4
execute as @s[tag=BowlingOwner,scores={text=4}] at @s if entity @a[distance=..3] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Owner: ","color":"gold"},{"text":"Welcome to our cutting-edge amusement center: "},{"text":"The Bombchu Bowling Alley!","color":"red"},{"text":" Do you want to know what you can win? Well, it's a secret. I can't tell you until you've paid to play. It's "},{"text":"30 Rupees ","color":"red"},{"text":"per game. Do you want to play?"}]
execute as @s[tag=BowlingOwner,scores={text=4}] at @s if entity @a[distance=..3] run tag @s add stoptext

#Gossip Stone 1
execute as @s[tag=GossipStone8,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Responding to your mask, this strange stone statue talks to you...\n"},{"text":"Gossip Stone: ","color":"gold"},{"text":"I overheard this... They say that Malon set the original record in the obstacle course at Lon Lon Ranch."}]
execute as @s[tag=GossipStone8,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#Gossip Stone 2
execute as @s[tag=GossipStone9,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Responding to your mask, this strange stone statue talks to you...\n"},{"text":"Gossip Stone: ","color":"gold"},{"text":"I overheard this... They say that Malon of Lon Lon Ranch hopes a knight in shining armor will come and sweep her off her feet someday."}]
execute as @s[tag=GossipStone9,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#Gossip Stone 3
execute as @s[tag=GossipStone10,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Responding to your mask, this strange stone statue talks to you...\n"},{"text":"Gossip Stone: ","color":"gold"},{"text":"I overheard this... They say that it is against the rules to use glasses at the Treasure Chest Shop in Hyrule Castle Town Market."}]
execute as @s[tag=GossipStone10,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
#Gossip Stone 4
execute as @s[tag=GossipStone11,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"Responding to your mask, this strange stone statue talks to you...\n"},{"text":"Gossip Stone: ","color":"gold"},{"text":"I overheard this... They say that Gerudo sometimes come to Hyrule Castle Town to look for boyfriends."}]
execute as @s[tag=GossipStone11,tag=Speak,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext

#Gopher
#1
execute unless block 927 5 -635 minecraft:mossy_cobblestone as @s[tag=SecretGopher,scores={text=1}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"AlaskanGopher: ","color":"gold"},{"text":"The hidden alcove is somewhere in the "},{"text":"Lost Woods","color":"green"},{"text":" and you must have a secret "},{"text":"on you","color":"red"},{"text":" to enter.\n"},{"text":"Kokiri Forest","color":"green"},{"text":"\n"},{"text":"Two in Castle Town","color":"aqua"},{"text":"\nThe field outside of "},{"text":"Hyrule Castle","color":"light_purple"},{"text":"\n"},{"text":"Hyrule Castle","color":"light_purple"},{"text":"\n"},{"text":"Kakariko Village","color":"red"},{"text":"\n"},{"text":"Goron City","color":"gold"},{"text":"\n"},{"text":"Zora's Domain","color":"blue"},{"text":"\n"},{"text":"Fishing Pond","color":"aqua"},{"text":"\n"},{"text":"Destroyed Castle Town","color":"red"},{"text":"\n"},{"text":"Zora's Domain ","color":"blue"},{"text":"(Adult)\n"},{"text":"Zora's Fountain ","color":"aqua"},{"text":"(Adult)\n"},{"text":"Inside Gerudo Fortress","color":"yellow"},{"text":"\n"},{"text":"Haunted Wasteland","color":"gold"},{"text":"\n"},{"text":"Desert Colossus","color":"yellow"},{"text":"\n"},{"text":"Outside Ganon's Castle","color":"red"},{"text":". Good Luck!"}]
execute unless block 927 5 -635 minecraft:mossy_cobblestone as @s[tag=SecretGopher,scores={text=1}] at @s if entity @a[distance=..2] run tag @s add stoptext
#2
execute unless block 927 5 -635 minecraft:mossy_cobblestone as @s[tag=SecretGopher,scores={text=2}] at @s if entity @a[distance=..2] unless entity @s[tag=stoptext] run tellraw @a ["",{"text":"AlaskanGopher: ","color":"gold"},{"text":"You...you got them all?! WOW! Nice job! I bet you sure feel powerful! Just don't do too crazy or you might destroy this world by accident!"}]
execute unless block 927 5 -635 minecraft:mossy_cobblestone as @s[tag=SecretGopher,scores={text=2}] at @s if entity @a[distance=..2] run tag @s add stoptext
