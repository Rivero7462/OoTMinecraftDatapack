effect give @a minecraft:saturation 1000000 100 true

#Items with scores
execute as @a[tag=HideDisplayScore] at @s if entity @s[nbt={SelectedItem:{tag:{CanDestroy:["minecraft:grass"]}}}] unless entity @s[tag=TimedRace] unless entity @s[tag=TimerRoom1] unless entity @s[tag=TimerRoom2] unless entity @s[tag=TimerRoom3] unless entity @s[tag=HorseArchery] unless entity @s[tag=Drowning] unless entity @s[tag=Heat] unless entity @s[tag=RaceGame] unless entity @s[tag=HorseRanchGame] unless entity @s[tag=MalonMinigame] unless entity @s[tag=ShootingGame] unless entity @s[tag=RanchGame] unless entity @s[tag=DivingGame] unless entity @e[type=armor_stand,tag=GreenPainting1,tag=Minigame] run scoreboard objectives setdisplay sidebar
execute as @a[tag=HideDisplayScore] at @s unless entity @s[nbt={SelectedItem:{tag:{CanDestroy:["minecraft:grass"]}}}] unless entity @s[nbt={SelectedItem:{tag:{MainHandItem:1b}}}] unless entity @s[tag=TimedRace] unless entity @s[tag=TimerRoom1] unless entity @s[tag=TimerRoom2] unless entity @s[tag=TimerRoom3] unless entity @s[tag=HorseArchery] unless entity @s[tag=Drowning] unless entity @s[tag=Heat] unless entity @s[tag=RaceGame] unless entity @s[tag=HorseRanchGame] unless entity @s[tag=MalonMinigame] unless entity @s[tag=ShootingGame] unless entity @s[tag=RanchGame] unless entity @s[tag=DivingGame] unless entity @e[type=armor_stand,tag=GreenPainting1,tag=Minigame] run scoreboard objectives setdisplay sidebar

execute if entity @a[tag=HideDisplayScore] run tag @a remove HideDisplayScore
execute if entity @a[tag=HotArea] unless entity @a[nbt={Inventory:[{Slot:102b,tag:{GoronTunic:1b}}]}] run tag @a add Heat
execute if entity @a[tag=HotArea] if entity @a[nbt={Inventory:[{Slot:102b,tag:{GoronTunic:1b}}]}] run tag @a remove Heat
execute unless entity @a[tag=HotArea] run tag @a remove Heat

#Item Pickups
execute as @a at @s if entity @s[nbt={Inventory:[{tag:{PickupItem:1b}}]}] run function ocarina_of_time:items/pickup_items/loop

#Selected Items
execute as @a[nbt={SelectedItem:{tag:{MainHandItem:1b}}}] at @s run function ocarina_of_time:items/main_hand_items/loop
execute if entity @a[nbt={Inventory:[{tag:{SwordHand:1b}}]}] unless entity @a[nbt={SelectedItem:{tag:{Hammer:1b}}}] unless entity @a[nbt={SelectedItem:{tag:{GiantKnife:1b}}}] unless entity @a[nbt={SelectedItem:{tag:{BiggoronSword:1b}}}] run function ocarina_of_time:items/main_hand_items/not_holding_big_weapon

#Silver Gauntlets
execute if entity @a[tag=SilverGauntlets] if entity @a[tag=Adult] unless entity @a[tag=HoldSilverRock] at @a run function ocarina_of_time:items/gauntlets/loop
execute as @a[tag=HoldSilverRock] at @s unless entity @e[type=zombie,tag=Rock] unless entity @e[type=chicken,tag=Cucco,tag=HoldingCucco] run function ocarina_of_time:items/gauntlets/hold
execute if entity @a[tag=HoldSilverRock] unless entity @e[type=armor_stand,tag=SilverRock] run tag @a remove HoldSilverRock

#Inventory Items
execute as @a[nbt={Inventory:[{tag:{InventoryItem:1b}}]}] at @s run function ocarina_of_time:items/inventory_items/loop

#Advancements
function ocarina_of_time:items/advancements/health

#Bombs
execute as @a if entity @a[nbt={Inventory:[{id:"minecraft:tnt"}]}] store result score @s BombCount run clear @s minecraft:tnt 0

