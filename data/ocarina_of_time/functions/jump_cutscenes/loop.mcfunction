#/scoreboard players list @e[tag=OpeningCutscene,limit=1]
#Great Deku Tree Intro
execute if entity @a[tag=NotStarted] as @e[type=area_effect_cloud,tag=OpeningCutscene] at @s run function ocarina_of_time:jump_cutscenes/kokiri_forest/deku_tree_intro

#Secrets
execute unless block 927 5 -635 minecraft:mossy_cobblestone unless block 929 4 -636 minecraft:gold_block run tag @a add SecretStart
execute if entity @a[tag=SecretStart] as @e[type=armor_stand,tag=SecretGopher] run function ocarina_of_time:jump_cutscenes/kokiri_forest/secret_gopher

#Navi Wake Up
execute if entity @a[tag=MeetNavi] as @e[type=armor_stand,tag=Navi1] run function ocarina_of_time:jump_cutscenes/kokiri_forest/meet_navi

#Mido
execute if entity @a[tag=MeetMido,x=-546,y=65,z=-629,dx=1,dz=2] as @e[type=armor_stand,tag=Mido] run function ocarina_of_time:jump_cutscenes/kokiri_forest/meet_mido

#Mido Sword and Shield
execute if entity @a[tag=SwordShield,x=-546,y=65,z=-629,dx=1,dz=2] as @e[type=armor_stand,tag=Mido] run function ocarina_of_time:jump_cutscenes/kokiri_forest/meet_mido_2

#Meeting Deku Tree
execute if entity @a[tag=MeetDekuTree,x=-516,y=65,z=-644,dx=5,dy=2,dz=5] run function ocarina_of_time:jump_cutscenes/kokiri_forest/meet_deku_tree

#Deku Tree Dies
execute if entity @a[tag=DeadDekuTree,x=-516,y=65,z=-644,dx=6,dy=2,dz=5] run function ocarina_of_time:jump_cutscenes/kokiri_forest/deku_tree_dies
execute if entity @a[tag=DeadDekuTree2] run function ocarina_of_time:jump_cutscenes/kokiri_forest/deku_tree_dies

#Meet Mido After Deku Tree
execute if entity @a[tag=MidoDeadDekuTree,x=-540,y=65,z=-629,dx=0,dy=1,dz=2] as @e[type=armor_stand,tag=Mido] at @s run function ocarina_of_time:jump_cutscenes/kokiri_forest/mido_sees_deku_tree

#Saria Goodbye
execute if entity @a[tag=SariaGoodBye,x=-639,y=64,z=-628,dx=6,dy=4,dz=4] as @e[type=armor_stand,tag=Saria] at @s run function ocarina_of_time:jump_cutscenes/kokiri_forest/goodbye_saria

#Owl1
execute if entity @a[tag=Owl1,x=1064,y=67,z=2104,dx=7,dy=2,dz=0] as @e[type=area_effect_cloud,tag=FakeOwl] run function ocarina_of_time:jump_cutscenes/hyrule_field/owl1

#Owl2
execute if entity @a[tag=Owl2,x=1037,y=67,z=1920,dx=13,dy=2,dz=14] as @e[type=area_effect_cloud,tag=FakeOwl] run function ocarina_of_time:jump_cutscenes/hyrule_field/owl2

#Owl3
execute if entity @a[tag=Owl3,x=804,y=62,z=2069,dx=18,dy=3,dz=24] as @e[type=area_effect_cloud,tag=FakeOwl] run function ocarina_of_time:jump_cutscenes/hyrule_field/owl3

#Owl4
execute if entity @a[tag=Owl4,x=826,y=56,z=2194,dx=12,dy=5,dz=12] as @e[type=area_effect_cloud,tag=FakeOwl] run function ocarina_of_time:jump_cutscenes/hyrule_field/owl4

#Meet Malon
execute if entity @a[tag=MeetMalon,x=883,y=70,z=1420,dx=2,dy=3,dz=3] as @e[type=armor_stand,tag=Malon1] run function ocarina_of_time:jump_cutscenes/castle/meet_malon
execute if entity @a[tag=MeetMalon,x=899,y=75,z=944,dx=2,dy=3,dz=2] as @e[type=armor_stand,tag=Malon2] if entity @s[x=901,y=75,z=945,dx=0,dz=0] run function ocarina_of_time:jump_cutscenes/castle/meet_malon_other

#Owl5
execute if entity @a[tag=Owl5,x=893,y=76,z=947,dx=8,dy=2,dz=1] as @e[type=area_effect_cloud,tag=FakeOwl] run function ocarina_of_time:jump_cutscenes/castle/owl

#Owl 6 Zora River
execute if entity @a[tag=Owl6,x=1480,y=69,z=2329,dx=6,dy=1,dz=4] unless entity @a[tag=OwlSaria] if entity @e[type=armor_stand,tag=OwlStand6] run tag @a add ExtraOwl
execute if entity @a[tag=ExtraOwl,x=1480,y=69,z=2329,dx=6,dy=1,dz=4] as @e[type=area_effect_cloud,tag=FakeOwl] run function ocarina_of_time:jump_cutscenes/zora_river/owl6_extra
execute if entity @a[tag=OwlSaria,x=1480,y=69,z=2329,dx=6,dy=1,dz=4] as @e[type=area_effect_cloud,tag=FakeOwl] run function ocarina_of_time:jump_cutscenes/zora_river/owl6

#Owl 7 Death Mountain
execute at @e[type=armor_stand,tag=OwlStand9,scores={text=2}] if entity @a[distance=..3] run tag @a add MountainOwl
execute if entity @a[tag=MountainOwl] as @e[type=area_effect_cloud,tag=FakeOwl] run function ocarina_of_time:jump_cutscenes/death_mountain/owl

