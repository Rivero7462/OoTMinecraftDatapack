scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1}] run stopsound @a music
execute if entity @s[scores={lifetime=1}] run fill -569 72 -661 -569 72 -661 minecraft:barrier
execute if entity @s[scores={lifetime=1}] run fill -569 74 -661 -569 74 -661 minecraft:barrier
execute if entity @s[scores={lifetime=1}] run fill -568 72 -662 -568 72 -662 minecraft:barrier
execute if entity @s[scores={lifetime=1}] run fill -568 74 -662 -568 74 -662 minecraft:barrier
execute if entity @s[scores={lifetime=1}] run fill -567 72 -661 -567 72 -661 minecraft:barrier
execute if entity @s[scores={lifetime=1}] run fill -567 74 -661 -567 74 -661 minecraft:barrier
execute if entity @s[scores={lifetime=1}] run fill -568 72 -660 -568 72 -660 minecraft:barrier
execute if entity @s[scores={lifetime=1}] run fill -568 74 -660 -568 74 -660 minecraft:barrier
execute if entity @s[scores={lifetime=1}] run tp @s -564.0 73 -657.0 135 ~
execute if entity @s[scores={lifetime=1}] run tp @e[type=armor_stand,tag=SkullKid3] -567 74 -656 170 ~
execute if entity @s[scores={lifetime=1}] run tp @a -568 72 -661

execute if entity @s[scores={lifetime=1}] run tellraw @a ["",{"text":"Skull Kid:","color":"gold"},{"text":" Follow along with our song on your ocarina. We'll lead you into it."}]
execute if entity @s[scores={lifetime=1}] if entity @e[type=area_effect_cloud,tag=Songs,tag=!Lullaby] run tag @s add RemoveLullaby
execute if entity @s[scores={lifetime=1}] if entity @e[type=area_effect_cloud,tag=Songs,tag=!Lullaby] run tag @e[type=area_effect_cloud,tag=Songs] add Lullaby

#First 3 Notes
execute if entity @s[scores={lifetime=39,timer=0}] run tag @s add Note1Choice1
execute if entity @s[scores={lifetime=39,timer=1}] run tag @s add Note1Choice2
execute if entity @s[scores={lifetime=39,timer=2}] run tag @s add Note1Choice3
execute if entity @s[scores={lifetime=39,timer=3}] run tag @s add Note1Choice4
execute if entity @s[scores={lifetime=39,timer=4}] run tag @s add Note1Choice5
execute if entity @s[scores={lifetime=43,timer=0}] run tag @s add Note2Choice1
execute if entity @s[scores={lifetime=43,timer=1}] run tag @s add Note2Choice2
execute if entity @s[scores={lifetime=43,timer=2}] run tag @s add Note2Choice3
execute if entity @s[scores={lifetime=43,timer=3}] run tag @s add Note2Choice4
execute if entity @s[scores={lifetime=43,timer=4}] run tag @s add Note2Choice5
execute if entity @s[scores={lifetime=46,timer=0}] run tag @s add Note3Choice1
execute if entity @s[scores={lifetime=46,timer=1}] run tag @s add Note3Choice2
execute if entity @s[scores={lifetime=46,timer=2}] run tag @s add Note3Choice3
execute if entity @s[scores={lifetime=46,timer=3}] run tag @s add Note3Choice4
execute if entity @s[scores={lifetime=46,timer=4}] run tag @s add Note3Choice5

#Play notes 1-8
execute if entity @s[scores={lifetime=48}] run scoreboard players set @s GameTimer 0
execute if entity @s[scores={lifetime=49}] run tag @s add Repeat