#Bombchu
execute if entity @a[scores={BombchuCount=51..}] run scoreboard players set @s BombchuCount 50
execute as @a[scores={UseItem=1..}] at @s unless block ~ ~-.1 ~ minecraft:air unless entity @s[tag=BowlingGame] if entity @s[scores={BombchuCount=1..}] if entity @s[nbt={SelectedItem:{tag:{Bombchu:1b}}}] run function ocarina_of_time:items/bombchu/summon
execute as @a[scores={UseItem=1..}] at @s unless block ~ ~-.1 ~ minecraft:air if entity @s[tag=BowlingGame] if entity @s[scores={MinigameBombchus=1..}] if entity @s[nbt={SelectedItem:{tag:{Bombchu:1b}}}] run function ocarina_of_time:items/bombchu/summon

#Boomerang --------------------------------------Might have issues if two players use simultaneously--------------------------------------
execute as @a at @s if entity @s[scores={UseItem=1..}] if entity @s[scores={Boomerang=1..}] if entity @s[nbt={SelectedItem:{tag:{Boomerang:1b}}}] run tag @s add BoomerangMode
execute as @a[scores={Boomerang=1..}] at @s unless entity @s[nbt={SelectedItem:{tag:{Boomerang:1b}}}] run scoreboard players set @s Boomerang 0
execute as @a[scores={Boomerang=1..}] at @s unless entity @s[scores={UseItem=1..}] run scoreboard players set @s Boomerang 0
execute as @a at @s if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{Boomerang:1b}}}] run tag @s add ThrowBoomerang
execute as @a at @s if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{Boomerang:1b}}}] run summon armor_stand ~ ~-.8 ~ {Tags:["Boomerang"],Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,Damage:8}}],DisabledSlots:4144959,Pose:{Head:[90f,0f,0f]}}
execute as @a at @s if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{Boomerang:1b}}}] run summon armor_stand ~ ~ ~ {Tags:["BoomerangStart"],Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{}],DisabledSlots:4144959}

#Bottles
#Fairy
execute as @a at @s if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{BottledFairy:1b}}}] run function ocarina_of_time:items/bottled_items/fairy
#Bug
execute as @a at @s if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{BottledBug:1b}}}] run function ocarina_of_time:items/bottled_items/bug
execute as @e[type=turtle,tag=FakeBug,scores={timer=20..}] at @s if entity @a[distance=..1] run function ocarina_of_time:items/bottled_items/bug2
#Fish
execute as @a at @s if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{BottledFish:1b}}}] run function ocarina_of_time:items/bottled_items/fish
execute as @a[nbt={Inventory:[{tag:{Potion:"minecraft:water"}}]}] at @s run function ocarina_of_time:items/bottled_items/fish
#Milk
execute as @a at @s if entity @e[type=cow,distance=..3] if entity @s[tag=CowMilk] run function ocarina_of_time:items/bottled_items/milk
execute as @a at @s if entity @s[tag=CowMilk] run tag @s remove CowMilk
execute as @a at @s if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{BottledMilk:1b}}}] run function ocarina_of_time:items/bottled_items/milk
execute as @a at @s if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{BottledHalfMilk:1b}}}] run function ocarina_of_time:items/bottled_items/milk
#Poe Soul
execute as @a at @s if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{BottledPoe:1b}}}] run function ocarina_of_time:items/bottled_items/poe
#Red Potion
execute as @a at @s if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{RedPotion:1b}}}] run function ocarina_of_time:items/bottled_items/red_potion
#Green Potion
execute as @a at @s if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{GreenPotion:1b}}}] run function ocarina_of_time:items/bottled_items/green_potion
#Blue Potion
execute as @a at @s if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{BluePotion:1b}}}] run function ocarina_of_time:items/bottled_items/blue_potion
#Blue Fire
execute as @a at @s if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{BlueFire:1b}}}] rotated ~ 0 positioned ^ ^ ^1 run function ocarina_of_time:items/bottled_items/blue_fire

#Chest --------------------------------------Might still be bugged, but only in an extreme edge case--------------------------------------
execute if entity @a[scores={ChestJingle=1..}] at @a anchored eyes positioned ^ ^1.5 ^ anchored feet run function ocarina_of_time:items/chest/loop

#Claim Check
execute as @a[tag=ClaimCheckStart] at @s run function ocarina_of_time:items/claim_check

#Compass
execute as @a at @s if entity @s[scores={UseItem=1..}] if entity @s[nbt={SelectedItem:{tag:{Compass:1b}}}] run function ocarina_of_time:items/compass/loop

#Cucco Pocket
execute as @a[tag=PocketCucco] at @s if entity @s[nbt={Inventory:[{tag:{WeirdEgg:1b}}]}] run function ocarina_of_time:items/pocket_cucco

#Deku Stick
execute as @a[tag=BurnTime] at @s run function ocarina_of_time:items/deku_stick/deku_stick_2
execute if entity @a[tag=Adult] as @e[type=item,nbt={Item:{tag:{DekuStick:1b}}}] run kill @s