#Owl 8 Lake Hylia
execute at @e[type=armor_stand,tag=OwlStand10,scores={text=1}] if entity @a[distance=..3] unless entity @a[tag=Adult] run tag @a add LakeOwl
execute if entity @a[tag=LakeOwl] as @e[type=area_effect_cloud,tag=FakeOwl] run function ocarina_of_time:jump_cutscenes/lake_hylia/owl

#MeetMalon2
execute if entity @a[tag=MeetMalon2,x=899,y=75,z=944,dx=2,dy=3,dz=2] as @e[type=armor_stand,tag=Malon2,x=901,y=75,z=945,dx=0,dz=0] run function ocarina_of_time:jump_cutscenes/castle/meet_malon_2

#MeetTalon
execute if entity @a[tag=InCastleField,x=921,y=87,z=877,dx=1,dy=3,dz=3] if entity @a[nbt={Inventory:[{tag:{PocketCucco:1b}}]}] as @e[type=armor_stand,tag=Talon1] run function ocarina_of_time:jump_cutscenes/castle/meet_talon

#Meet Zelda
execute if entity @a[tag=MeetZelda,x=823,y=89,z=409,dx=2,dy=2,dz=2] as @e[type=armor_stand,tag=Zelda] run function ocarina_of_time:jump_cutscenes/castle/meet_zelda
execute if entity @a[tag=MeetZelda,x=827,y=61,z=398,dx=0,dy=1,dz=0] as @e[type=armor_stand,tag=Zelda] run function ocarina_of_time:jump_cutscenes/castle/meet_zelda

#Meet Impa
execute if entity @a[tag=MeetImpa,x=840,y=88,z=408,dx=8,dy=2,dz=4] as @e[type=armor_stand,tag=Impa] run function ocarina_of_time:jump_cutscenes/castle/meet_impa

#Meet Impa 2
execute if entity @a[tag=MeetImpa2,x=974,y=67,z=1927,dx=3,dy=2,dz=2] as @e[type=armor_stand,tag=Impa2] run function ocarina_of_time:jump_cutscenes/hyrule_field/meet_impa_2

#Sun Song 1
execute if entity @a[tag=InKakarikoVillage,x=1636,y=77,z=1948,dx=3,dz=3] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] unless block 1638 75 1949 minecraft:gold_block run tag @a add SunSong1
execute if entity @a[tag=SunSong1] run function ocarina_of_time:jump_cutscenes/kakariko_village/grave

#Sun Song 2
execute if entity @a[x=1554,y=51,z=1948,dx=1,dy=2,dz=3,tag=SunSong2] run function ocarina_of_time:jump_cutscenes/kakariko_village/suns_song

#Shield Discount
execute if entity @a[x=1518,y=78,z=1890,dx=8,dy=3,dz=5,tag=MeetKeatonGuard,nbt={Inventory:[{id:"minecraft:book",Count:1b,tag:{display:{Name:"{\"text\":\"Shield Discount\"}"}}}]}] as @e[type=armor_stand,tag=Guard30] run function ocarina_of_time:jump_cutscenes/kakariko_village/keaton_guard_1

#Masks
#Keaton
execute if entity @a[x=1518,y=78,z=1890,dx=8,dy=3,dz=5] if entity @e[type=armor_stand,tag=Guard30,tag=!CompleteMask] if entity @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{display:{Name:"\"Keaton Mask\""}}}]}] run tag @a add KeatonMask
execute if entity @a[tag=KeatonMask] as @e[type=armor_stand,tag=Guard30] run function ocarina_of_time:jump_cutscenes/kakariko_village/keaton_guard_2
#Skull
execute if entity @a[x=-614,y=77,z=-667,dx=1,dz=1] if entity @e[type=armor_stand,tag=SkullKid1,tag=!CompleteMask] if entity @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{display:{Name:"\"Skull Mask\""}}}]}] if entity @e[type=armor_stand,tag=Prize] run tag @a add SkullMask
execute if entity @a[tag=SkullMask] as @e[type=armor_stand,tag=SkullKid1] at @s run function ocarina_of_time:jump_cutscenes/kokiri_forest/skull_kid
#Spooky
execute if entity @a[tag=InKakarikoVillage] as @e[type=armor_stand,tag=GraveyardBoy,tag=!CompleteMask] at @s if entity @a[distance=..3] if entity @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{display:{Name:"\"Spooky Mask\""}}}]}] run tag @a add SpookyMask
execute if entity @a[tag=SpookyMask] as @e[type=armor_stand,tag=GraveyardBoy] at @s run function ocarina_of_time:jump_cutscenes/kakariko_village/spooky_mask
#Bunny
execute if entity @a[tag=InHyruleField,scores={time=13001..23000}] if entity @e[type=armor_stand,tag=RunningMan,tag=!CompleteMask] if entity @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{display:{Name:"\"Bunny Hood\""}}}]}] at @a if entity @e[type=armor_stand,tag=RunningMan,distance=..3] run tag @a add BunnyHood
execute if entity @a[tag=BunnyHood] as @e[type=armor_stand,tag=RunningMan] at @s run function ocarina_of_time:jump_cutscenes/hyrule_field/bunny_hood
#Mask Salesman
execute if entity @a[x=891,y=51,z=1393,dx=8,dy=1,dz=6] if entity @e[type=armor_stand,tag=MaskSalesman,tag=!CompleteMask] if entity @a[nbt={Inventory:[{id:"minecraft:player_head",tag:{display:{Name:"\"Mask of Truth\""}}}]}] as @e[type=armor_stand,tag=MaskSalesman] at @s unless entity @s[tag=Prize] run tag @a add TruthMask
execute if entity @a[tag=TruthMask] as @e[type=armor_stand,tag=MaskSalesman] at @s run function ocarina_of_time:jump_cutscenes/castle/mask_salesman

