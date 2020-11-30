#Area effect clouds
kill @e[type=area_effect_cloud,tag=Scared]
kill @e[type=area_effect_cloud,tag=FireEye]
kill @e[type=area_effect_cloud,tag=DekuScrubReturn]
kill @e[type=area_effect_cloud,tag=Guay]
kill @e[type=area_effect_cloud,tag=AnubisFire]
kill @e[type=area_effect_cloud,tag=WallSkullReset]
kill @e[type=area_effect_cloud,tag=ArmosReset]
kill @e[type=area_effect_cloud,tag=FreezardReset]
kill @e[type=area_effect_cloud,tag=BigFairy]
kill @e[type=area_effect_cloud,tag=LungeBabaReset]

#Armor Stand Enemies
kill @e[type=armor_stand,tag=Bomb]
kill @e[type=armor_stand,tag=Guard2]
kill @e[type=armor_stand,tag=Guard1]
kill @e[type=armor_stand,tag=HintNavi]
kill @e[type=armor_stand,tag=GreenNavi]
kill @e[type=armor_stand,tag=SpecialPeahat]
kill @e[type=armor_stand,tag=Poe]
kill @e[type=armor_stand,tag=SmallBigPoe]
kill @e[type=armor_stand,tag=BigPoe]
kill @e[type=armor_stand,tag=Flat]
kill @e[type=armor_stand,tag=Sharp]
kill @e[type=armor_stand,tag=PhantomGuide]
kill @e[type=armor_stand,tag=Rock]
kill @e[type=armor_stand,tag=LarvaEgg]
kill @e[type=armor_stand,tag=FinalRoll]
kill @e[type=armor_stand,tag=SkullTorch]
kill @e[type=armor_stand,tag=IceBladeTrap]
kill @e[type=armor_stand,tag=ScytheBladeTrap]
kill @e[type=armor_stand,tag=Guillotine]
kill @e[type=armor_stand,tag=Stalfos]
kill @e[type=armor_stand,tag=BladeTrap]
kill @e[type=armor_stand,tag=Boat]
kill @e[type=armor_stand,tag=SkullPot]
kill @e[type=armor_stand,tag=GerudoGuard]
kill @e[type=armor_stand,tag=GerudoThief]
kill @e[type=armor_stand,tag=GerudoFriend]
kill @e[type=armor_stand,tag=Leever]
kill @e[type=armor_stand,tag=OwlStand12]
kill @e[type=armor_stand,tag=IronKnuckle]
kill @e[type=armor_stand,tag=NabooruKnuckle]
kill @e[type=armor_stand,tag=Icicle]
kill @e[type=armor_stand,tag=CuccoFloat]
kill @e[type=armor_stand,tag=ScarecrowSpot]
kill @e[type=armor_stand,tag=BusinessScrub]
kill @e[type=armor_stand,tag=GossipStone]
kill @e[type=armor_stand,tag=FishingCap]
kill @e[type=armor_stand,tag=StalfosShield]
kill @e[type=armor_stand,tag=RunningMan]
kill @e[type=armor_stand,tag=SlowFireWall]