#1-3
execute if entity @s[scores={lifetime=50},tag=Note1Choice1] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.33
execute if entity @s[scores={lifetime=50},tag=Note1Choice2] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.6
execute if entity @s[scores={lifetime=50},tag=Note1Choice3] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.2
execute if entity @s[scores={lifetime=50},tag=Note1Choice4] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 .8
execute if entity @s[scores={lifetime=50},tag=Note1Choice5] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 .95
execute if entity @s[scores={lifetime=70},tag=Note2Choice1] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.33
execute if entity @s[scores={lifetime=70},tag=Note2Choice2] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.6
execute if entity @s[scores={lifetime=70},tag=Note2Choice3] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.2
execute if entity @s[scores={lifetime=70},tag=Note2Choice4] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 .8
execute if entity @s[scores={lifetime=70},tag=Note2Choice5] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 .95
execute if entity @s[scores={lifetime=90},tag=Note3Choice1] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.33
execute if entity @s[scores={lifetime=90},tag=Note3Choice2] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.6
execute if entity @s[scores={lifetime=90},tag=Note3Choice3] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.2
execute if entity @s[scores={lifetime=90},tag=Note3Choice4] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 .8
execute if entity @s[scores={lifetime=90},tag=Note3Choice5] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 .95
execute unless entity @s[tag=FinishStep1] unless entity @s[tag=FinishStep2] unless entity @s[tag=FinishStep3] unless entity @s[tag=FinishStep4] unless entity @s[tag=FinishStep5] if entity @s[scores={lifetime=130..140}] if entity @s[tag=Repeat] run tag @s add StopRepeat
execute unless entity @s[tag=FinishStep1] unless entity @s[tag=FinishStep2] unless entity @s[tag=FinishStep3] unless entity @s[tag=FinishStep4] unless entity @s[tag=FinishStep5] if entity @s[scores={lifetime=91..140}] unless entity @s[tag=Repeat] run scoreboard players set @s lifetime 2948

#4
execute unless entity @s[tag=FinishStep1] if entity @s[scores={GameTimer=4}] run tag @s add Step1
execute if entity @s[tag=Step1] if entity @s[scores={timer=0}] unless entity @s[tag=Note3Choice1] run tag @s add Note4Choice1
execute if entity @s[tag=Step1] if entity @s[scores={timer=0}] if entity @s[tag=Note3Choice1] run tag @s add Note4Choice2
execute if entity @s[tag=Step1] if entity @s[scores={timer=1}] unless entity @s[tag=Note3Choice2] run tag @s add Note4Choice2
execute if entity @s[tag=Step1] if entity @s[scores={timer=1}] if entity @s[tag=Note3Choice2] run tag @s add Note4Choice3
execute if entity @s[tag=Step1] if entity @s[scores={timer=2}] unless entity @s[tag=Note3Choice3] run tag @s add Note4Choice3
execute if entity @s[tag=Step1] if entity @s[scores={timer=2}] if entity @s[tag=Note3Choice3] run tag @s add Note4Choice4
execute if entity @s[tag=Step1] if entity @s[scores={timer=3}] unless entity @s[tag=Note3Choice4] run tag @s add Note4Choice4
execute if entity @s[tag=Step1] if entity @s[scores={timer=3}] if entity @s[tag=Note3Choice4] run tag @s add Note4Choice5
execute if entity @s[tag=Step1] if entity @s[scores={timer=4}] unless entity @s[tag=Note3Choice5] run tag @s add Note4Choice5
execute if entity @s[tag=Step1] if entity @s[scores={timer=4}] if entity @s[tag=Note3Choice5] run tag @s add Note4Choice1
execute if entity @s[tag=Step1] run scoreboard players set @s lifetime 47
execute if entity @s[tag=Step1] run tag @s add FinishStep1
execute if entity @s[tag=Step1] run tag @s remove Step1

execute if entity @s[scores={lifetime=110},tag=Note4Choice1] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.33
execute if entity @s[scores={lifetime=110},tag=Note4Choice2] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.6
execute if entity @s[scores={lifetime=110},tag=Note4Choice3] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.2
execute if entity @s[scores={lifetime=110},tag=Note4Choice4] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 .8
execute if entity @s[scores={lifetime=110},tag=Note4Choice5] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 .95
execute if entity @s[tag=FinishStep1] unless entity @s[tag=FinishStep2] unless entity @s[tag=FinishStep3] unless entity @s[tag=FinishStep4] unless entity @s[tag=FinishStep5] if entity @s[scores={lifetime=150..160}] if entity @s[tag=Repeat] run tag @s add StopRepeat
execute if entity @s[tag=FinishStep1] unless entity @s[tag=FinishStep2] unless entity @s[tag=FinishStep3] unless entity @s[tag=FinishStep4] unless entity @s[tag=FinishStep5] if entity @s[scores={lifetime=111..160}] unless entity @s[tag=Repeat] run scoreboard players set @s lifetime 2948