#Din's Fire
execute as @a[scores={UseItem=1..}] at @s if entity @s[nbt={SelectedItem:{tag:{DinFire:1b}}}] unless entity @s[level=3..] run tellraw @s ["",{"text":"Not enough "},{"text":"Magic","color":"green"},{"text":"!"}]
execute as @a[scores={UseItem=1..}] at @s if entity @s[nbt={SelectedItem:{tag:{DinFire:1b}}}] if entity @s[scores={SpiritMagic=1..}] run tellraw @s {"text":"Cannot use right now."}
execute as @a[scores={UseItem=1..}] at @s if entity @s[nbt={SelectedItem:{tag:{DinFire:1b}}}] if entity @s[level=3..] run tag @s add DinFire
execute as @a at @s if entity @s[tag=DinFire] run function ocarina_of_time:items/din_fire

#Dog --------------------------------------UNEDITED--------------------------------------
execute as @e[type=wolf,tag=PickupDog,tag=ThrowingCucco] run scoreboard players add @s timer 1
execute as @e[type=wolf,tag=PickupDog] unless entity @s[tag=ThrowingCucco] run scoreboard players set @s timer 0
execute as @e[type=wolf,tag=PickupDog] at @s unless entity @e[type=wolf,tag=PickupDog,tag=HoldingCucco] if entity @a[distance=..1] unless block ~ ~ ~ minecraft:ladder unless block ~ ~ ~ minecraft:water if entity @a[scores={time=13001..23000}] run tag @s add HoldingCucco
execute as @e[type=wolf,tag=PickupDog,tag=HoldingCucco] at @a if entity @a[scores={time=13001..23000}] run function ocarina_of_time:items/dog/dog
execute unless entity @e[type=chicken,tag=Cucco,tag=HoldingCucco] unless entity @e[type=wolf,tag=PickupDog,tag=HoldingCucco] run scoreboard objectives remove CrouchCucco

#Fairy Bow
execute as entity @a[scores={ArrowCount2=1..}] run tag @s remove EmptyBow

#Goron Tunic
execute as @a[gamemode=adventure] if entity @s[tag=HotArea] run function ocarina_of_time:items/goron_tunic
execute as @a if entity @s[tag=HotArea] if entity @s[nbt={Inventory:[{Slot:102b,tag:{GoronTunic:1b}}]}] run scoreboard players reset @p MiniGameTime
execute as @a unless entity @s[tag=HotArea] run scoreboard players reset @p FireTimer

#Half Damage
execute as entity @a[tag=HalfDamage] run effect give @s minecraft:resistance 1000000 1 true
execute as entity @a[tag=HalfDamage] run effect give @s minecraft:poison 1 0 true

#Heart
execute as @a at @s if entity @s[tag=HeartCoolDown] run function ocarina_of_time:items/hearts/heart

#Hookshot --------------------------------------NEEDS REWRITE--------------------------------------
execute as @a[scores={UseItem=1..}] at @s unless entity @a[tag=PlayingSong] if entity @s[nbt={FallDistance:0.0f,SelectedItem:{tag:{Hookshot:1b}}}] unless entity @s[tag=NoHookshot] unless entity @e[type=area_effect_cloud,tag=Hookshot] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["Hookshot"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @a[scores={UseItem=1..}] at @s unless entity @a[tag=PlayingSong] if entity @s[nbt={FallDistance:0.0f,Inventory:[{Slot:-106b,tag:{Hookshot:1b}}]}] unless entity @s[tag=NoHookshot] unless entity @e[type=area_effect_cloud,tag=Hookshot] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["Hookshot"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

#Hover Boots
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{HoverBoots:1b}}]}] run function ocarina_of_time:items/boots/hover_boots

#Iron Boots --------------------------------------NEEDS REWRITE--------------------------------------
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{IronBoots:1b}}]}] unless entity @e[type=area_effect_cloud,tag=Hookshot] run function ocarina_of_time:items/boots/iron_boots
execute unless entity @a[tag=NoIronBoots] unless entity @a[nbt={Inventory:[{Slot:100b,tag:{IronBoots:1b}}]}] run function ocarina_of_time:items/boots/no_iron_boots

#Lava Floor
execute as @a at @s if block ~ ~-.5 ~ minecraft:netherrack unless entity @s[tag=CoolDown] run tag @s add CoolDown
execute as @a at @s if entity @s[tag=CoolDown] run function ocarina_of_time:items/lava_floor