#Darunia
execute if entity @a[tag=MeetDarunia,x=2180,y=60,z=1793,dx=3,dy=2,dz=3] as @e[type=armor_stand,tag=Darunia] run function ocarina_of_time:jump_cutscenes/goron_city/darunia

#Seeds Upgrade
execute if entity @a[tag=SeedUpgrade] as @e[type=zombie,tag=DekuScrubSeeds] at @s run function ocarina_of_time:jump_cutscenes/kokiri_forest/seed_upgrade

#Lost Woods Owl 1
execute if entity @a[tag=LostWoodsOwl,x=-578,y=75,z=-686,dx=6,dy=2,dz=4] as @e[type=area_effect_cloud,tag=FakeOwl] run function ocarina_of_time:jump_cutscenes/kokiri_forest/owl_1

#Learn Saria's Song
execute if entity @a[tag=LearnSariaOcarina,x=-575,y=83,z=-819,dx=6,dy=2,dz=5] as @e[type=armor_stand,tag=Saria2] run function ocarina_of_time:jump_cutscenes/kokiri_forest/saria_lost_woods

#Lost Woods Owl 2
execute if entity @a[tag=LostWoodsOwl2,x=-579,y=75,z=-718,dx=8,dy=2,dz=3] as @e[type=area_effect_cloud,tag=FakeOwl] run function ocarina_of_time:jump_cutscenes/kokiri_forest/owl_2

#Darunia 2
execute if entity @a[tag=InGoronCity,x=2180,y=60,z=1793,dx=3,dy=2,dz=3] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_cat",Count:1b}]}] unless entity @a[tag=MeetDarunia] unless entity @a[tag=DaruniaStart] as @e[type=armor_stand,tag=Darunia] run tag @a add StartDaruniaDance
execute if entity @a[tag=InGoronCity,tag=StartDaruniaDance] as @e[type=armor_stand,tag=Darunia] at @s run function ocarina_of_time:jump_cutscenes/goron_city/darunia_dance
execute if entity @a[tag=InGoronCity,tag=DaruniaStart] as @e[type=armor_stand,tag=Darunia] run function ocarina_of_time:jump_cutscenes/goron_city/darunia_2

#Lon Lon Ranch
execute unless entity @a[tag=Adult] if entity @a[tag=MeetEpona,x=466,y=30,z=1349,dx=4,dy=2,dz=4] as @e[type=armor_stand,tag=Malon3] run function ocarina_of_time:jump_cutscenes/lon_lon_ranch/malon1
execute unless entity @a[tag=Adult] if entity @a[tag=MeetEpona2,nbt={SelectedItem:{tag:{OcarinaSaria:1b}}},x=466,y=30,z=1349,dx=4,dy=2,dz=4] run tag @a add MeetEpona2Start
execute unless entity @a[tag=Adult] if entity @a[tag=MeetEpona2,nbt={SelectedItem:{tag:{OcarinaZelda:1b}}},x=466,y=30,z=1349,dx=4,dy=2,dz=4] run tag @a add MeetEpona2Start
execute unless entity @a[tag=Adult] if entity @a[tag=MeetEpona2Start] as @e[type=armor_stand,tag=Malon3] run function ocarina_of_time:jump_cutscenes/lon_lon_ranch/malon2
execute unless entity @a[tag=Adult] if entity @a[x=430,y=6,z=1361,dx=3,dy=2,dz=1] if block 423 3 1362 minecraft:gold_block unless entity @a[scores={time=13001..23000}] as @e[type=armor_stand,tag=Talon2,tag=CuccoMinigame] run function ocarina_of_time:jump_cutscenes/lon_lon_ranch/talon_minigame
#Win Cucco Game
execute if entity @a[tag=WinTalonGame] as @e[type=armor_stand,tag=Talon2] unless entity @s[tag=Prize] run function ocarina_of_time:jump_cutscenes/lon_lon_ranch/win_talon_minigame

#Spiritual Stone Of Fire
execute if entity @a[tag=InDeathMountain,tag=FireStone] as @e[type=armor_stand,tag=Darunia2] at @s run function ocarina_of_time:jump_cutscenes/death_mountain/fire_stone

#Diving Tutorial
execute unless block 1759 53 2303 minecraft:gold_block if entity @a[nbt={Inventory:[{tag:{DivingGame:1b}}]}] run tag @a add DivingTutorial
execute if entity @a[tag=DivingTutorial] as @e[type=armor_stand,tag=Zora7] run function ocarina_of_time:jump_cutscenes/zora_domain/diving_game

#King Zora
execute if entity @a[tag=MeetKingZora] as @e[type=armor_stand,tag=FakeKingZora] run function ocarina_of_time:jump_cutscenes/zora_domain/king_zora

#Jabu Jabu
execute if entity @a[tag=MeetJabuJabu] if entity @e[type=cod,tag=Bottled,x=1388,y=55,z=1287,dx=7,dz=8] run tag @a add MeetJabuJabu2
execute if entity @a[tag=MeetJabuJabu2] as @e[type=area_effect_cloud,tag=JabuJabu] run function ocarina_of_time:jump_cutscenes/zora_fountain/jabu_jabu

