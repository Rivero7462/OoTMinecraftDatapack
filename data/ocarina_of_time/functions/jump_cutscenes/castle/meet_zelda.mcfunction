execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 824 90 410 824 90 410 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 825 90 411 825 90 411 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 825 90 409 825 90 409 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 826 90 410 826 90 410 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run tp @a 825 89.5 410
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run data merge entity @s {Rotation:[270f]}
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute unless entity @s[tag=Part2] if entity @a[scores={click=0}] run scoreboard players set @a click 3

execute unless entity @s[tag=Part2] if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"Who?!"}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute unless entity @s[tag=Part2] if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"Who are you?"}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute unless entity @s[tag=Part2] if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"How did you get past the guards?"}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute unless entity @s[tag=Part2] if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"Oh? What's that?"}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute unless entity @s[tag=Part2] if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" Is that..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute unless entity @s[tag=Part2] if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" a fairy","color":"aqua"},{"text":"?!"}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute unless entity @s[tag=Part2] if entity @a[scores={click=15}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" Then, are you... Are you from the forest?"}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=15}] run scoreboard players set @a click 16
execute unless entity @s[tag=Part2] if entity @a[scores={click=17}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" Then...then...you wouldn't happen to have...the "},{"text":"Spiritual Stone of the Forest","color":"green"},{"text":", would you?! That green and shining stone..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=17}] run scoreboard players set @a click 18
execute unless entity @s[tag=Part2] if entity @a[scores={click=19}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" Just as I thought!"}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=19}] run scoreboard players set @a click 20
execute unless entity @s[tag=Part2] if entity @a[scores={click=21}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" I had a dream...In the dream, dark storm clouds were billowing over the land of Hyrule..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=21}] run scoreboard players set @a click 22
execute unless entity @s[tag=Part2] if entity @a[scores={click=23}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" But suddenly, a ray of light shot out of the forest, parted the clouds and lit up the ground..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=23}] run scoreboard players set @a click 24
execute unless entity @s[tag=Part2] if entity @a[scores={click=25}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" The light turned into a figure holding a "},{"text":"green and shining stone","color":"green"},{"text":", followed by a "},{"text":"fairy","color":"aqua"},{"text":"..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=25}] run scoreboard players set @a click 26
execute unless entity @s[tag=Part2] if entity @a[scores={click=27}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" I knew this was a prophecy that someone would come from the "},{"text":"forest","color":"green"},{"text":"..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=27}] run scoreboard players set @a click 28
execute unless entity @s[tag=Part2] if entity @a[scores={click=29}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" Yes, I thought you might be the one..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=29}] run scoreboard players set @a click 30
execute unless entity @s[tag=Part2] if entity @a[scores={click=31}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" Oh, I'm sorry!"}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=31}] run scoreboard players set @a click 32
execute unless entity @s[tag=Part2] if entity @a[scores={click=33}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" I got carried away with my story and didn't even properly introduce myself!"}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=33}] run scoreboard players set @a click 34
execute unless entity @s[tag=Part2] if entity @a[scores={click=35}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" I am "},{"text":"Zelda","color":"aqua"},{"text":", Princess of Hyrule."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=35}] run scoreboard players set @a click 36
execute unless entity @s[tag=Part2] if entity @a[scores={click=37}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" What is your name?"}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=37}] run scoreboard players set @a click 38
execute unless entity @s[tag=Part2] if entity @a[scores={click=39}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" ..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=39}] run scoreboard players set @a click 40
execute unless entity @s[tag=Part2] if entity @a[scores={click=41}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" "},{"selector":"@p","color":"green"},{"text":"..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=41}] run scoreboard players set @a click 42
execute unless entity @s[tag=Part2] if entity @a[scores={click=43}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" Strange...it sounds somehow... familiar."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=43}] run scoreboard players set @a click 44
execute unless entity @s[tag=Part2] if entity @a[scores={click=45}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" OK then, "},{"selector":"@p"},{"text":"..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=45}] run scoreboard players set @a click 46
execute unless entity @s[tag=Part2] if entity @a[scores={click=47}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" I'm going to tell you the secret of the Sacred Realm that has been passed down by the Royal Family of Hyrule."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=47}] run scoreboard players set @a click 48
execute unless entity @s[tag=Part2] if entity @a[scores={click=49}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" Please keep this a secret from everyone..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=49}] run scoreboard players set @a click 50
execute unless entity @s[tag=Part2] if entity @a[scores={click=51}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" The legend goes like this..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=51}] run tp @a 827 61 398 -45 50
execute unless entity @s[tag=Part2] if entity @a[scores={click=51}] run function ocarina_of_time:music/chamber_of_sages
execute unless entity @s[tag=Part2] if entity @a[scores={click=51}] run scoreboard players set @a click 52
execute unless entity @s[tag=Part2] if entity @a[scores={click=53}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" The three goddesses hid the "},{"text":"Triforce ","color":"red"},{"text":"containing the power of the gods somewhere in Hyrule."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=53}] run scoreboard players set @a click 54
execute unless entity @s[tag=Part2] if entity @a[scores={click=55}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" The power to grant the wish of the one who holds the Triforce in his hands."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=55}] run scoreboard players set @a click 56
execute unless entity @s[tag=Part2] if entity @a[scores={click=57}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" If someone with a righteous heart makes a wish, it will lead Hyrule to a golden age of prosperity..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=57}] run fill 836 43 407 826 59 399 minecraft:air
execute unless entity @s[tag=Part2] if entity @a[scores={click=57}] run clone 835 67 401 829 71 407 829 56 401
execute unless entity @s[tag=Part2] if entity @a[scores={click=57}] run scoreboard players set @a click 58
execute unless entity @s[tag=Part2] if entity @a[scores={click=59}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" If someone with an evil mind has his wish granted, the world will be consumed by evil... That is what has been told..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=59}] run scoreboard players set @a click 60
execute unless entity @s[tag=Part2] if entity @a[scores={click=61}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" So, the ancient Sages built the "},{"text":"Temple of Time","color":"aqua"},{"text":" to protect the Triforce from evil ones."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=61}] run scoreboard players set @a click 62
execute unless entity @s[tag=Part2] if entity @a[scores={click=63}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" That's right... The Temple of Time is the entrance through which you can enter the Sacred Realm from our world."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=63}] run function ocarina_of_time:music/princess_zelda
execute unless entity @s[tag=Part2] if entity @a[scores={click=63}] run tp @a 825 89.5 410 90 ~
execute unless entity @s[tag=Part2] if entity @a[scores={click=63}] run scoreboard players set @a click 64
execute unless entity @s[tag=Part2] if entity @a[scores={click=65}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" But the entrance is sealed with a stone wall called the "},{"text":"Door of Time","color":"aqua"},{"text":"."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=65}] run scoreboard players set @a click 66
execute unless entity @s[tag=Part2] if entity @a[scores={click=67}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" And, in order to open the door, it is said that you need to collect three "},{"text":"Spiritual Stones","color":"red"},{"text":"."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=67}] run scoreboard players set @a click 68
execute unless entity @s[tag=Part2] if entity @a[scores={click=69}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" And another thing you need...is the treasure that the Royal Family keeps along with this legend..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=69}] run scoreboard players set @a click 70
execute unless entity @s[tag=Part2] if entity @a[scores={click=71}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" The "},{"text":"Ocarina of Time","color":"aqua"},{"text":"!"}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=71}] run scoreboard players set @a click 72
execute unless entity @s[tag=Part2] if entity @a[scores={click=73}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" I forgot to tell you..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=73}] run scoreboard players set @a click 74
execute unless entity @s[tag=Part2] if entity @a[scores={click=75}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" I was spying through this window just now..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=75}] run tag @s add move
execute unless entity @s[tag=Part2] if entity @a[scores={click=75}] run scoreboard players set @a click 76
execute unless entity @s[tag=Part2] if entity @a[scores={click=77}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" The other element from my dream... the dark clouds... I believe they symbolize... that man in there!"}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=77}] run tag @a add MoveToWindow
execute unless entity @s[tag=Part2] if entity @a[scores={click=77}] run scoreboard objectives remove click