#Lens of Truth
execute as @a[scores={UseItem=1..}] at @s if entity @s[nbt={SelectedItem:{tag:{LensOfTruth1:1b}}}] run function ocarina_of_time:items/lens_of_truth/on
execute as @a[scores={UseItem=1..}] at @s if entity @s[nbt={SelectedItem:{tag:{LensOfTruth2:1b}}}] run function ocarina_of_time:items/lens_of_truth/off
execute as @a[tag=HoldLens] at @s unless entity @a[nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b}]}] run function ocarina_of_time:items/lens_of_truth/off_2
execute as @a[tag=HoldLens] at @s if entity @a[nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b}]}] run function ocarina_of_time:items/lens_of_truth/magic
execute as entity @a[tag=!HoldLens] if entity @s[nbt={Inventory:[{id:"minecraft:carved_pumpkin"}]}] run clear @s minecraft:carved_pumpkin{HoldLens:1b}

#Magic
kill @e[type=experience_orb]
experience set @a 0 points

#Mirror Shield
execute as entity @a[tag=Reflect] anchored eyes positioned ^ ^1 ^1 if entity @a[nbt={Inventory:[{Slot:-106b,tag:{MirrorShield:1b}}]}] run function ocarina_of_time:items/mirror_shield/mirror_shield
execute as entity @a[tag=Reflect] @a anchored eyes positioned ^ ^1 ^1 if entity @a[nbt={SelectedItem:{id:"minecraft:shield",tag:{MirrorShield:1b}}}] run function ocarina_of_time:items/mirror_shield/mirror_shield

#Navi
execute if entity @a[tag=NoNavi] run scoreboard players reset @a Navi
execute if entity @a[tag=NoNavi] run scoreboard players reset @a Navi2
execute if entity @a[tag=NoNavi] run scoreboard players reset @a Navi3
execute if entity @a[tag=NoNavi] run scoreboard players reset @a Navi4
execute if entity @a[tag=NoNavi] run scoreboard players reset @a Navi5
execute if entity @a[tag=NoNavi] run scoreboard players reset @a Navi6
execute if entity @a[tag=NoNavi] run kill @e[type=armor_stand,tag=HintNavi]
execute as @a at @s if entity @s[scores={Navi2=10..}] unless entity @s[tag=NoNavi] run function ocarina_of_time:items/navi/navi_scores
execute as @a at @s if entity @s[scores={Navi3=10..}] unless entity @s[tag=NoNavi] run function ocarina_of_time:items/navi/navi_scores
execute as @a at @s if entity @s[scores={Navi4=10..}] unless entity @s[tag=NoNavi] run function ocarina_of_time:items/navi/navi_scores
execute as @a at @s if entity @s[scores={Navi5=10..}] unless entity @s[tag=NoNavi] run function ocarina_of_time:items/navi/navi_scores
execute as @a at @s if entity @s[scores={Navi6=10..}] unless entity @s[tag=NoNavi] run function ocarina_of_time:items/navi/navi_scores
execute as @a at @s if entity @s[scores={Navi=1..}] unless entity @s[tag=NoNavi] run function ocarina_of_time:items/navi/navi_scores

#Nayu's Love
execute as @a[scores={UseItem=1..}] at @s if entity @s[nbt={SelectedItem:{tag:{NayruLove:1b}}}] unless entity @s[level=6..] run tellraw @s ["",{"text":"Not enough "},{"text":"Magic","color":"green"},{"text":"!"}]
execute as @a[scores={UseItem=1..}] at @s if entity @s[nbt={SelectedItem:{tag:{NayruLove:1b}}}] if entity @s[scores={SpiritMagic=1..}] run tellraw @s {"text":"Cannot use right now."}
execute as @a[scores={UseItem=1..}] at @s if entity @s[nbt={SelectedItem:{tag:{NayruLove:1b}}}] if entity @s[level=6..] run tag @s add NayruLove
execute as @a[tag=NayruLove] at @s run function ocarina_of_time:items/nayru_love

#Ocarinas
execute as @a at @s if entity @s[scores={UseItem=1..},tag=NoOcarina] if entity @s[nbt={SelectedItem:{tag:{OcarinaSaria:1b}}}] run tellraw @s {"text":"Cannot use ocarina here..."}
execute as @a at @s if entity @s[scores={UseItem=1..},tag=NoOcarina] if entity @s[nbt={SelectedItem:{tag:{OcarinaZelda:1b}}}] run tellraw @s {"text":"Cannot use ocarina here..."}
execute as @a[tag=NoOcarina,tag=PlayingSong] run function ocarina_of_time:items/ocarina/ocarina_3
execute as @a at @s if entity @s[tag=PlayingSong] run function ocarina_of_time:items/ocarina/ocarina_2
execute as @a at @s if entity @s[tag=PlayingSong] unless entity @s[nbt={FallDistance:0.0f}] run tellraw @s {"text":"Don't move or jump to use the ocarina."}
execute as @a at @s if entity @s[tag=PlayingSong] unless entity @s[nbt={FallDistance:0.0f}] run function ocarina_of_time:items/ocarina/ocarina_3
execute as @a at @s if entity @s[scores={Ocarina=1..}] run function ocarina_of_time:items/ocarina/ocarina_3
execute unless entity @a[tag=PlayingSong] run scoreboard objectives remove Ocarina