#Meet Ruto
execute if entity @a[tag=MeetRuto,x=1683,y=53,z=1292,dx=1,dy=1,dz=4] as @e[type=armor_stand,tag=Ruto1] run function ocarina_of_time:jump_cutscenes/jabu_jabu/ruto

#Ruto 2
execute if entity @a[tag=MeetRuto2,x=1695,y=23,z=1298,dx=4,dy=1,dz=4] as @e[type=armor_stand,tag=Ruto1] run function ocarina_of_time:jump_cutscenes/jabu_jabu/ruto_2

#Ruto 3
execute if block 1698 23 1271 minecraft:gold_block if entity @e[type=armor_stand,tag=Ruto1,x=1693,y=26,z=1256,dx=10,dz=10] run tag @a add MeetRuto3
execute if entity @a[tag=MeetRuto3] as @e[type=armor_stand,tag=Ruto1] at @s run function ocarina_of_time:jump_cutscenes/jabu_jabu/ruto_3

#Ruto 4 I know how to spell sapphire now but I'm too lazy to change it
execute if entity @a[tag=RutoSaphire,x=1391,y=53,z=1338,dx=0,dz=0] run tag @a add RutoSaphire2
execute if entity @a[tag=RutoSaphire2] as @e[type=armor_stand,tag=Ruto2] at @s run function ocarina_of_time:jump_cutscenes/zora_fountain/ruto_saphire

#Zelda Runs Away
execute if entity @a[tag=ZeldaCastle,x=963,y=64,z=1910,dx=21,dy=3,dz=21] run tag @a add ZeldaCastle2
execute if entity @a[tag=ZeldaCastle2] as @e[type=armor_stand,tag=Ganondorf2] at @s run function ocarina_of_time:jump_cutscenes/hyrule_field/zelda

#Zelda's Ocarina
execute if entity @a[tag=NewOcarina] if entity @a[nbt={Inventory:[{tag:{OcarinaZelda:1b}}]}] run tag @a add NewOcarina2
execute if entity @a[tag=NewOcarina2] as @e[type=armor_stand,tag=Zelda2] at @s run function ocarina_of_time:jump_cutscenes/hyrule_field/zelda_2

#Dead Guard
execute if entity @a[tag=InCastleTown] as @e[type=armor_stand,tag=DeadGuard] at @s unless entity @s[scores={text=1}] if entity @a[distance=..2] run tag @a add SecretCutscene
execute if entity @a[tag=SecretCutscene] as @e[type=armor_stand,tag=DeadGuard] at @s run function ocarina_of_time:jump_cutscenes/castle/dead_guard

#Gate of Time
execute unless block 957 6 1394 minecraft:gold_block if entity @a[x=950,y=8,z=1392,dx=3,dz=3] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_wait",Count:1b}]}] run tag @a add GateOfTime
execute as @a at @s if entity @s[tag=GateOfTime] run function ocarina_of_time:jump_cutscenes/castle/gate_of_time

#Master Sword
execute if entity @a[tag=MasterSword] as @e[type=armor_stand,tag=Rauru] run function ocarina_of_time:jump_cutscenes/castle/master_sword

#Sheik
execute if entity @a[tag=MeetSheik,x=987,y=11,z=1394,dx=0,dz=0] run tag @a add MeetSheik2
execute if entity @a[tag=MeetSheik2] as @e[type=armor_stand,tag=Sheik1] run function ocarina_of_time:jump_cutscenes/castle/meet_sheik

#Dampe
execute if entity @a[tag=InKakarikoVillage,x=1652,y=38,z=1944,dx=1,dy=3,dz=13] unless entity @a[tag=DampeRace] run tag @a add DampeRace
execute if entity @a[tag=DampeRace] as @e[type=armor_stand,tag=Dampe2] at @s run function ocarina_of_time:jump_cutscenes/kakariko_village/dampe_race

#Fairies
#1
execute if entity @a[tag=InDeathMountain,x=2027,y=127,z=1312,dx=2,dz=2] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] as @e[type=armor_stand,tag=GreatFairy1] run tag @a add GreatFairy1
execute if entity @a[tag=GreatFairy1] as @e[type=armor_stand,tag=GreatFairy1] at @s run function ocarina_of_time:jump_cutscenes/death_mountain/great_fairy
#2
execute if entity @a[tag=InCastleField,x=946,y=72,z=969,dx=2,dz=2] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] if entity @e[type=area_effect_cloud,tag=Progress,tag=HalfMagic] run tag @a add GreatFairy2
execute if entity @a[tag=InCastleField,x=946,y=72,z=969,dx=2,dz=2] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] if entity @e[type=area_effect_cloud,tag=Progress,tag=FullMagic] run tag @a add GreatFairy2
execute if entity @a[tag=GreatFairy2] as @e[type=armor_stand,tag=GreatFairy2] at @s run function ocarina_of_time:jump_cutscenes/castle/great_fairy
#3
execute if entity @a[tag=InZoraFountain,x=1450,y=54,z=1391,dx=2,dz=2] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] if entity @e[type=area_effect_cloud,tag=Progress,tag=HalfMagic] run tag @a add GreatFairy3
execute if entity @a[tag=InZoraFountain,x=1450,y=54,z=1391,dx=2,dz=2] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] if entity @e[type=area_effect_cloud,tag=Progress,tag=FullMagic] run tag @a add GreatFairy3
execute if entity @a[tag=GreatFairy3] as @e[type=armor_stand,tag=GreatFairy3] at @s run function ocarina_of_time:jump_cutscenes/jabu_jabu/great_fairy
#4
execute if entity @a[tag=InDeathCrater,x=2722,y=43,z=2016,dx=2,dz=2] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] if entity @e[type=area_effect_cloud,tag=Progress,tag=HalfMagic] run tag @a add GreatFairy4
execute if entity @a[tag=InDeathCrater,x=2722,y=43,z=2016,dx=2,dz=2] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] if entity @e[type=area_effect_cloud,tag=Progress,tag=FullMagic] run tag @a add GreatFairy4
execute if entity @a[tag=GreatFairy4] as @e[type=armor_stand,tag=GreatFairy4] at @s run function ocarina_of_time:jump_cutscenes/death_mountain/great_fairy_2
#5
execute if entity @a[tag=InDesertColossus,x=459,y=37,z=479,dx=2,dz=2] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] if entity @e[type=area_effect_cloud,tag=Progress,tag=HalfMagic] run tag @a add GreatFairy5
execute if entity @a[tag=InDesertColossus,x=459,y=37,z=479,dx=2,dz=2] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] if entity @e[type=area_effect_cloud,tag=Progress,tag=FullMagic] run tag @a add GreatFairy5
execute if entity @a[tag=GreatFairy5] as @e[type=armor_stand,tag=GreatFairy5] at @s run function ocarina_of_time:jump_cutscenes/gerudo_valley/great_fairy
#6
execute if entity @a[tag=InGanonField,x=1462,y=39,z=483,dx=2,dz=2] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] run tag @a add GreatFairy6
execute if entity @a[tag=InGanonField,x=1462,y=39,z=483,dx=2,dz=2] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] run tag @a add GreatFairy6
execute if entity @a[tag=GreatFairy6] as @e[type=armor_stand,tag=GreatFairy6] at @s run function ocarina_of_time:jump_cutscenes/ganon_castle/great_fairy

