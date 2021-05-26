#Baby Epona
execute as @e[type=horse,tag=BabyEpona] run data merge entity @s {Age:-100b}

#Horse Gate
execute as @e[type=horse,x=457,y=30,z=1327,dx=5,dz=2] unless entity @s[tag=Epona] run data merge entity @s {Motion:[0.0,-0.1,0.3]}

#Hop Off Horse
execute as @a at @e[type=horse,tag=NoRideHorse] if entity @s[distance=..1,nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] run tp @s ~ ~ ~

execute as @e[type=horse,tag=RanchHorse] unless entity @s[tag=RideHorse] run tag @s add NoRideHorse
execute as @e[type=horse,tag=RanchHorse] if entity @s[tag=Scared] run tag @s add NoRideHorse

#House Roof Thing
execute if entity @a[scores={time=13001..23000}] run fill 386 12 1332 384 12 1332 minecraft:spruce_planks
execute unless entity @a[scores={time=13001..23000}] run fill 386 12 1332 384 12 1332 minecraft:air

#Ingo
execute if entity @a[tag=LonLonRanchChanges1] run scoreboard players set @e[type=armor_stand,tag=Ingo] text 3

#Epona
execute as @e[type=horse,tag=BabyEpona] at @a if entity @a[tag=ScaredEpona] if entity @s[distance=..3] at @s if block ^ ^ ^-1 minecraft:air run tp @s ^ ^ ^-.3 facing entity @p
execute as @e[type=horse,tag=BabyEpona] at @e[type=armor_stand,tag=Malon3] if entity @s[distance=..1] at @s run tp @s ^ ^ ^-.3 facing entity @e[type=armor_stand,tag=Malon3,limit=1]
execute as @e[type=horse,tag=BabyEpona] at @e[type=armor_stand,tag=Malon3] unless entity @s[distance=..2] at @a unless entity @s[distance=..3] at @s run tp @s ^ ^ ^.3 facing entity @e[type=armor_stand,tag=Malon3,limit=1]
execute if entity @a[tag=LonLonRanchChanges1] run tag @a add MeetEpona
execute if entity @a[tag=LonLonRanchChanges1] run tag @e[type=armor_stand,tag=Talon2] add CuccoMinigame
execute if entity @a[tag=LonLonRanchChanges1] run fill 423 3 1362 423 3 1362 minecraft:gold_block
execute if block 423 3 1362 minecraft:gold_block run tag @a remove LonLonRanchChanges1

#Talon
execute if block 423 3 1362 minecraft:gold_block unless block 422 3 1362 minecraft:gold_block run tp @e[type=armor_stand,tag=TalonSleep4] 433.8 5.4 1362.0

#Talon Villager
execute as @e[type=villager,tag=TalonMiniGame] unless entity @a[tag=RanchGame] run tp @s @e[type=armor_stand,tag=Talon2,limit=1]
execute as @e[type=villager,tag=TalonMiniGame2] unless entity @a[tag=RanchGame] run tp @s @e[type=armor_stand,tag=Talon2,limit=1]

#Cucco MiniGame
execute if entity @a[nbt={Inventory:[{tag:{Start:1}}]}] run tag @a add RanchGame
execute if entity @a[nbt={Inventory:[{tag:{Start:1}}]}] run clear @a minecraft:paper
execute if entity @a[tag=RanchGame] unless entity @a[scores={MiniGameTime=1..}] run scoreboard players set @a MiniGameTime 461
execute if entity @a[tag=RanchGame] unless entity @a[scores={MiniGameTime=..-2}] run scoreboard players remove @a MiniGameTime 1
execute unless entity @a[scores={time=13001..23000}] unless entity @a[tag=RanchGame] run tp @e[type=chicken,tag=Cucco1] 434 7 1361 90 ~
execute unless entity @a[scores={time=13001..23000}] unless entity @a[tag=RanchGame] run tp @e[type=chicken,tag=Cucco2] 434 7 1362 90 ~
execute unless entity @a[scores={time=13001..23000}] unless entity @a[tag=RanchGame] run tp @e[type=chicken,tag=Cucco3] 433.3 6 1362.0 90 ~
execute as @e[type=armor_stand,tag=Talon2] at @a if entity @a[tag=RanchGame] run function ocarina_of_time:moving_things/lon_lon_ranch/minigame
execute if entity @a[scores={time=13001..23000}] run tp @e[type=chicken,tag=SpecialCucco] 434 3 1361 90 ~