execute if entity @s[tag=move] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=1..7}] run data merge entity @e[type=armor_stand,tag=Zelda,limit=1] {Rotation:[180f]}
execute if entity @s[scores={timer=1..7}] run data merge entity @s {Motion:[0.0,0.0,-0.2]}
execute if entity @s[scores={timer=8..}] run data merge entity @e[type=armor_stand,tag=Zelda,limit=1] {Rotation:[0f]}
execute if entity @s[scores={timer=8..}] run tag @s remove move
execute if entity @s[scores={timer=8..}] run scoreboard players set @s timer 0

execute unless entity @s[tag=GanondorfLooks] if entity @a[tag=MoveToWindow] run scoreboard players add @a GameTimer 1
execute unless entity @s[tag=GanondorfLooks] if entity @a[scores={GameTimer=1..2}] run tag @s add Part2
execute unless entity @s[tag=GanondorfLooks] if entity @a[scores={GameTimer=1..2}] run fill 826 90 409 824 90 411 minecraft:air
execute unless entity @s[tag=GanondorfLooks] if entity @a[scores={GameTimer=3..4}] run tp @a 823 89.5 410
execute unless entity @s[tag=GanondorfLooks] if entity @a[scores={GameTimer=5..6}] run fill 823 90 411 823 90 411 minecraft:barrier
execute unless entity @s[tag=GanondorfLooks] if entity @a[scores={GameTimer=5..6}] run fill 823 90 409 823 90 409 minecraft:barrier
execute unless entity @s[tag=GanondorfLooks] if entity @a[scores={GameTimer=5..6}] run fill 824 90 410 824 90 410 minecraft:barrier
execute unless entity @s[tag=GanondorfLooks] if entity @a[scores={GameTimer=5..47}] run data merge entity @e[type=armor_stand,tag=Ganondorf,limit=1] {Motion:[0.0,0.0,-0.2]}
execute unless entity @s[tag=GanondorfLooks] if entity @a[scores={GameTimer=52..55}] run data merge entity @e[type=armor_stand,tag=Ganondorf,limit=1] {Pose:{Head:[46f,0f,0f],LeftLeg:[302f,0f,0f],RightLeg:[294f,178f,0f]}}
execute unless entity @s[tag=GanondorfLooks] if entity @a[scores={GameTimer=52..55}] run tag @s add GanonKneels
execute unless entity @s[tag=GanondorfLooks] if entity @a[scores={GameTimer=56..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @s[tag=GanondorfLooks] if entity @a[scores={GameTimer=56..}] run tag @a remove MoveToWindow
execute unless entity @s[tag=GanondorfLooks] if entity @a[scores={GameTimer=56..}] run scoreboard players set @a GameTimer 0

execute if entity @s[tag=Part2] if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" Can you see the man with the evil eyes?"}]
execute if entity @s[tag=Part2] if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @s[tag=Part2] if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" That is "},{"text":"Ganondorf","color":"red"},{"text":", the leader of the Gerudos. They hail from the desert far to the west."}]
execute if entity @s[tag=Part2] if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @s[tag=Part2] if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" Though he swears allegiance to my father, I am sure he is not sincere."}]
execute if entity @s[tag=Part2] if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @s[tag=Part2] if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" The dark clouds that covered Hyrule in my dream... They must symbolize that man!"}]
execute if entity @s[tag=Part2] if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @s[tag=Part2] if entity @a[scores={click=9}] run data merge entity @e[type=armor_stand,tag=Ganondorf,limit=1] {Pose:{Head:[0f,89f,0f]}}
execute if entity @s[tag=Part2] if entity @a[scores={click=9}] run tag @s add GanondorfLooks
execute if entity @s[tag=Part2,tag=GanondorfLooks] run scoreboard players add @a GameTimer 1