#Song of Storms
execute unless block 1571 43 1937 minecraft:gold_block as @e[type=armor_stand,tag=GuruGuru2] at @s if entity @a[distance=..2] run tag @a add LearnStorms
execute if entity @a[tag=LearnStorms] as @e[type=armor_stand,tag=GuruGuru2] at @s run function ocarina_of_time:jump_cutscenes/kakariko_village/song_of_storms

#Adult Malon
execute if entity @a[x=465,y=31,z=1348,dx=6,dz=6,scores={time=13001..23000},tag=InLonLonRanch] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_blocks",Count:1b}]}] unless block 470 25 1351 minecraft:gold_block unless entity @e[type=armor_stand,tag=AdultIngo1,tag=BadIngoGone] as @e[type=armor_stand,tag=AdultMalon1] run tag @a add MeetAdultMalon
execute if entity @a[tag=MeetAdultMalon] as @e[type=armor_stand,tag=AdultMalon1] at @s run function ocarina_of_time:jump_cutscenes/lon_lon_ranch/adult_malon

#Mido
execute unless block -555 72 -688 minecraft:gold_block if entity @a[tag=Adult,x=-561,y=76,z=-688,dx=4,dz=4] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_cat",Count:1b}]}] run tag @a add MidoSaria
execute if entity @a[tag=MidoSaria] as @e[type=armor_stand,tag=Mido] at @s run function ocarina_of_time:jump_cutscenes/kokiri_forest/mido_saria

#Minuet of the Forest
execute unless block -581 78 -822 minecraft:gold_block if entity @a[tag=Adult,x=-575,y=83,z=-819,dx=6,dy=2,dz=5] run tag @a add LearnMinuet
execute if entity @a[tag=LearnMinuet] as @e[type=armor_stand,tag=Sheik2] at @s run function ocarina_of_time:jump_cutscenes/kokiri_forest/minuet

#Poes Take Flames
execute unless block 898 48 -1152 minecraft:gold_block if entity @a[x=896,y=60,z=-1139,dx=4,dz=2] run tag @a add PoeFlames
execute if entity @a[tag=PoeFlames] as @e[type=area_effect_cloud,tag=PoeFire] at @s run function ocarina_of_time:jump_cutscenes/forest_temple/poe_flames

#Phantom Ganon
execute if block 904 24 -1203 minecraft:gold_block unless block 903 27 -1205 minecraft:chest run tag @a add DefeatPhantom
execute if entity @a[tag=DefeatPhantom] as @e[type=armor_stand,tag=FakeGanon] at @s run function ocarina_of_time:jump_cutscenes/forest_temple/phantom_ganon

#Forest Medallion
execute if entity @a[tag=ForestMedallion] if entity @a[x=994,y=26,z=1466,dx=0,dy=1,dz=0] run tag @a add ForestMedallion1
execute if entity @a[tag=ForestMedallion1] run function ocarina_of_time:jump_cutscenes/forest_temple/sacred_realm
#Fire Medallion
execute if entity @a[tag=ClearMountain] if entity @a[x=994,y=26,z=1466,dx=0,dz=0] run tag @a add FireMedallion
execute if entity @a[tag=FireMedallion] run function ocarina_of_time:jump_cutscenes/fire_temple/fire_medallion
#Water Medallion
execute if entity @a[tag=WaterMedallion] if entity @a[x=994,y=26,z=1466,dx=0,dz=0] run tag @a add WaterMedallion2
execute if entity @a[tag=WaterMedallion2] at @a run function ocarina_of_time:jump_cutscenes/water_temple/water_medallion
#Shadow Medallion
execute if entity @a[tag=ShadowMedallion] if entity @a[x=994,y=26,z=1466,dx=0,dz=0] run tag @a add ShadowMedallion2
execute if entity @a[tag=ShadowMedallion2] as @e[type=armor_stand,tag=SacredImpa] at @a run function ocarina_of_time:jump_cutscenes/shadow_temple/shadow_medallion
#Spirit Medallion
execute if entity @a[tag=SpiritMedallion] if entity @a[x=994,y=26,z=1466,dx=0,dz=0] run tag @a add SpiritMedallion2
execute if entity @a[tag=SpiritMedallion2] as @e[type=armor_stand,tag=SacredNabooru] at @a run function ocarina_of_time:jump_cutscenes/spirit_temple/spirit_medallion

