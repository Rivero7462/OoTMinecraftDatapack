#Start
execute if block 496 32 1299 minecraft:air at @a if entity @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] run tag @a add BeginIngoRace

execute unless entity @a[scores={MiniGameTime=1..}] unless block 456 31 1325 minecraft:barrier run tellraw @a {"text":"Once you get on the horse, the race starts!"}
execute unless entity @a[scores={MiniGameTime=1..}] unless block 456 31 1325 minecraft:barrier unless entity @e[type=horse,tag=FakeEpona,x=459,y=30,z=1326.0,dx=0,dz=0] run tp @a 457 30 1326.0 -90 ~
execute unless entity @a[scores={MiniGameTime=1..}] unless block 456 31 1325 minecraft:barrier run function ocarina_of_time:music/horse_race
execute unless entity @a[scores={MiniGameTime=1..}] run fill 456 31 1326 456 31 1325 minecraft:barrier
execute unless entity @a[scores={MiniGameTime=1..}] run fill 457 32 1324 460 30 1324 minecraft:barrier
execute unless entity @a[scores={MiniGameTime=1..}] run fill 458 30 1326 458 30 1325 minecraft:barrier
execute unless entity @a[scores={MiniGameTime=1..}] run fill 458 32 1326 458 32 1325 minecraft:barrier
execute unless entity @a[scores={MiniGameTime=1..}] run tag @e[type=horse,tag=FakeEpona] remove NoRideHorse
execute unless entity @a[scores={MiniGameTime=1..}] run scoreboard objectives setdisplay sidebar MiniGameTime
execute unless entity @a[scores={MiniGameTime=1..}] run tag @a add HideDisplayScore
execute unless entity @a[scores={MiniGameTime=1..}] run data merge entity @e[type=horse,tag=SaddleRanchHorse,limit=1] {NoAI:1b}
execute unless entity @a[scores={MiniGameTime=1..}] run tp @e[type=horse,tag=FakeEpona] 459 30 1326.0 -90 ~
execute unless entity @a[scores={MiniGameTime=1..}] run tp @s 459 30.7 1324.0 -90 ~
execute unless entity @a[scores={MiniGameTime=1..}] run tp @e[type=horse,tag=SaddleRanchHorse] 459 30 1324.0 -90 ~
execute unless entity @a[scores={MiniGameTime=1..}] run kill @e[type=horse,tag=RanchHorse1]
execute unless entity @a[scores={MiniGameTime=1..}] run kill @e[type=horse,tag=RanchHorse2]
execute unless entity @a[scores={MiniGameTime=1..}] run kill @e[type=chicken,tag=AdultRanchCucco]
execute unless entity @a[scores={MiniGameTime=1..}] run fill 492 32 1301 495 30 1301 minecraft:iron_bars[east=true,west=true]
execute unless entity @a[scores={MiniGameTime=1..}] run fill 495 33 1301 492 34 1301 minecraft:barrier
execute unless entity @a[scores={MiniGameTime=1..}] run fill 491 30 1300 496 32 1299 minecraft:air
execute unless entity @a[scores={MiniGameTime=1..}] if entity @a[x=461,y=30,z=1322,dx=2,dz=4] run tp @a 457 30 1326.0 -90 ~
execute unless entity @a[scores={MiniGameTime=1..}] if entity @a[x=457,y=30,z=1328,dx=5,dz=4] run tp @a 457 30 1326.0 -90 ~
execute unless entity @a[scores={MiniGameTime=1..}] if entity @a[x=469,y=30,z=1351,dx=0,dz=0] run tp @a 457 30 1326.0 -90 ~

execute if entity @a[scores={MiniGameTime=1}] run fill 460 30 1324 456 32 1326 minecraft:air replace minecraft:barrier