execute if entity @s[tag=GanondorfLooks] if entity @a[scores={GameTimer=15}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" What happened? Did he see you?"}]
execute if entity @s[tag=GanondorfLooks] if entity @a[scores={GameTimer=15..18}] at @a run tp @a ~ ~ ~ 180 ~
execute if entity @s[tag=GanondorfLooks] if entity @a[scores={GameTimer=17..18}] run tag @s add GanondorfGone
execute if entity @s[tag=GanondorfLooks] if entity @a[scores={GameTimer=18}] run tag @s remove GanondorfLooks

execute if entity @s[tag=Part2] if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @s[tag=Part2] if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" Don't worry."}]
execute if entity @s[tag=Part2] if entity @a[scores={click=11}] run scoreboard players set @a GameTimer 0
execute if entity @s[tag=Part2] if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @s[tag=Part2] if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" He doesn't have any idea what we're planning...yet!"}]
execute if entity @s[tag=Part2] if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @s[tag=Part2] if entity @a[scores={click=15}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" ...Yes."}]
execute if entity @s[tag=Part2] if entity @a[scores={click=15}] run scoreboard players set @a click 16
execute if entity @s[tag=Part2] if entity @a[scores={click=17}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" I told my father about my dream..."}]
execute if entity @s[tag=Part2] if entity @a[scores={click=17}] run scoreboard players set @a click 18
execute if entity @s[tag=Part2] if entity @a[scores={click=19}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" However, he didn't believe it was a prophecy..."}]
execute if entity @s[tag=Part2] if entity @a[scores={click=19}] run scoreboard players set @a click 20
execute if entity @s[tag=Part2] if entity @a[scores={click=21}] run tellraw @a ["",{"text":"Zelda:","color":"gold"},{"text":" But... I can sense that man's evil intentions!"}]
execute if entity @s[tag=Part2] if entity @a[scores={click=21}] run scoreboard players set @a click 22
execute if entity @s[tag=Part2] if entity @a[scores={click=23}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"What Ganondorf is after must be nothing less than the "},{"text":"Triforce ","color":"red"},{"text":"of the Sacred Realm."}]
execute if entity @s[tag=Part2] if entity @a[scores={click=23}] run scoreboard players set @a click 24
execute if entity @s[tag=Part2] if entity @a[scores={click=25}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"He must have come to Hyrule to obtain it!"}]
execute if entity @s[tag=Part2] if entity @a[scores={click=25}] run scoreboard players set @a click 26
execute if entity @s[tag=Part2] if entity @a[scores={click=27}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"And, he wants to conquer Hyrule... no, the entire world!"}]
execute if entity @s[tag=Part2] if entity @a[scores={click=27}] run scoreboard players set @a click 28
execute if entity @s[tag=Part2] if entity @a[scores={click=29}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"selector":"@p"},{"text":"... Now we are the only ones who can protect Hyrule!"}]
execute if entity @s[tag=Part2] if entity @a[scores={click=29}] run scoreboard players set @a click 30
execute if entity @s[tag=Part2] if entity @a[scores={click=31}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"I...I am afraid... I have a feeling that man is going to destroy Hyrule."}]
execute if entity @s[tag=Part2] if entity @a[scores={click=31}] run scoreboard players set @a click 32
execute if entity @s[tag=Part2] if entity @a[scores={click=33}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"He has such terrifying power!"}]
execute if entity @s[tag=Part2] if entity @a[scores={click=33}] run scoreboard players set @a click 34
execute if entity @s[tag=Part2] if entity @a[scores={click=35}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"But it's fortunate that you have come..."}]
execute if entity @s[tag=Part2] if entity @a[scores={click=35}] run scoreboard players set @a click 36
execute if entity @s[tag=Part2] if entity @a[scores={click=37}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"We must not let Ganondorf get the Triforce!"}]
execute if entity @s[tag=Part2] if entity @a[scores={click=37}] run scoreboard players set @a click 38
execute if entity @s[tag=Part2] if entity @a[scores={click=39}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"I will protect the "},{"text":"Ocarina of Time","color":"aqua"},{"text":" with all my power! He shall not have it!"}]
execute if entity @s[tag=Part2] if entity @a[scores={click=39}] run scoreboard players set @a click 40
execute if entity @s[tag=Part2] if entity @a[scores={click=41}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"You go find the other "},{"text":"two Spiritual Stones","color":"red"},{"text":"!"}]
execute if entity @s[tag=Part2] if entity @a[scores={click=41}] run scoreboard players set @a click 42
execute if entity @s[tag=Part2] if entity @a[scores={click=43}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"Let's get the Triforce before Ganondorf does...and then defeat him!"}]
execute if entity @s[tag=Part2] if entity @a[scores={click=43}] run scoreboard players set @a click 44
execute if entity @s[tag=Part2] if entity @a[scores={click=45}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"One more thing... Take this "},{"text":"letter","color":"red"},{"text":"... I'm sure it will be helpful to you."}]
execute if entity @s[tag=Part2] if entity @a[scores={click=45}] run give @a written_book{pages:["{\"text\":\"This is Link. He is under my orders to save Hyrule\"}"],title:"Zelda's Letter",author:Rivero7462}
execute if entity @s[tag=Part2] if entity @a[scores={click=45}] at @s run tp @s ~ ~ ~ 270 ~
execute if entity @s[tag=Part2] if entity @a[scores={click=45}] run scoreboard players set @a click 46
execute if entity @s[tag=Part2] if entity @a[scores={click=47}] run tellraw @a ["",{"text":"You received ","color":"white"},{"text":"Zelda's Letter","color":"red"},{"text":"! Wow! This letter has Princess Zelda's autograph!"}]
execute if entity @s[tag=Part2] if entity @a[scores={click=47}] run scoreboard players set @a click 48

