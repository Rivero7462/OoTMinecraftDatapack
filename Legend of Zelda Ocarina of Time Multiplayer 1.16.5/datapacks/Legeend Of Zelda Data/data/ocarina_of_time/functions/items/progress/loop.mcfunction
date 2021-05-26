#Bombs
function ocarina_of_time:items/progress/bomb_obtained
execute if entity @a[scores={BombCount=21..}] run function ocarina_of_time:items/progress/bomb_upgrade

#Goron Bracelet
execute if entity @s[tag=GoronBracelet] as @a at @s if entity @s[tag=!Holding] unless entity @e[type=armor_stand,tag=Bomb] run function ocarina_of_time:items/goron_bracelet/summon

#Push Blocks
execute if entity @s[tag=!PushBlockTutorial2] at @a if block ~ ~ ~1 minecraft:pink_concrete_powder run tag @s add PushBlockTutorial1
execute if entity @s[tag=!PushBlockTutorial2] at @a if block ~ ~ ~-1 minecraft:pink_concrete_powder run tag @s add PushBlockTutorial1
execute if entity @s[tag=!PushBlockTutorial2] at @a if block ~1 ~ ~ minecraft:pink_concrete_powder run tag @s add PushBlockTutorial1
execute if entity @s[tag=!PushBlockTutorial2] at @a if block ~-1 ~ ~ minecraft:pink_concrete_powder run tag @s add PushBlockTutorial1
execute if entity @s[tag=PushBlockTutorial1] if entity @s[tag=!PushBlockTutorial2] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"Stand next to this ","color":"aqua"},{"text":"block "},{"text":"and grab hold of it with ","color":"aqua"},{"text":"crouch"},{"text":". While ","color":"aqua"},{"text":"crouching"},{"text":", you can push it.","color":"aqua"}]
execute if entity @s[tag=PushBlockTutorial1] run tag @s add PushBlockTutorial2

#Deku Stick
execute unless entity @s[tag=StickTutorial] if entity @a[nbt={Inventory:[{tag:{DekuStick:1b}}]}] run tellraw @a ["",{"text":"You got a "},{"text":"Deku Stick","color":"red"},{"text":"! This item can be used to "},{"text":"light torches","color":"red"},{"text":" when on fire! Simply right-click certain torches on fence posts to light your stick, then right-click and "},{"text":"empty fence","color":"red"},{"text":" post to "},{"text":"light ","color":"red"},{"text":"it!"}]
execute unless entity @s[tag=StickTutorial] if entity @a[nbt={Inventory:[{tag:{DekuStick:1b}}]}] run tag @s add StickTutorial
execute as @a store result score @s StickCount run clear @s stick{DekuStick:1b} 0
execute if entity @a[scores={StickCount=11..}] run function ocarina_of_time:items/progress/stick_upgrade

#Deku Nuts
execute unless entity @s[tag=DekuNutTutorial] if entity @a[nbt={Inventory:[{tag:{DekuNut:1b}}]}] run tellraw @a ["",{"text":"You got some "},{"text":"Deku Nuts","color":"red"},{"text":"! Right-click to throw one. It will flash and stun the enemy!"}]
execute unless entity @s[tag=DekuNutTutorial] if entity @a[nbt={Inventory:[{tag:{DekuNut:1b}}]}] run tag @s add DekuNutTutorial
execute if entity @a[scores={DekuNuts=21..}] run function ocarina_of_time:items/progress/nut_upgrade

#Slingshot
execute if entity @a[tag=InDekuTree] unless entity @s[tag=Slingshot] if entity @a[nbt={Inventory:[{tag:{Slingshot:1b}}]}] run tellraw @a ["",{"text":"You found the ","color":"white"},{"text":"Fairy Slingshot","color":"red"},{"text":"! Hold it to load a "},{"text":"Deku Seed","color":"red"},{"text":", aim, and release to fire."}]
execute if entity @a[tag=InDekuTree] unless entity @s[tag=Slingshot] if entity @a[nbt={Inventory:[{tag:{Slingshot:1b}}]}] run scoreboard players set @a DekuSeeds2 30
execute if entity @a[tag=InDekuTree] unless entity @s[tag=Slingshot] if entity @a[nbt={Inventory:[{tag:{Slingshot:1b}}]}] run tag @s add Slingshot
execute unless entity @s[tag=Slingshot] run kill @e[type=item,nbt={Item:{tag:{DekuSeedPickup:1b,Item:1b}}}]

execute as @a[tag=HoldingSlingshot] at @s run function ocarina_of_time:items/slingshot/holding
execute unless entity @s[tag=SlingshotHelp] run function ocarina_of_time:items/progress/slingshot_obtained
execute if entity @a[scores={DekuSeeds2=31..}] run function ocarina_of_time:items/progress/slingshot_upgrade