#Prelude of Light
execute if entity @a[tag=LightSong] if entity @a[x=970,y=10,z=1391,dx=0,dy=1,dz=6] run tag @a add LightSong1
execute if entity @a[tag=LightSong1] as @e[type=armor_stand,tag=Sheik1] at @s run function ocarina_of_time:jump_cutscenes/castle/light

#Link the Goron
execute as @e[type=armor_stand,tag=Goron12,tag=GoronCutscene] at @s if entity @a[distance=..2] run tag @a add GoronCutscene2
execute if entity @a[tag=GoronCutscene2] as @e[type=armor_stand,tag=Goron12] at @s run function ocarina_of_time:jump_cutscenes/goron_city/link_goron_1

#Bolero of Fire
execute unless block 2683 34 1950 minecraft:gold_block if entity @a[tag=Adult,x=2680,y=40,z=1958,dx=4,dz=0] run tag @a add LearnBolero
execute if entity @a[tag=LearnBolero] as @e[type=armor_stand,tag=Sheik3] at @s run function ocarina_of_time:jump_cutscenes/death_mountain/bolero

#Darunia Reunite
execute if block 3057 46 1956 minecraft:air if entity @a[x=3062,y=48,z=1956,dx=0,dz=0] run tag @a add DaruniaReunite
execute if entity @a[tag=DaruniaReunite] as @e[type=armor_stand,tag=Darunia3] at @s run function ocarina_of_time:jump_cutscenes/fire_temple/darunia_reunite

#Death Mountain Clears
execute if entity @a[tag=StartFireMedallion] if entity @a[x=1535,y=83,z=1922,dx=0,dz=0] run tag @a add ClearMountain
execute if entity @a[tag=ClearMountain] as @e[type=armor_stand,tag=RoofGuy] at @s run function ocarina_of_time:jump_cutscenes/fire_temple/mountain_clear

#Serenade of Water
execute if entity @a[tag=LearnSerenade] as @e[type=armor_stand,tag=Sheik7] at @s run function ocarina_of_time:jump_cutscenes/zora_domain/serenade

#Ruto Reunion
execute unless block 1035 33 3025 minecraft:gold_block if entity @a[x=1039,y=36,z=3024,dx=1,dy=2,dz=2] run tag @a add RutoReunion
execute if entity @a[tag=RutoReunion] as @e[type=armor_stand,tag=Ruto4] at @s run function ocarina_of_time:jump_cutscenes/water_temple/ruto

#Biggoron Sword Sidequest
#Grog
execute if entity @a[tag=Adult,tag=InKokiriForest,x=-617,y=76,z=-673,dx=2,dz=3] if entity @a[nbt={Inventory:[{tag:{Cojiro:1b}}]}] run tag @a add MeetGrog
execute if entity @a[tag=MeetGrog] as @e[type=armor_stand,tag=Grog2] at @s run function ocarina_of_time:jump_cutscenes/kokiri_forest/grog
#Granny
execute if entity @a[tag=Adult,tag=TimedRace1,x=1521,y=56,z=1910,dx=1,dz=2] run tag @a add MeetGranny
execute if entity @a[tag=MeetGranny] as @e[type=armor_stand,tag=Granny] at @s run function ocarina_of_time:jump_cutscenes/kakariko_village/granny
#Fado
execute if entity @a[tag=Adult,tag=DeliverPoultice,x=-617,y=76,z=-673,dx=2,dz=3] run tag @a add MeetFado
execute if entity @a[tag=MeetFado] as @e[type=armor_stand,tag=Fado] at @s run function ocarina_of_time:jump_cutscenes/kokiri_forest/fado
#Mutoh
execute if entity @a[tag=Adult,tag=Saw,x=354,y=77,z=2036,dx=4,dz=2] run tag @a add MeetMutoh
execute if entity @a[tag=MeetMutoh] as @e[type=armor_stand,tag=Mutoh2] at @s run function ocarina_of_time:jump_cutscenes/gerudo_valley/mutoh
#BrokenBlade
execute if entity @a[tag=Adult,tag=BrokenBlade,x=2032,y=154,z=1348,dx=8,dy=5,dz=10] run tag @a add BiggoronEyes
execute if entity @a[tag=BiggoronEyes] as @e[type=armor_stand,tag=Biggoron] at @s run function ocarina_of_time:jump_cutscenes/death_mountain/biggoron
#Prescription
execute if entity @a[tag=Adult,tag=Prescription,x=1773,y=57,z=2293,dx=2,dz=1] if block 1767 60 2289 minecraft:gold_block run tag @a add Eyedrops
execute if entity @a[tag=Eyedrops] as @e[type=armor_stand,tag=FakeKingZora] at @s run function ocarina_of_time:jump_cutscenes/zora_domain/eye_drops
#Mizumi
execute if entity @a[tag=Adult,tag=TimedRace2,x=745,y=56,z=2669,dx=2,dy=1,dz=3] run tag @a add GiveFrog1
execute if entity @a[tag=Adult,tag=TimedRace2,x=1366,y=56,z=2669,dx=2,dy=1,dz=3] run tag @a add GiveFrog2
execute if entity @a[tag=GiveFrog1] as @e[type=armor_stand,tag=Scientist1] run function ocarina_of_time:jump_cutscenes/lake_hylia/doctor_1
execute if entity @a[tag=GiveFrog2] as @e[type=armor_stand,tag=Scientist2] run function ocarina_of_time:jump_cutscenes/lake_hylia/doctor_2
#Biggoron
execute if entity @a[tag=Adult,tag=TimedRace3,x=2032,y=154,z=1348,dx=8,dy=5,dz=10] run tag @a add GiveEyedrops
execute if entity @a[tag=GiveEyedrops] as @e[type=armor_stand,tag=Biggoron] run function ocarina_of_time:jump_cutscenes/death_mountain/eyedrops
#Final
execute if entity @a[tag=Adult,tag=GetSword,x=2032,y=154,z=1348,dx=8,dy=5,dz=10] run tag @a add ReceiveSword
execute if entity @a[tag=ReceiveSword] as @e[type=armor_stand,tag=Biggoron] run function ocarina_of_time:jump_cutscenes/death_mountain/sword