execute if entity @s[tag=Part2] if entity @a[scores={click=48..}] run spawnpoint @a 878 83 417
execute if entity @s[tag=Part2] if entity @a[scores={click=48..}] run tag @a remove NoOcarina
execute if entity @s[tag=Part2] if entity @a[scores={click=48..}] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={lifetime=6..}] run scoreboard players set @s lifetime 6
execute if entity @s[tag=Part2] if entity @a[scores={click=48..}] run tp @e[type=armor_stand,tag=Impa] 843 88 410
execute if entity @s[tag=Part2] if entity @a[scores={click=48..}] run fill 824 90 411 823 91 409 minecraft:air
execute if entity @s[tag=Part2] if entity @a[scores={click=48..}] run tag @s remove GanondorfGone
execute if entity @s[tag=Part2] if entity @a[scores={click=48..}] run tag @s remove GanonKneels
execute if entity @s[tag=Part2] if entity @a[scores={click=48..}] run tag @s add StopText
execute if entity @s[tag=Part2] if entity @a[scores={click=48..}] run scoreboard players set @s text 1
execute if entity @s[tag=Part2] if entity @a[scores={click=48..}] run tag @a add MeetImpa
execute if entity @s[tag=Part2] if entity @a[scores={click=48..}] run tag @a add MeetKeatonGuard
execute if entity @s[tag=Part2] if entity @a[scores={click=48..}] run tag @a add FixItchyGirl
execute if entity @s[tag=Part2] if entity @a[scores={click=48..}] run tag @a remove MeetZelda
execute if entity @s[tag=Part2] if entity @a[scores={click=48..}] run scoreboard objectives remove click

execute if entity @a[scores={click=40..65}] run particle dripping_water 831 66 403 5 0 5 100 2
execute at @e[type=armor_stand,tag=Ganondorf] if entity @s[tag=GanonKneels] run tp @e[type=armor_stand,tag=Ganondorf] ~ 88.5 ~
execute at @e[type=armor_stand,tag=Ganondorf] if entity @s[tag=GanondorfGone] run tp @e[type=armor_stand,tag=Ganondorf] ~ 85 ~