#Fairy Bow
execute unless entity @s[tag=FairyBow] run function ocarina_of_time:items/progress/fairy_bow_obtained
execute if entity @a[scores={ArrowCount2=31..}] run function ocarina_of_time:items/progress/fairy_bow_upgrade
execute if entity @s[tag=FairyBow] as @a[tag=!NoBow] at @s run function ocarina_of_time:items/fairy_bow/holding
#Help Text
execute unless entity @s[tag=FairyBowHelp] if entity @a[nbt={SelectedItem:{tag:{ArrowBow:1b}}}] unless entity @a[tag=EmptyBow] if entity @a[nbt={Inventory:[{Slot:-106b}]}] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:arrow",Count:1b}]}] run tellraw @a ["",{"text":"Navi:","color":"gold"},{"text":" The ","color":"aqua"},{"text":"Fairy Bow "},{"text":"can't be properly equipped if holding a ","color":"aqua"},{"text":"shield"},{"text":".","color":"aqua"}]
execute unless entity @s[tag=FairyBowHelp] if entity @a[nbt={SelectedItem:{tag:{ArrowBow:1b}}}] unless entity @a[tag=EmptyBow] if entity @a[nbt={Inventory:[{Slot:-106b}]}] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:arrow",Count:1b}]}] run tag @s add FairyBowHelp

#Fire Arrow
execute unless entity @s[tag=FireArrowHelp] if entity @a[nbt={Inventory:[{tag:{FireArrow:1b}}]}] run tellraw @a ["",{"text":"You got the ","color":"white"},{"text":"Fire Arrow","color":"red"},{"text":"! Any target it strikes will catch fire."}]
execute unless entity @s[tag=FireArrowHelp] if entity @a[nbt={Inventory:[{tag:{FireArrow:1b}}]}] run tag @s add FireArrowHelp

#Ice Arrow
execute unless entity @s[tag=IceArrowHelp] if entity @a[nbt={Inventory:[{tag:{IceArrow:1b}}]}] run tellraw @a ["",{"text":"You got the ","color":"white"},{"text":"Ice Arrow","color":"blue"},{"text":"! Any target it strikes will freeze. This magic arrow is granted only to those who complete the difficult training of the Gerudo, so use it with pride!"}]
execute unless entity @s[tag=IceArrowHelp] if entity @a[nbt={Inventory:[{tag:{IceArrow:1b}}]}] run tag @s add IceArrowHelp

#Magic
execute unless entity @s[tag=HalfMagic] unless entity @s[tag=FullMagic] run kill @e[type=item,nbt={Item:{tag:{SmallJar:1b,Item:1b}}}]
execute unless entity @s[tag=HalfMagic] unless entity @s[tag=FullMagic] run kill @e[type=item,nbt={Item:{tag:{BigJar:1b,Item:1b}}}]
execute unless entity @s[tag=HalfMagic] unless entity @s[tag=FullMagic] run experience set @a 0 levels
execute if entity @s[tag=HalfMagic] if entity @a[level=13..] run experience set @a 12 levels
execute if entity @s[tag=FullMagic] if entity @a[level=25..] run experience set @a 24 levels

#Boomerang
execute if entity @a[tag=InJabuJabu] unless entity @s[tag=GotBoomerang] if entity @a[nbt={Inventory:[{tag:{Boomerang:1b}}]}] run tellraw @a ["",{"text":"You found the "},{"text":"Boomerang","color":"red"},{"text":"! Right-click to throw it. You can even attack distant enemies with it! If you "},{"text":"crouch","color":"red"},{"text":", you can throw it straight ahead!"}]
execute if entity @a[tag=InJabuJabu] unless entity @s[tag=GotBoomerang] if entity @a[nbt={Inventory:[{tag:{Boomerang:1b}}]}] run tag @s add GotBoomerang

#Mirror Shield
execute if entity @a[tag=InDesertColossus] unless entity @s[tag=MirrorShield] if entity @a[nbt={Inventory:[{tag:{MirrorShield:1b}}]}] run tellraw @a ["",{"text":"You found the "},{"text":"Mirror Shield","color":"aqua"},{"text":"! The shield's polished surface can reflect light or energy."}]
execute if entity @a[tag=InDesertColossus] unless entity @s[tag=MirrorShield] if entity @a[nbt={Inventory:[{tag:{MirrorShield:1b}}]}] run tag @s add MirrorShield