#Running Man
execute if entity @a[tag=Adult,tag=RaceRunningMan] as @e[type=armor_stand,tag=RunningMan2] at @s run function ocarina_of_time:jump_cutscenes/gerudo_valley/running_man

#Nocturne Of Shadow
execute if entity @a[tag=KakarikoSheik] if entity @a[tag=InKakarikoVillage] run tag @a add KakarikoSheik2
execute if entity @a[tag=KakarikoSheik2] as @e[type=armor_stand,tag=Sheik5] at @s run function ocarina_of_time:jump_cutscenes/kakariko_village/sheik

#Scarecrow 1
execute if entity @a[x=800,y=66,z=2683,dx=4,dz=3] unless entity @a[tag=LearnScarecrowSong2] unless entity @e[type=area_effect_cloud,tag=Songs,tag=Scarecrow] if entity @a[nbt={SelectedItem:{tag:{OcarinaSaria:1b}}}] unless entity @a[tag=Adult] run tag @a add LearnScarecrowSong1
execute if entity @a[x=800,y=66,z=2683,dx=4,dz=3] unless entity @a[tag=LearnScarecrowSong2] unless entity @e[type=area_effect_cloud,tag=Songs,tag=Scarecrow] if entity @a[nbt={SelectedItem:{tag:{OcarinaZelda:1b}}}] unless entity @a[tag=Adult] run tag @a add LearnScarecrowSong1
execute unless entity @a[tag=Adult] if entity @a[tag=LearnScarecrowSong1] as @e[type=armor_stand,tag=Bonooru1] run function ocarina_of_time:jump_cutscenes/lake_hylia/scarecrow
#Scarecrow 2
execute if entity @a[x=800,y=66,z=2683,dx=4,dz=3] if entity @a[tag=LearnScarecrowSong2,tag=Adult] unless entity @e[type=area_effect_cloud,tag=Songs,tag=Scarecrow] if entity @a[nbt={SelectedItem:{tag:{OcarinaSaria:1b}}}] run tag @a add LearnScarecrowSong3
execute if entity @a[x=800,y=66,z=2683,dx=4,dz=3] if entity @a[tag=LearnScarecrowSong2,tag=Adult] unless entity @e[type=area_effect_cloud,tag=Songs,tag=Scarecrow] if entity @a[nbt={SelectedItem:{tag:{OcarinaZelda:1b}}}] run tag @a add LearnScarecrowSong3
execute if entity @a[tag=Adult] if entity @a[tag=LearnScarecrowSong3] as @e[type=armor_stand,tag=Bonooru1] run function ocarina_of_time:jump_cutscenes/lake_hylia/song_1
#Scarecrow 3
execute if entity @a[x=1421,y=66,z=2683,dx=4,dz=3] if entity @a[tag=LearnScarecrowSong2,tag=Adult] unless entity @e[type=area_effect_cloud,tag=Songs,tag=Scarecrow] if entity @a[nbt={SelectedItem:{tag:{OcarinaSaria:1b}}}] run tag @a add LearnScarecrowSong3
execute if entity @a[x=1421,y=66,z=2683,dx=4,dz=3] if entity @a[tag=LearnScarecrowSong2,tag=Adult] unless entity @e[type=area_effect_cloud,tag=Songs,tag=Scarecrow] if entity @a[nbt={SelectedItem:{tag:{OcarinaZelda:1b}}}] run tag @a add LearnScarecrowSong3
execute if entity @a[tag=Adult] if entity @a[tag=LearnScarecrowSong3] as @e[type=armor_stand,tag=Bonooru2] run function ocarina_of_time:jump_cutscenes/lake_hylia/song_2

#Carpenters
execute if entity @a[tag=InGerudoFortress,tag=Adult] at @a as @e[type=armor_stand,tag=JailCarpenter,tag=!Cutscene,tag=!Npc,distance=..3] run tag @s add SaveCarpenter
execute if entity @a[tag=InGerudoFortress,tag=Adult] at @a as @e[type=armor_stand,tag=JailCarpenter,tag=!Cutscene,tag=!Npc,distance=..3] run tag @s add SaveCarpenter
execute if entity @a[tag=InGerudoFortress,tag=Adult] at @a as @e[type=armor_stand,tag=JailCarpenter,tag=!Cutscene,tag=!Npc,distance=..3] run tag @s add SaveCarpenter
execute if entity @a[tag=InGerudoFortress,tag=Adult] at @a as @e[type=armor_stand,tag=JailCarpenter,tag=!Cutscene,tag=!Npc,distance=..3] run tag @s add SaveCarpenter
execute if entity @a[tag=InGerudoFortress,tag=Adult] as @e[type=armor_stand,tag=SaveCarpenter] run function ocarina_of_time:jump_cutscenes/gerudo_valley/carpenter