#5
execute unless entity @s[tag=FinishStep2] if entity @s[scores={GameTimer=5}] run tag @s add Step2
execute if entity @s[tag=Step2] if entity @s[scores={timer=0}] unless entity @s[tag=Note4Choice1] run tag @s add Note5Choice1
execute if entity @s[tag=Step2] if entity @s[scores={timer=0}] if entity @s[tag=Note4Choice1] run tag @s add Note5Choice2
execute if entity @s[tag=Step2] if entity @s[scores={timer=1}] unless entity @s[tag=Note4Choice2] run tag @s add Note5Choice2
execute if entity @s[tag=Step2] if entity @s[scores={timer=1}] if entity @s[tag=Note4Choice2] run tag @s add Note5Choice3
execute if entity @s[tag=Step2] if entity @s[scores={timer=2}] unless entity @s[tag=Note4Choice3] run tag @s add Note5Choice3
execute if entity @s[tag=Step2] if entity @s[scores={timer=2}] if entity @s[tag=Note4Choice3] run tag @s add Note5Choice4
execute if entity @s[tag=Step2] if entity @s[scores={timer=3}] unless entity @s[tag=Note4Choice4] run tag @s add Note5Choice4
execute if entity @s[tag=Step2] if entity @s[scores={timer=3}] if entity @s[tag=Note4Choice4] run tag @s add Note5Choice5
execute if entity @s[tag=Step2] if entity @s[scores={timer=4}] unless entity @s[tag=Note4Choice5] run tag @s add Note5Choice5
execute if entity @s[tag=Step2] if entity @s[scores={timer=4}] if entity @s[tag=Note4Choice5] run tag @s add Note5Choice1
execute if entity @s[tag=Step2] run scoreboard players set @s lifetime 47
execute if entity @s[tag=Step2] run tag @s add FinishStep2
execute if entity @s[tag=Step2] run tag @s remove Step2

execute if entity @s[scores={lifetime=130},tag=Note5Choice1] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.33
execute if entity @s[scores={lifetime=130},tag=Note5Choice2] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.6
execute if entity @s[scores={lifetime=130},tag=Note5Choice3] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.2
execute if entity @s[scores={lifetime=130},tag=Note5Choice4] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 .8
execute if entity @s[scores={lifetime=130},tag=Note5Choice5] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 .95
execute if entity @s[tag=FinishStep2] unless entity @s[tag=FinishStep3] unless entity @s[tag=FinishStep4] unless entity @s[tag=FinishStep5] if entity @s[scores={lifetime=170..180}] if entity @s[tag=Repeat] run tag @s add StopRepeat
execute if entity @s[tag=FinishStep2] unless entity @s[tag=FinishStep3] unless entity @s[tag=FinishStep4] unless entity @s[tag=FinishStep5] if entity @s[scores={lifetime=131..180}] unless entity @s[tag=Repeat] run scoreboard players set @s lifetime 2948






#6
execute if entity @s[tag=Prize1] unless entity @s[tag=FinishStep3] if entity @s[scores={GameTimer=6}] unless entity @s[scores={lifetime=3010..}] run tag @s add Step3
execute unless entity @s[tag=Prize1] if entity @s[scores={GameTimer=6}] unless entity @s[scores={lifetime=3010..}] run function ocarina_of_time:moving_things/kokiri_forest/ocarina_minigame/prize_1
execute if entity @s[tag=Step3] if entity @s[scores={timer=0}] unless entity @s[tag=Note5Choice1] run tag @s add Note6Choice1
execute if entity @s[tag=Step3] if entity @s[scores={timer=0}] if entity @s[tag=Note5Choice1] run tag @s add Note6Choice2
execute if entity @s[tag=Step3] if entity @s[scores={timer=1}] unless entity @s[tag=Note5Choice2] run tag @s add Note6Choice2
execute if entity @s[tag=Step3] if entity @s[scores={timer=1}] if entity @s[tag=Note5Choice2] run tag @s add Note6Choice3
execute if entity @s[tag=Step3] if entity @s[scores={timer=2}] unless entity @s[tag=Note5Choice3] run tag @s add Note6Choice3
execute if entity @s[tag=Step3] if entity @s[scores={timer=2}] if entity @s[tag=Note5Choice3] run tag @s add Note6Choice4
execute if entity @s[tag=Step3] if entity @s[scores={timer=3}] unless entity @s[tag=Note5Choice4] run tag @s add Note6Choice4
execute if entity @s[tag=Step3] if entity @s[scores={timer=3}] if entity @s[tag=Note5Choice4] run tag @s add Note6Choice5
execute if entity @s[tag=Step3] if entity @s[scores={timer=4}] unless entity @s[tag=Note5Choice5] run tag @s add Note6Choice5
execute if entity @s[tag=Step3] if entity @s[scores={timer=4}] if entity @s[tag=Note5Choice5] run tag @s add Note6Choice1
execute if entity @s[tag=Step3] run scoreboard players set @s lifetime 47
execute if entity @s[tag=Step3] run tag @s add FinishStep3
execute if entity @s[tag=Step3] run tag @s remove Step3