#Win Cucco Minigame
execute as @e[type=armor_stand,tag=Talon2,tag=Prize] run kill @e[type=villager,tag=TalonMiniGame]
execute as @e[type=armor_stand,tag=Talon2,tag=Prize] unless entity @e[type=villager,tag=TalonMiniGame2] run summon minecraft:villager 433.4 6 1362.0 {Tags:["TalonMiniGame2","Invisible"],CustomName:"\"Talon\"",CustomNameVisible:0,CanPickUpLoot:0,PersistenceRequired:1,Silent:1,Invulnerable:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:30,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},buyB:{id:glass_bottle,Count:1,tag:{display:{Name:"\"Bottle\""}}},sell:{id:carrot_on_a_stick,Count:1,tag:{display:{Name:"\"Lon Lon Milk\""},Unbreakable:1b,Damage:6,HideFlags:63,BottledMilk:1b}},rewardExp:0b,maxUses:9999999},{buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:paper,Count:1,tag:{display:{Name:"\"Cucco Game\""},Start:1}},rewardExp:0b,maxUses:1}]},NoAI:1b}

#Horse Minigame
execute as @e[type=armor_stand,tag=AdultIngo1] unless entity @a[tag=RaceGame] run tp @e[type=villager,tag=IngoMiniGame] @s
execute if entity @a[tag=RaceGame] run tp @e[type=villager,tag=IngoMiniGame] 461 26 1325
execute if entity @a[nbt={Inventory:[{tag:{HorseStart:1}}]}] run tag @a add HorseRanchGame
execute if entity @a[nbt={Inventory:[{tag:{HorseStart:1}}]}] run clear @a minecraft:paper
execute if entity @a[tag=HorseRanchGame] unless entity @a[scores={MiniGameTime=1..}] run scoreboard players set @a MiniGameTime 1205
execute if entity @a[tag=HorseRanchGame] unless entity @a[scores={MiniGameTime=..-2}] run scoreboard players remove @a MiniGameTime 1
execute as @e[type=armor_stand,tag=AdultIngo1] at @a if entity @a[tag=HorseRanchGame] run function ocarina_of_time:moving_things/lon_lon_ranch/horse_minigame
execute if entity @a[tag=Adult,x=457,y=30,z=1328,dx=5,dz=2] unless entity @a[scores={time=13001..23000}] unless entity @e[type=armor_stand,tag=BadIngoGone] unless entity @a[tag=HorseRanchGame] run tp @a 461 30 1322 0 ~

#Race
execute if entity @a[nbt={Inventory:[{tag:{HorseRaceStart:1}}]}] run function ocarina_of_time:moving_things/lon_lon_ranch/horse_race/start
execute as @e[type=armor_stand,tag=Racer] at @s if entity @a[tag=RaceGame] run function ocarina_of_time:moving_things/lon_lon_ranch/horse_race/horse_race
execute as @e[type=armor_stand,tag=Racer] at @s if entity @a[tag=RaceGame] unless entity @s[tag=Win] unless entity @a[tag=Win] run function ocarina_of_time:moving_things/lon_lon_ranch/horse_race/horse_race
execute as @e[type=armor_stand,tag=Racer,tag=Part2] at @s if entity @a[tag=RaceGame,distance=..6] unless entity @s[tag=Win] unless entity @a[tag=Win] unless entity @s[scores={lifetime=1256..1485}] run function ocarina_of_time:moving_things/lon_lon_ranch/horse_race/horse_race
execute as @e[type=armor_stand,tag=Racer] at @s if entity @a[tag=RaceGame,distance=..20] unless entity @s[tag=Win] unless entity @a[tag=Win] run function ocarina_of_time:moving_things/lon_lon_ranch/horse_race/horse_race
execute if entity @a[tag=RaceGame,tag=BeginIngoRace] run scoreboard players add @a MiniGameTime 1