#Path
#Ingo
execute if entity @a[scores={MiniGameTime=1..}] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1..205}] run tp @s ~.2 ~ ~ 270 ~
execute if entity @s[scores={lifetime=206..255}] run tp @s ~.13 ~ ~.07 -60 ~
execute if entity @s[scores={lifetime=256..330}] run tp @s ~.1 ~ ~.1 -45 ~
execute if entity @s[scores={lifetime=331..363}] run tp @s ~ ~ ~.2 0 ~
execute if entity @s[scores={lifetime=364..375}] run tp @s ~.1 ~ ~.1 -45 ~
execute if entity @s[scores={lifetime=376..440}] run tp @s ~ ~ ~.2 0 ~
execute if entity @s[scores={lifetime=441..453}] run tp @s ~-.1 ~ ~.1 45 ~
execute if entity @s[scores={lifetime=454..488}] run tp @s ~ ~ ~.2 0 ~
execute if entity @s[scores={lifetime=489..560}] run tp @s ~-.1 ~ ~.1 45 ~
execute if entity @s[scores={lifetime=561..613}] run tp @s ~-.13 ~ ~.07 65 ~
execute if entity @s[scores={lifetime=614..955}] run tp @s ~-.2 ~ ~ 90 ~
execute if entity @s[scores={lifetime=956..1002}] run tp @s ~-.13 ~ ~-.07 125 ~
execute if entity @s[scores={lifetime=1003..1080}] run tp @s ~-.1 ~ ~-.1 135 ~
execute if entity @s[scores={lifetime=1081..1215}] run tp @s ~ ~ ~-.2 180 ~
execute if entity @s[scores={lifetime=1216..1305}] run tp @s ~.1 ~ ~-.1 -135 ~
execute if entity @s[scores={lifetime=1306..1346}] run tp @s ~.13 ~ ~-.07 -115 ~
execute if entity @s[scores={lifetime=1347..1500}] run tp @s ~.2 ~ ~ 270 ~
#Horse
execute if entity @s[scores={lifetime=1..205}] as @e[type=horse,tag=SaddleRanchHorse] at @s run tp @s ~.2 ~ ~ 270 ~
execute if entity @s[scores={lifetime=206..255}] as @e[type=horse,tag=SaddleRanchHorse] at @s run tp @s ~.13 ~ ~.07 -60 ~
execute if entity @s[scores={lifetime=256..330}] as @e[type=horse,tag=SaddleRanchHorse] at @s run tp @s ~.1 ~ ~.1 -45 ~
execute if entity @s[scores={lifetime=331..363}] as @e[type=horse,tag=SaddleRanchHorse] at @s run tp @s ~ ~ ~.2 0 ~
execute if entity @s[scores={lifetime=364..375}] as @e[type=horse,tag=SaddleRanchHorse] at @s run tp @s ~.1 ~ ~.1 -45 ~
execute if entity @s[scores={lifetime=376..440}] as @e[type=horse,tag=SaddleRanchHorse] at @s run tp @s ~ ~ ~.2 0 ~
execute if entity @s[scores={lifetime=441..453}] as @e[type=horse,tag=SaddleRanchHorse] at @s run tp @s ~-.1 ~ ~.1 45 ~
execute if entity @s[scores={lifetime=454..488}] as @e[type=horse,tag=SaddleRanchHorse] at @s run tp @s ~ ~ ~.2 0 ~
execute if entity @s[scores={lifetime=489..560}] as @e[type=horse,tag=SaddleRanchHorse] at @s run tp @s ~-.1 ~ ~.1 45 ~
execute if entity @s[scores={lifetime=561..613}] as @e[type=horse,tag=SaddleRanchHorse] at @s run tp @s ~-.13 ~ ~.07 65 ~
execute if entity @s[scores={lifetime=614..955}] as @e[type=horse,tag=SaddleRanchHorse] at @s run tp @s ~-.2 ~ ~ 90 ~
execute if entity @s[scores={lifetime=956..1002}] as @e[type=horse,tag=SaddleRanchHorse] at @s run tp @s ~-.13 ~ ~-.07 125 ~
execute if entity @s[scores={lifetime=1003..1080}] as @e[type=horse,tag=SaddleRanchHorse] at @s run tp @s ~-.1 ~ ~-.1 135 ~
execute if entity @s[scores={lifetime=1081..1215}] as @e[type=horse,tag=SaddleRanchHorse] at @s run tp @s ~ ~ ~-.2 180 ~
execute if entity @s[scores={lifetime=1216..1305}] as @e[type=horse,tag=SaddleRanchHorse] at @s run tp @s ~.1 ~ ~-.1 -135 ~
execute if entity @s[scores={lifetime=1306..1346}] as @e[type=horse,tag=SaddleRanchHorse] at @s run tp @s ~.13 ~ ~-.07 -115 ~
execute if entity @s[scores={lifetime=1347..1500}] as @e[type=horse,tag=SaddleRanchHorse] at @s run tp @s ~.2 ~ ~ 270 ~