execute if entity @s[scores={lifetime=150},tag=Note6Choice1] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.33
execute if entity @s[scores={lifetime=150},tag=Note6Choice2] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.6
execute if entity @s[scores={lifetime=150},tag=Note6Choice3] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.2
execute if entity @s[scores={lifetime=150},tag=Note6Choice4] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 .8
execute if entity @s[scores={lifetime=150},tag=Note6Choice5] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 .95
execute if entity @s[tag=FinishStep3] unless entity @s[tag=FinishStep4] unless entity @s[tag=FinishStep5] if entity @s[scores={lifetime=190..200}] if entity @s[tag=Repeat] run tag @s add StopRepeat
execute if entity @s[tag=FinishStep3] unless entity @s[tag=FinishStep4] unless entity @s[tag=FinishStep5] if entity @s[scores={lifetime=151..200}] unless entity @s[tag=Repeat] run scoreboard players set @s lifetime 2948

#7
execute if entity @s[tag=Prize2] unless entity @s[tag=FinishStep4] if entity @s[scores={GameTimer=7}] unless entity @s[scores={lifetime=3010..}] run tag @s add Step4
execute unless entity @s[tag=Prize2] unless entity @s[tag=FinishStep4] if entity @s[scores={GameTimer=7}] unless entity @s[scores={lifetime=3010..}] run function ocarina_of_time:moving_things/kokiri_forest/ocarina_minigame/prize_2
execute if entity @s[tag=Step4] if entity @s[scores={timer=0}] unless entity @s[tag=Note6Choice1] run tag @s add Note7Choice1
execute if entity @s[tag=Step4] if entity @s[scores={timer=0}] if entity @s[tag=Note6Choice1] run tag @s add Note7Choice2
execute if entity @s[tag=Step4] if entity @s[scores={timer=1}] unless entity @s[tag=Note6Choice2] run tag @s add Note7Choice2
execute if entity @s[tag=Step4] if entity @s[scores={timer=1}] if entity @s[tag=Note6Choice2] run tag @s add Note7Choice3
execute if entity @s[tag=Step4] if entity @s[scores={timer=2}] unless entity @s[tag=Note6Choice3] run tag @s add Note7Choice3
execute if entity @s[tag=Step4] if entity @s[scores={timer=2}] if entity @s[tag=Note6Choice3] run tag @s add Note7Choice4
execute if entity @s[tag=Step4] if entity @s[scores={timer=3}] unless entity @s[tag=Note6Choice4] run tag @s add Note7Choice4
execute if entity @s[tag=Step4] if entity @s[scores={timer=3}] if entity @s[tag=Note6Choice4] run tag @s add Note7Choice5
execute if entity @s[tag=Step4] if entity @s[scores={timer=4}] unless entity @s[tag=Note6Choice5] run tag @s add Note7Choice5
execute if entity @s[tag=Step4] if entity @s[scores={timer=4}] if entity @s[tag=Note6Choice5] run tag @s add Note7Choice1
execute if entity @s[tag=Step4] run scoreboard players set @s lifetime 47
execute if entity @s[tag=Step4] run tag @s add FinishStep4
execute if entity @s[tag=Step4] run tag @s remove Step4

execute if entity @s[scores={lifetime=170},tag=Note7Choice1] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.33
execute if entity @s[scores={lifetime=170},tag=Note7Choice2] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.6
execute if entity @s[scores={lifetime=170},tag=Note7Choice3] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.2
execute if entity @s[scores={lifetime=170},tag=Note7Choice4] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 .8
execute if entity @s[scores={lifetime=170},tag=Note7Choice5] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 .95
execute if entity @s[tag=FinishStep4] unless entity @s[tag=FinishStep5] if entity @s[scores={lifetime=210..220}] if entity @s[tag=Repeat] run tag @s add StopRepeat
execute if entity @s[tag=FinishStep4] unless entity @s[tag=FinishStep5] if entity @s[scores={lifetime=171..220}] unless entity @s[tag=Repeat] run scoreboard players set @s lifetime 2948