#Music
execute if entity @a[scores={time=13200}] run function ocarina_of_time:music/lon_lon_ranch
execute if entity @a[scores={time=13200}] run function ocarina_of_time:moving_things/lon_lon_ranch/enemies
execute if entity @a[scores={time=13200}] run function ocarina_of_time:moving_things/lon_lon_ranch/animals_reset
execute if entity @a[scores={time=13200}] run tp @a 494 30 1267 0 0
execute if entity @a[scores={time=13200}] run time add 5
execute if entity @a[scores={time=23600}] run function ocarina_of_time:music/lon_lon_ranch
execute if entity @a[scores={time=23600}] run function ocarina_of_time:moving_things/lon_lon_ranch/enemies
execute if entity @a[scores={time=23600}] run function ocarina_of_time:moving_things/lon_lon_ranch/animals_reset
execute if entity @a[scores={time=23600}] run tp @a 494 30 1267 0 0
execute if entity @a[scores={time=23600}] run time add 5
execute if entity @a[scores={time=13001..23000}] run stopsound @a music minecraft:lon_lon_ranch

#Mill Hole
execute if entity @a[x=417,y=9,z=1395,dx=1,dy=1,dz=1] unless entity @a[tag=Adult] run fill 418 10 1395 418 10 1396 minecraft:birch_trapdoor[facing=east]
execute unless entity @a[x=417,y=9,z=1395,dx=1,dz=1] run fill 418 10 1395 418 10 1396 minecraft:air
execute if entity @a[x=414,y=9,z=1395,dx=1,dy=1,dz=1] unless entity @a[tag=Adult] run fill 414 10 1395 414 10 1396 minecraft:birch_trapdoor[facing=west]
execute unless entity @a[x=414,y=9,z=1395,dx=1,dz=1] run fill 414 10 1395 414 10 1396 minecraft:air

#Adult/Child
execute unless entity @a[x=469,y=24,z=1342,dx=0,dz=0] if entity @a[tag=Adult] run function ocarina_of_time:moving_things/lon_lon_ranch/adult
execute unless entity @a[x=469,y=24,z=1342,dx=0,dz=0] unless entity @a[tag=Adult] run function ocarina_of_time:moving_things/lon_lon_ranch/child

#Talon Returns
execute if entity @a[tag=TalonReturns] run fill 479 26 1291 479 26 1291 minecraft:gold_block

#Pots
execute as @e[type=area_effect_cloud,tag=Pots] run function ocarina_of_time:moving_things/lon_lon_ranch/pots

#Malon Minigame
execute as @e[type=armor_stand,tag=AdultMalon1] at @s if entity @a[tag=MalonMinigame] run function ocarina_of_time:moving_things/lon_lon_ranch/malon_minigame
execute unless entity @a[tag=RanchGame] unless entity @a[tag=HorseRanchGame] unless entity @a[tag=RaceGame] unless entity @a[tag=MalonMinigame] run scoreboard players set @a MiniGameTime 0

#Mountain Ring
execute unless entity @a[tag=Adult] run fill 695 103 1287 753 103 1229 minecraft:smooth_quartz replace minecraft:red_concrete
execute if entity @a[tag=Adult,tag=MountainRing] run fill 695 103 1287 753 103 1229 minecraft:smooth_quartz replace minecraft:red_concrete
execute if entity @a[tag=Adult] unless entity @a[tag=MountainRing] run fill 695 103 1287 753 103 1229 minecraft:red_concrete replace minecraft:smooth_quartz

#Guays
execute unless entity @a[scores={time=13001..23000}] run kill @e[type=zombie,tag=Guay]