#CheckPoints
execute if entity @a[x=460,y=31,z=1374,dx=0,dy=1,dz=15] unless entity @a[tag=Correct2] run tag @a add Correct1
execute if entity @a[x=404,y=31,z=1351,dx=14,dy=1,dz=0] run tag @a add Correct2

#Get off Horse
execute if entity @a[scores={MiniGameTime=1..}] at @a unless entity @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] unless entity @a[scores={MiniGameTime=3000..}] run tellraw @a ["",{"text":"You are not allowed to leave the horse after starting the race."}]
execute if entity @a[scores={MiniGameTime=1..}] at @a unless entity @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] unless entity @a[scores={MiniGameTime=3000..}] run tag @s add Win
execute if entity @a[scores={MiniGameTime=1..}] at @a unless entity @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] unless entity @a[scores={MiniGameTime=3000..}] run tag @s remove Part2
execute if entity @a[scores={MiniGameTime=1..}] at @a unless entity @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] unless entity @a[scores={MiniGameTime=3000..}] run tag @a remove Correct1
execute if entity @a[scores={MiniGameTime=1..}] at @a unless entity @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] unless entity @a[scores={MiniGameTime=3000..}] run tag @a remove Correct2
execute if entity @a[scores={MiniGameTime=1..}] at @a unless entity @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] unless entity @a[scores={MiniGameTime=3000..}] run scoreboard players set @s text 6
execute if entity @a[scores={MiniGameTime=1..}] at @a unless entity @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] unless entity @a[scores={MiniGameTime=3000..}] run scoreboard players set @a MiniGameTime 3000

#Finish
execute if entity @a[x=460,y=31,z=1315,dx=0,dy=3,dz=11] if entity @a[tag=Correct1,tag=Correct2,scores={MiniGameTime=200..}] unless entity @s[tag=Win] run tag @a add Win
execute if entity @s[x=460,y=31,z=1315,dx=0,dy=3,dz=11] if entity @a[scores={MiniGameTime=200..}] unless entity @a[tag=Win] run tag @s add Win
execute if entity @s[tag=Win] unless entity @a[scores={MiniGameTime=3000..}] run scoreboard players set @a MiniGameTime 3000
execute if entity @a[tag=Win] unless entity @a[scores={MiniGameTime=3000..}] run scoreboard players set @a MiniGameTime 3000

#End
execute if entity @a[tag=Win] if entity @s[tag=Part2] run fill 530 34 1338 530 33 1378 minecraft:air
execute if entity @a[tag=Win] if entity @s[tag=Part2] run fill 504 34 1414 431 33 1414 minecraft:air
execute if entity @a[tag=Win] if entity @s[tag=Part2] run fill 398 34 1378 398 33 1348 minecraft:air
execute if entity @a[tag=Win] if entity @s[tag=Part2] run fill 492 34 1301 495 33 1301 minecraft:air
execute if entity @a[tag=Win] if entity @s[tag=Part2] run tp @s 494.0 30 1300 0 ~

execute as @e[type=armor_stand,tag=AdultIngo1] at @s if entity @a[scores={MiniGameTime=3001..}] run function ocarina_of_time:moving_things/lon_lon_ranch/horse_race/finish