#Zombie Enemies
execute as @e[type=zombie,tag=GerudoThief] at @s run data merge entity @s {DeathLootTable:"ocarina_of_time:entities/nothing"}
execute as @e[type=zombie,tag=GerudoThief] at @s run tp @s ~ ~-10 ~
kill @e[type=zombie,tag=GerudoThief]
execute as @e[type=zombie,tag=GerudoGuard] at @s run tp @s ~ ~-10 ~
kill @e[type=zombie,tag=GerudoGuard]
execute as @e[type=zombie,tag=Stalfos] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=Stalfos]
execute as @e[type=zombie,tag=Peahat] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=Peahat]
execute as @e[type=zombie,tag=SpecialPeahat] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=SpecialPeahat]
execute as @e[type=zombie,tag=Stalchild] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=Stalchild]
execute as @e[type=wither_skeleton,tag=Stalchild] at @s run tp @s ~ ~-5 ~
kill @e[type=wither_skeleton,tag=Stalchild]
execute as @e[type=zombie,tag=Poe] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=Poe]
execute as @e[type=zombie,tag=SmallBigPoe] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=SmallBigPoe]
execute as @e[type=zombie,tag=BigPoe] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=BigPoe]
execute as @e[type=zombie,tag=Flat] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=Flat]
execute as @e[type=zombie,tag=Sharp] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=Sharp]
execute as @e[type=zombie,tag=Tektite] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=Tektite]
execute as @e[type=zombie,tag=WallSkull] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=WallSkull]
execute as @e[type=zombie,tag=Skulltula] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=Skulltula]
execute as @e[type=zombie,tag=LikeLike] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=LikeLike]
execute as @e[type=zombie,tag=TorchSlug] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=TorchSlug]
execute as @e[type=zombie,tag=DoorMimic,tag=!SpecialMimic] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=DoorMimic,tag=!SpecialMimic]
execute as @e[type=zombie,tag=RedBubble] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=RedBubble]
execute as @e[type=zombie,tag=LungeBaba] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=LungeBaba]
execute as @e[type=zombie,tag=Beamos] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=Beamos]
execute as @e[type=zombie,tag=BabyDodongo] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=BabyDodongo]
execute as @e[type=zombie,tag=Dodongo] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=Dodongo]
execute as @e[type=zombie,tag=Armos] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=Armos]
execute as @e[type=zombie,tag=Wolfos] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=Wolfos]
execute as @e[type=zombie,tag=BlueBubble] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=BlueBubble]
execute as @e[type=zombie,tag=GreenBubble] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=GreenBubble]
execute as @e[type=zombie,tag=Wallmaster] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=Wallmaster]
execute as @e[type=zombie,tag=Floormaster] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=Floormaster]
execute as @e[type=zombie,tag=Tinymaster] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=Tinymaster]
execute as @e[type=zombie,tag=Octorok] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=Octorok]
execute as @e[type=zombie,tag=Shabom] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=Shabom]
execute as @e[type=zombie,tag=Biri] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=Biri]
execute as @e[type=zombie,tag=Bari] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=Bari]
execute as @e[type=zombie,tag=Tailpasaran] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=Tailpasaran]
execute as @e[type=zombie,tag=Stinger] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=Stinger]
execute as @e[type=zombie,tag=DekuScrub] at @s unless entity @s[tag=DekuScrub1] unless entity @s[tag=DekuScrub2] unless entity @s[tag=SpecialScrub] run tp @s ~ ~-5 ~
execute as @e[type=zombie,tag=DekuScrub] unless entity @s[tag=DekuScrub1] unless entity @s[tag=DekuScrub2] unless entity @s[tag=SpecialScrub] run kill @s
execute as @e[type=zombie,tag=EvilSkullKid] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=EvilSkullKid]
execute as @e[type=zombie,tag=StageScrub] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=StageScrub]
execute as @e[type=zombie,tag=Spike] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=Spike]
execute as @e[type=zombie,tag=ShellBlade] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=ShellBlade]
execute as @e[type=zombie,tag=OtherStinger] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=OtherStinger]
execute as @e[type=zombie,tag=EyeFire] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=EyeFire]
execute as @e[type=zombie,tag=FlareDancer] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=FlareDancer]
execute as @e[type=zombie,tag=Dinolfos] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=Dinolfos]
execute as @e[type=zombie,tag=Leever] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=Leever]
execute as @e[type=zombie,tag=Rock] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=Rock]
execute as @e[type=zombie,tag=Guay] at @s run tp @s ~ 5 ~
kill @e[type=zombie,tag=Guay]
execute as @e[type=zombie,tag=Anubis] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=Anubis]
execute as @e[type=zombie,tag=FlyingPot] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=FlyingPot]
execute as @e[type=zombie,tag=IronKnuckle] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=IronKnuckle]
execute as @e[type=zombie,tag=WhiteBubble] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=WhiteBubble]
execute as @e[type=zombie,tag=NabooruKnuckle] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=NabooruKnuckle]
execute as @e[type=zombie,tag=Freezard] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=Freezard]
execute as @e[type=zombie,tag=EnergyBall] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=EnergyBall]

#Npc's
kill @e[type=armor_stand,tag=Carpenter]
kill @e[type=armor_stand,tag=GraveyardBoy]
kill @e[type=armor_stand,tag=Dampe]
kill @e[type=armor_stand,tag=OwlFly]
kill @e[type=armor_stand,tag=Goron2]
kill @e[type=armor_stand,tag=Goron11]
kill @e[type=armor_stand,tag=Goron12]
kill @e[type=armor_stand,tag=GirlChasingCucco]
kill @e[type=armor_stand,tag=Guard]