#8
execute unless entity @s[tag=FinishStep5] if entity @s[scores={GameTimer=8}] run tag @s add Step5
execute if entity @s[tag=Step5] if entity @s[scores={timer=0}] unless entity @s[tag=Note7Choice1] run tag @s add Note8Choice1
execute if entity @s[tag=Step5] if entity @s[scores={timer=0}] if entity @s[tag=Note7Choice1] run tag @s add Note8Choice2
execute if entity @s[tag=Step5] if entity @s[scores={timer=1}] unless entity @s[tag=Note7Choice2] run tag @s add Note8Choice2
execute if entity @s[tag=Step5] if entity @s[scores={timer=1}] if entity @s[tag=Note7Choice2] run tag @s add Note8Choice3
execute if entity @s[tag=Step5] if entity @s[scores={timer=2}] unless entity @s[tag=Note7Choice3] run tag @s add Note8Choice3
execute if entity @s[tag=Step5] if entity @s[scores={timer=2}] if entity @s[tag=Note7Choice3] run tag @s add Note8Choice4
execute if entity @s[tag=Step5] if entity @s[scores={timer=3}] unless entity @s[tag=Note7Choice4] run tag @s add Note8Choice4
execute if entity @s[tag=Step5] if entity @s[scores={timer=3}] if entity @s[tag=Note7Choice4] run tag @s add Note8Choice5
execute if entity @s[tag=Step5] if entity @s[scores={timer=4}] unless entity @s[tag=Note7Choice5] run tag @s add Note8Choice5
execute if entity @s[tag=Step5] if entity @s[scores={timer=4}] if entity @s[tag=Note7Choice5] run tag @s add Note8Choice1
execute if entity @s[tag=Step5] run scoreboard players set @s lifetime 47
execute if entity @s[tag=Step5] run tag @s add FinishStep5
execute if entity @s[tag=Step5] run tag @s remove Step5

execute if entity @s[scores={lifetime=190},tag=Note8Choice1] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.33
execute if entity @s[scores={lifetime=190},tag=Note8Choice2] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.6
execute if entity @s[scores={lifetime=190},tag=Note8Choice3] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.2
execute if entity @s[scores={lifetime=190},tag=Note8Choice4] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 .8
execute if entity @s[scores={lifetime=190},tag=Note8Choice5] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 .95
execute if entity @s[tag=FinishStep5] if entity @s[scores={lifetime=230..240}] if entity @s[tag=Repeat] run tag @s add StopRepeat
execute if entity @s[tag=FinishStep5] if entity @s[scores={lifetime=191..240}] unless entity @s[tag=Repeat] run scoreboard players set @s lifetime 2948

#Finish
#Rupee
execute if entity @s[tag=Prize3] if entity @s[scores={GameTimer=9}] unless entity @s[scores={lifetime=3010..}] run function ocarina_of_time:moving_things/kokiri_forest/ocarina_minigame/prize_4
#Heart
execute unless entity @s[tag=Prize3] if entity @s[scores={GameTimer=9}] unless entity @s[scores={lifetime=3010..}] run function ocarina_of_time:moving_things/kokiri_forest/ocarina_minigame/prize_3

#Repeat
execute if entity @s[tag=StopRepeat] run tag @s remove Repeat
execute if entity @s[tag=StopRepeat] run scoreboard players set @s lifetime 49
execute if entity @s[tag=StopRepeat] run tag @s remove StopRepeat

#Next Note
execute if entity @s[scores={lifetime=2950}] unless entity @s[scores={GameTimer=1..}] run playsound minecraft:block.note_block.pling music @a ~ ~ ~ 1 2
execute if entity @s[scores={lifetime=2950}] run scoreboard players add @s GameTimer 1

#Fail
execute if entity @s[tag=Fail] unless entity @s[scores={lifetime=3010..}] run scoreboard players set @s lifetime 3010
execute if entity @s[scores={lifetime=3010}] run tellraw @a ["",{"text":"Skull Kid:","color":"gold"},{"text":" Too bad... Heh heh!"}]
execute if entity @s[scores={lifetime=3010}] run function ocarina_of_time:music/lost_woods

execute if entity @s[scores={lifetime=3010..}] if entity @s[tag=RemoveLullaby] run tag @e[type=area_effect_cloud,tag=Songs] remove Lullaby
execute if entity @s[scores={lifetime=3010..}] if entity @s[tag=RemoveLullaby] run tag @s remove RemoveLullaby
execute if entity @s[scores={lifetime=3010..}] as @a if entity @a[tag=PlayingSong] run function ocarina_of_time:items/ocarina/ocarina_3
execute if entity @s[scores={lifetime=3010..}] run fill -567 72 -660 -569 74 -662 minecraft:air
execute if entity @s[scores={lifetime=3010..}] run tp @s -564.0 66 -657.0 135 ~
execute if entity @s[scores={lifetime=3010..}] run tp @e[type=armor_stand,tag=SkullKid3] -567 66 -656 170 ~