#Zora Scales
execute at @a if block ~ ~3.5 ~ minecraft:water if block ~ ~1 ~ minecraft:water unless entity @s[tag=SilverScale] unless entity @s[tag=GoldenScale] unless entity @a[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] unless block ~ ~3.5 ~ minecraft:water[level=8] run tag @a add SwimUp
execute at @a if block ~ ~7.5 ~ minecraft:water if block ~ ~1 ~ minecraft:water if entity @s[tag=SilverScale] unless entity @s[tag=GoldenScale] unless entity @a[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] unless block ~ ~7.5 ~ minecraft:water[level=8] run tag @a add SwimUp
execute at @a if block ~ ~10.5 ~ minecraft:water if block ~ ~1 ~ minecraft:water if entity @s[tag=GoldenScale] unless entity @a[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] unless block ~ ~10.5 ~ minecraft:water[level=8] run tag @a add SwimUp
execute at @a if block ~ ~3.5 ~ minecraft:ladder[waterlogged=true] if block ~ ~1 ~ minecraft:ladder[waterlogged=true] unless entity @s[tag=SilverScale] unless entity @s[tag=GoldenScale] unless entity @a[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] unless block ~ ~3.5 ~ minecraft:water[level=8] run tag @a add SwimUp
execute at @a if block ~ ~7.5 ~ minecraft:ladder[waterlogged=true] if block ~ ~1 ~ minecraft:ladder[waterlogged=true] if entity @s[tag=SilverScale] unless entity @s[tag=GoldenScale] unless entity @a[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] unless block ~ ~7.5 ~ minecraft:water[level=8] run tag @a add SwimUp
execute at @a if block ~ ~10.5 ~ minecraft:ladder[waterlogged=true] if block ~ ~1 ~ minecraft:ladder[waterlogged=true] if entity @s[tag=GoldenScale] unless entity @a[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] unless block ~ ~10.5 ~ minecraft:water[level=8] run tag @a add SwimUp

#Farore's Wind
execute at @a if entity @a[scores={UseItem=1..}] unless entity @s[scores={timer=1..10}] if entity @a[nbt={SelectedItem:{tag:{FaroreWind:1b}}}] run function ocarina_of_time:items/farore_wind/loop
execute as @s[tag=TeleportCoolDown] run function ocarina_of_time:items/farore_wind/cool_down
execute unless entity @s[scores={timer=1..10}] as @e[type=armor_stand,tag=FaroreWind] unless score @s Xpos = @e[type=armor_stand,tag=Progress,limit=1] Xpos unless score @s Ypos = @e[type=armor_stand,tag=Progress,limit=1] Ypos unless score @s Zpos = @e[type=armor_stand,tag=Progress,limit=1] Zpos run kill @s

#Hookshot
execute if entity @a[tag=InKakarikoVillage] unless entity @s[tag=GotHookshot] if entity @a[nbt={Inventory:[{tag:{Hookshot:1b}}]}] run tellraw @a ["",{"text":"You found the ","color":"white"},{"text":"Hookshot","color":"red"},{"text":"! It's a spring-loaded chain that you can cast out to hook things. While holding, you can aim and right-click to fire. You can use it to drag distant items toward you, or you can use it to pull yourself toward something."}]
execute if entity @a[tag=InKakarikoVillage] unless entity @s[tag=GotHookshot] if entity @a[nbt={Inventory:[{tag:{Hookshot:1b}}]}] run tag @s add GotHookshot

#Longshot
execute if entity @a[tag=InWaterTemple] unless entity @s[tag=GotLongshot] if entity @a[nbt={Inventory:[{tag:{Longshot:1b}}]}] run tellraw @a ["",{"text":"You found the ","color":"white"},{"text":"Longshot","color":"red"},{"text":"! It's an upgraded Hookshot that extends ","color":"white"},{"text":"twice ","color":"red"},{"text":"as far!","color":"white"}]
execute if entity @a[tag=InWaterTemple] unless entity @s[tag=GotLongshot] if entity @a[nbt={Inventory:[{tag:{Longshot:1b}}]}] run clear @a minecraft:carrot_on_a_stick{Unbreakable:1b,Damage:11,HideFlags:63,Hookshot:1b}
execute if entity @a[tag=InWaterTemple] unless entity @s[tag=GotLongshot] if entity @a[nbt={Inventory:[{tag:{Longshot:1b}}]}] run kill @e[type=item,nbt={Item:{tag:{Hookshot:1b}}}]
execute if entity @a[tag=InWaterTemple] unless entity @s[tag=GotLongshot] if entity @a[nbt={Inventory:[{tag:{Longshot:1b}}]}] run tag @s add GotLongshot

#Megaton Hammer
execute if entity @a[tag=InFireTemple] unless entity @s[tag=GotHammer] if entity @a[nbt={Inventory:[{tag:{Hammer:1b}}]}] run tellraw @a ["",{"text":"You found the ","color":"white"},{"text":"Megaton Hammer","color":"red"},{"text":"! Use it to smash and break junk! It's so heavy, you need to use two hands to swing it."}]
execute if entity @a[tag=InFireTemple] unless entity @s[tag=GotHammer] if entity @a[nbt={Inventory:[{tag:{Hammer:1b}}]}] run tag @s add GotHammer
execute if entity @s[tag=GotHammer] if entity @s[nbt={ActiveEffects:[{Id:3b}]}] unless entity @a[nbt={SelectedItem:{tag:{Hammer:1b}}}] run effect clear @a minecraft:haste