#Other
kill @e[type=item,nbt={Item:{tag:{Fairy:1b}}}]
kill @e[type=item,x=1524,y=47,z=1962,dx=4,dz=1]
kill @e[type=item,x=870,y=59,z=1394,dx=4,dz=1]
execute as @e[type=silverfish,tag=FireWall] at @s run tp @s ~ ~-5 ~
kill @e[type=silverfish,tag=FireWall]
execute as @e[type=wither_skeleton,tag=FlareDancer] at @s run tp @s ~ ~-5 ~
kill @e[type=wither_skeleton,tag=FlareDancer]
execute as @e[type=bat,tag=Keese] at @s run tp @s ~ 4 ~
kill @e[type=bat,tag=Keese]
execute as @e[type=wither_skeleton,tag=Redead] at @s run tp @s ~ ~-5 ~
kill @e[type=wither_skeleton,tag=Redead]
execute as @e[type=wither_skeleton,tag=Gibdo] at @s run tp @s ~ ~-5 ~
kill @e[type=wither_skeleton,tag=Gibdo]
execute as @e[type=wither_skeleton,tag=Moblin] at @s run tp @s ~ ~-5 ~
kill @e[type=wither_skeleton,tag=Moblin]
execute as @e[type=wither_skeleton,tag=ClubMoblin] at @s run tp @s ~ ~-5 ~
kill @e[type=wither_skeleton,tag=ClubMoblin]
execute as @e[type=cod] at @s run tp @s ~ ~-5 ~
kill @e[type=cod]
execute as @e[type=turtle,tag=FakeBug] at @s run tp @s ~ ~-5 ~
kill @e[type=turtle,tag=FakeBug]
execute as @e[type=chicken,tag=Cucco] at @s run tp @s ~ ~-3 ~
kill @e[type=chicken,tag=Cucco]
execute as @e[type=chicken,tag=CastleCucco] at @s run tp @s ~ ~-5 ~
kill @e[type=chicken,tag=CastleCucco]
execute as @e[type=wolf,tag=FakeDog] at @s run tp @s ~ ~-5 ~
kill @e[type=wolf,tag=FakeDog]
execute as @e[type=horse,tag=RanchHorse] at @s run tp @s ~ ~-5 ~
kill @e[type=horse,tag=RanchHorse]
execute as @e[type=wolf,tag=Richard] at @s run tp @s ~ ~-5 ~
kill @e[type=wolf,tag=Richard]
kill @e[type=item,nbt={Item:{tag:{FishingRod:1b}}}]
execute as @e[type=villager,tag=ScrubShop] at @s run tp @s ~ ~-5 ~
kill @e[type=villager,tag=ScrubShop]

#Minibosses
tag @e[type=area_effect_cloud,tag=MiniBossPlatform,tag=Version1] remove Version1
kill @e[tag=BigOcto]

#Bosses
kill @e[type=zombie,tag=Gohma]
kill @e[type=area_effect_cloud,tag=GohmaSpot]
kill @e[tag=KingDodongo]
kill @e[tag=Barinade]
kill @e[tag=PhantomHorse]
kill @e[tag=PhantomGanon]
kill @e[type=armor_stand,tag=BackPainting]
kill @e[type=armor_stand,tag=RealPainting]
kill @e[tag=Volvagia]
kill @e[type=armor_stand,tag=DragonFollow]
kill @e[type=area_effect_cloud,tag=DragonFloor]
kill @e[tag=Morpha]
kill @e[tag=BongoBongo]
kill @e[tag=Twinrova]
kill @e[type=zombie,tag=Ganondorf]
execute as @e[type=armor_stand,tag=GanonBody] unless entity @s[tag=Halfway] unless entity @a[nbt={Inventory:[{tag:{MasterSword:1b}}]}] unless entity @e[type=item,nbt={Item:{tag:{MasterSword:1b}}}] run give @a minecraft:diamond_sword{display:{Name:"\"Master Sword\""},HideFlags:63,Unbreakable:1,CanDestroy:["minecraft:grass","minecraft:oak_sign","minecraft:fern","minecraft:flower_pot"]}
kill @e[tag=Ganon]