#Gerudo Thief
execute if entity @a[tag=MeetGerudoThief] run function ocarina_of_time:jump_cutscenes/gerudo_valley/gerudo_thief

#Requiem of Spirit
execute if entity @a[tag=LearnRequiem] as @e[type=armor_stand,tag=Sheik6] at @s run function ocarina_of_time:jump_cutscenes/gerudo_valley/requiem_of_spirit

#Meet Nabooru
execute if entity @a[tag=MeetNabooru] as @e[type=armor_stand,tag=Nabooru1] at @s run function ocarina_of_time:jump_cutscenes/spirit_temple/nabooru

#Owl Spirit Temple
execute if entity @a[tag=OwlSpiritTemple] as @e[type=area_effect_cloud,tag=FakeOwl] run function ocarina_of_time:jump_cutscenes/spirit_temple/owl

#Meet Nabooru
execute if entity @a[tag=InDesertColossus,tag=NabooruCapture] as @e[type=armor_stand,tag=Nabooru2] at @s run function ocarina_of_time:jump_cutscenes/spirit_temple/nabooru_captured

#Nabooru Knuckle
execute if entity @a[x=-27,y=116,z=826,dx=0,dz=0] if entity @a[tag=NabooruAttack] run tag @a add NabooruAttack2
execute if entity @a[tag=NabooruAttack2] as @e[type=armor_stand,tag=Kotake2] at @s run function ocarina_of_time:jump_cutscenes/spirit_temple/nabooru_knuckle

#Kill Nabooru
execute if entity @a[tag=KillNabooru] as @e[type=armor_stand,tag=Nabooru3] at @s run function ocarina_of_time:jump_cutscenes/spirit_temple/nabooru_dies

#Twinrova
execute if entity @a[x=-29,y=124,z=761,dx=4,dz=4] unless block -28 117 763 minecraft:gold_block as @e[type=armor_stand,tag=Kotake2] at @s run function ocarina_of_time:jump_cutscenes/spirit_temple/boss

#All Sages Awakened
execute if entity @a[tag=SagesAwaken] unless entity @a[tag=ForestMedallion1] unless entity @a[tag=FireMedallion1] unless entity @a[tag=WaterMedallion1] unless entity @a[tag=ShadowMedallion1] unless entity @a[tag=SpiritMedallion1] run function ocarina_of_time:jump_cutscenes/castle/sages_awaken

#Zelda Reunite
execute if entity @a[tag=InDeathTown] if entity @a[tag=ZeldaReunite] at @a if block ~ ~-1 ~ minecraft:red_wool run tag @a add ZeldaReunite2
execute if entity @a[tag=ZeldaReunite2] as @e[type=armor_stand,tag=PrincessZelda1] at @s run function ocarina_of_time:jump_cutscenes/castle/zelda_reunite

#Ganon's Castle Bridge
execute if entity @a[tag=SageBridge,x=1394,y=75,z=496,dx=10,dy=1,dz=4] run tag @a add SageBridge2
execute if entity @a[tag=SageBridge2] as @e[type=armor_stand,tag=Helmet2] run function ocarina_of_time:jump_cutscenes/ganon_castle/sage_bridge

#Ganondorf
execute unless block -493 93 1629 minecraft:gold_block if entity @a[x=-499,y=92,z=1626,dx=1,dz=1] run tag @a add FinalGanondorf
execute if block -493 93 1629 minecraft:gold_block unless block -499 113 1615 minecraft:gold_block if entity @a[tag=!FinalGanondorf,x=-499,y=92,z=1626,dx=1,dz=1] run tag @a add FinalGanondorf2
execute if entity @a[tag=FinalGanondorf] as @e[type=armor_stand,tag=PrincessZelda2] at @s run function ocarina_of_time:jump_cutscenes/ganon_castle/ganondorf
execute if entity @a[tag=FinalGanondorf2] as @e[type=armor_stand,tag=PrincessZelda2] at @s run function ocarina_of_time:jump_cutscenes/ganon_castle/ganondorf2

#Escape Ganon's Castle
execute if entity @a[tag=EscapeCastle,x=-635,y=173,z=890,dx=0,dz=0] run tag @a add EscapeCastle2
execute if entity @a[tag=EscapeCastle2] as @e[type=armor_stand,tag=PrincessZelda3] at @s run function ocarina_of_time:jump_cutscenes/ganon_castle/escape

#Destroyed Ganon Castle
execute if entity @a[tag=DestroyedGanonCastle,x=-568,y=52,z=277,dx=0,dz=0] run tag @a add DestroyedGanonCastle2
execute if entity @a[tag=DestroyedGanonCastle2] as @e[type=armor_stand,tag=PrincessZelda5] at @s run function ocarina_of_time:jump_cutscenes/ganon_castle/destroyed_castle

#Final Zelda Goodbye
execute if entity @a[tag=FinalZeldaGoodbye,x=-135,y=253,z=309,dx=0,dz=0] run tag @a add FinalZeldaGoodbye2
execute if entity @a[tag=FinalZeldaGoodbye2] as @e[type=armor_stand,tag=PrincessZelda6] run function ocarina_of_time:jump_cutscenes/ganon_castle/final

#Staff Role
execute if entity @a[tag=StaffRole] as @e[type=area_effect_cloud,tag=StaffRole] at @s run function ocarina_of_time:jump_cutscenes/staff_role/staff_role