#Giant's Knife
execute if entity @a[tag=InGoronCity] unless entity @s[tag=BiggoronSword] unless entity @s[tag=GiantKnifeHelp] if entity @a[nbt={Inventory:[{tag:{GiantKnife:1b}}]}] run tellraw @a ["",{"text":"You got the "},{"text":"Giant's Knife","color":"red"},{"text":"! Hold it with both hands, to attack! It's so long, you can't use it with a "},{"text":"shield","color":"aqua"},{"text":"."}]
execute if entity @a[tag=InGoronCity] unless entity @s[tag=BiggoronSword] unless entity @s[tag=GiantKnifeHelp] if entity @a[nbt={Inventory:[{tag:{GiantKnife:1b}}]}] run tag @s add GiantKnifeHelp

#Epona
execute if entity @s[tag=GotEpona] as @e[type=horse,tag=Epona] at @s run function ocarina_of_time:items/epona

#Iron Boots
execute if entity @a[tag=InIceCavern] unless entity @s[tag=IronBoots] if entity @a[nbt={Inventory:[{tag:{IronBoots:1b}}]}] run tellraw @a ["",{"text":"You got the ","color":"white"},{"text":"Iron Boots","color":"red"},{"text":"! So heavy, you can't run. So heavy, you can't float."}]
execute if entity @a[tag=InIceCavern] unless entity @s[tag=IronBoots] if entity @a[nbt={Inventory:[{tag:{IronBoots:1b}}]}] run tag @s add IronBoots
execute unless entity @s[tag=IronBootsHelp] if entity @a[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] at @a if block ~ ~ ~ minecraft:water run tellraw @a {"text":"For full effect don't sprint while underwater.","color":"white"}
execute unless entity @s[tag=IronBootsHelp] if entity @a[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] at @a if block ~ ~ ~ minecraft:water run tag @s add IronBootsHelp

#Compass Help
execute if entity @a[tag=InDungeon] unless entity @s[tag=CompassHelp] if entity @a[nbt={Inventory:[{tag:{Compass:1b}}]}] run tellraw @a ["",{"text":"You found the "},{"text":"Compass","color":"red"},{"text":"! Now you can see how many chests are left in the dungeon! Right-click to get the remaining chests.","color":"white"}]
execute if entity @a[tag=InDungeon] unless entity @s[tag=CompassHelp] if entity @a[nbt={Inventory:[{tag:{Compass:1b}}]}] run tag @s add CompassHelp

#Lens of Truth
execute if entity @a[tag=InWell] unless entity @s[tag=LensHelp] if entity @a[nbt={Inventory:[{tag:{LensOfTruth:1b}}]}] run tellraw @a ["",{"text":"You found the ","color":"white"},{"text":"Lens of Truth","color":"red"},{"text":"! Secret things lurk everywhere! Be sure to try to use it outside of the well. Seeing the truth will cost magic power, so right click it to start and stop using it.\n"},{"text":"Navi: ","color":"gold"},{"text":"Hmm, what could this be? Looks like a lens... I wonder if it lets you see things better... Anyway, this place is dank and creepy. Let's get out of here!","color":"aqua"}]
execute if entity @a[tag=InWell] unless entity @s[tag=LensHelp] if entity @a[nbt={Inventory:[{tag:{LensOfTruth:1b}}]}] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={lifetime=23..}] run scoreboard players set @s lifetime 23
execute if entity @a[tag=InWell] unless entity @s[tag=LensHelp] if entity @a[nbt={Inventory:[{tag:{LensOfTruth:1b}}]}] run tag @s add LensHelp

#Hover Boots
execute if entity @a[tag=InShadowTemple] unless entity @s[tag=HoverHelp] if entity @a[nbt={Inventory:[{tag:{HoverBoots:1b}}]}] run tellraw @a ["",{"text":"You got the ","color":"white"},{"text":"Hover Boots","color":"red"},{"text":"! With these mysterious boots, you can hover above the ground. The downside? No traction! You can even use these to walk for short periods where there is no solid ground. Be brave, and trust in the boots!"}]
execute if entity @a[tag=InShadowTemple] unless entity @s[tag=HoverHelp] if entity @a[nbt={Inventory:[{tag:{HoverBoots:1b}}]}] run tag @s add HoverHelp

#Medallions
execute unless entity @s[tag=AllMedallions] if entity @s[tag=GotForestMedallion] if entity @s[tag=GotFireMedallion] if entity @s[tag=GotWaterMedallion] if entity @s[tag=GotShadowMedallion] if entity @s[tag=GotSpiritMedallion] run tag @a add SagesAwaken