#Pants
replaceitem entity @a armor.legs minecraft:golden_leggings{Unbreakable:1b,display:{Name:"{\"text\":\" \"}"},Enchantments:[{id:depth_strider,lvl:2},{id:respiration,lvl:1},{id:binding_curse,lvl:1}],HideFlags:63}
kill @e[type=item,nbt={Item:{tag:{display:{Name:"{\"text\":\" \"}"}}}}]

#Player Health
execute as @a at @s if entity @s[scores={Hearts=0..17}] run function ocarina_of_time:items/player_health
execute if entity @a[scores={ResetHealth=1..}] run tag @a add ResetHealth
execute if entity @a[tag=ResetHealth] run scoreboard players add @a ResetHealth 1
execute if entity @a[scores={ResetHealth=2}] run attribute @p minecraft:generic.max_health base set 6
execute if entity @a[scores={ResetHealth=2}] run effect give @a minecraft:health_boost 1 0 true
execute if entity @a[scores={ResetHealth=2}] run effect clear @a minecraft:health_boost
execute if entity @a[scores={ResetHealth=2..}] run tag @a remove ResetHealth
execute if entity @a[scores={ResetHealth=2..}] run scoreboard players set @a ResetHealth 0

#Pegasus Boots
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{PegasusBoots:1b}}]}] run function ocarina_of_time:items/boots/pegasus_boots

#Push Blocks
execute as @a at @s if entity @s[scores={PushBlock=1..}] unless entity @s[x=917,y=88,z=877,dx=2,dz=2] unless entity @s[tag=InForestTemple] unless entity @s[tag=InFireTemple] unless entity @s[tag=InWaterTemple] unless entity @s[tag=InShadowTemple] run function ocarina_of_time:items/push_block/push_block
execute as @a at @s if entity @s[scores={PushBlock=1..}] run scoreboard players set @a PushBlock 0

#Rocks
execute as @a[tag=!HoldingRock] at @s unless entity @e[type=zombie,tag=Rock] unless entity @e[type=chicken,tag=Cucco,tag=HoldingCucco] run function ocarina_of_time:items/rocks/rock
execute if entity @a[tag=HoldingRock] unless entity @e[type=zombie,tag=Rock] run tag @a remove HoldingRock

#Shard of Agony
execute as entity @a[tag=ShardAgony] at @s run function ocarina_of_time:items/shard_of_agony

#Slingshot
execute if entity @a[scores={DekuSeeds2=1..}] run tag @a remove EmptySlingshot

#Zora Scale
execute as @a at @s if entity @s[tag=SwimUp] run function ocarina_of_time:items/zora_scale

#Zora Tunic
execute as @a if entity @s[nbt={Inventory:[{Slot:102b,Count:1b,tag:{ZoraTunic:1b}}]}] run gamerule drowningDamage false
#execute as @a unless entity @s[nbt={Inventory:[{Slot:102b,Count:1b,tag:{ZoraTunic:1b}}]}] run gamerule drowningDamage true
execute as @a at @s if block ~ ~1.4 ~ minecraft:water store result score @s Drowning run data get entity @s Air
execute as @a at @s if block ~ ~1.4 ~ minecraft:water unless entity @s[nbt={Inventory:[{Slot:102b,Count:1b,tag:{ZoraTunic:1b}}]}] run tag @a add Drowning
execute if entity @p[tag=Drowning] run scoreboard objectives setdisplay sidebar Drowning
execute if entity @p[tag=Drowning] run tag @a add HideDisplayScore

execute as @a at @s if block ~ ~1.4 ~ minecraft:water if entity @s[nbt={Inventory:[{Slot:102b,Count:1b,tag:{ZoraTunic:1b}}]}] run tag @a remove Drowning
execute as @a at @s unless block ~ ~1.4 ~ minecraft:water run tag @a remove Drowning

#Use Item Reset
execute as @a[scores={UseItem=1..}] run scoreboard players set @s UseItem 0
