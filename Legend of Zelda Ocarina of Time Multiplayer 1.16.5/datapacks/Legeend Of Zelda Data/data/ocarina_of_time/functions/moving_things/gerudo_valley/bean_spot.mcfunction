execute unless entity @s[tag=Bean] if entity @a[x=364,y=37,z=2038,dx=2,dz=2] if block ~ ~-1 ~ minecraft:acacia_leaves run tag @s add Bean
execute if entity @s[tag=Bean] run scoreboard players add @s timer 1

#Tp
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=5}] run tp @a ~ ~1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=10}] run tp @a ~1 ~ ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=15}] run tp @a ~1 ~ ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=20}] run tp @a ~1 ~ ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=25}] run tp @a ~1 ~ ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=30}] run tp @a ~1 ~ ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=35}] run tp @a ~1 ~ ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=40}] run tp @a ~1 ~ ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=45}] run tp @a ~1 ~ ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=50}] run tp @a ~1 ~ ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=55}] run tp @a ~1 ~ ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=60}] run tp @a ~1 ~ ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=65}] run tp @a ~1 ~ ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=70}] run tp @a ~1 ~ ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=75}] run tp @a ~1 ~ ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=80}] run tp @a ~1 ~ ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=85}] run tp @a ~ ~-1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=90}] run tp @a ~ ~-1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=95}] run tp @a ~ ~-1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=100}] run tp @a ~ ~-1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=105}] run tp @a ~ ~-1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=110}] run tp @a ~ ~-1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=115}] run tp @a ~ ~-1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=120}] run tp @a ~ ~-1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=125}] run tp @a ~ ~-1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=130}] run tp @a ~ ~-1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=135}] run tp @a ~ ~-1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=140}] run tp @a ~ ~-1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=145}] run tp @a ~ ~-1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=150}] run tp @a ~ ~-1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=155}] run tp @a ~ ~-1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=160}] run tp @a ~ ~-1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=165}] run tp @a ~ ~-1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=170}] run tp @a ~-1 ~ ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=175}] run tp @a ~-1 ~ ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=180}] run tp @a ~-1 ~ ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=185}] run tp @a ~-1 ~ ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=190}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=195}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=200}] run tp @a ~ ~ ~-1
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=205}] run tp @a ~ ~1 ~
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=210}] run tp @a ~ ~1 ~
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=215}] run tp @a ~ ~1 ~
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=220}] run tp @a ~ ~1 ~
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=220}] unless block 370 25 2036 minecraft:gold_block run give @a minecraft:red_dye{display:{Name:"{\"text\":\"Red Rupee\"}"},Item:1b} 1
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=220}] unless block 370 25 2036 minecraft:gold_block run fill 370 25 2036 370 25 2036 minecraft:gold_block
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=225}] run tp @a ~ ~1 ~
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=230}] run tp @a ~ ~1 ~
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=235}] run tp @a ~ ~1 ~
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=240}] run tp @a ~ ~1 ~
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=245}] run tp @a ~ ~1 ~
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=250}] run tp @a ~ ~1 ~
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=255}] run tp @a ~ ~1 ~
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=260}] run tp @a ~ ~1 ~
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=265}] run tp @a ~ ~1 ~
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=270}] run tp @a ~ ~1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=275}] run tp @a ~1 ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=280}] run tp @a ~1 ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=285}] run tp @a ~1 ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=290}] run tp @a ~1 ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=295}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=300}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=305}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=310}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=315}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=320}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=325}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=330}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=335}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=340}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=345}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=350}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=355}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=360}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=365}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=370}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=375}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=380}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=385}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=390}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=395}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=400}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=405}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=410}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=415}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=420}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=425}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=430}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=435}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=440}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=445}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=450}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=455}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=460}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=465}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=470}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=475}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=480}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=485}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=490}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=495}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=500}] run tp @a ~ ~ ~-1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=505}] run tp @a ~ ~ ~-1

execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=510}] run tp @a ~ ~ 1985

execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=515}] run tp @a ~ ~1 ~
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=520}] run tp @a ~ ~1 ~
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=525}] run tp @a ~ ~1 ~
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=530}] run tp @a ~ ~1 ~
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=535}] run tp @a ~ ~1 ~
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=535}] unless block 374 39 1983 minecraft:gold_block run give @a minecraft:red_dye{display:{Name:"{\"text\":\"Red Rupee\"}"},Item:1b} 1
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=535}] unless block 374 39 1983 minecraft:gold_block run fill 374 39 1983 374 39 1983 minecraft:gold_block
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=540}] run tp @a ~ ~1 ~
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=545}] run tp @a ~ ~1 ~
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=550}] run tp @a ~ ~1 ~
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=555}] run tp @a ~ ~1 ~
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=560}] run tp @a ~ ~1 ~
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=565}] run tp @a ~ ~1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=575}] run tp @a ~-1 ~ ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=585}] run tp @a ~-1 ~ ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=595}] run tp @a ~-1 ~ ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=605}] run tp @a ~-1 ~ ~

execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=610}] run tp @a ~ ~ 1989

execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=615}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=620}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=625}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=630}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=635}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=640}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=645}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=650}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=655}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=660}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=665}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=670}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=675}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=680}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=685}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=690}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=695}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=700}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=705}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=710}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=715}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=720}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=725}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=730}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=735}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=740}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=745}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=750}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=755}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=760}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=765}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=770}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=775}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=780}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=785}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=790}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=795}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=800}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=805}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=810}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=815}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=820}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=825}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=830}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=835}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=840}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=845}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=850}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=855}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=860}] run tp @a ~ ~ ~1
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=865}] run tp @a ~-1 ~ ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=870}] run tp @a ~-1 ~ ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=875}] run tp @a ~-1 ~ ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=880}] run tp @a ~-1 ~-1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=885}] run tp @a ~-1 ~-1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=890}] run tp @a ~-1 ~-1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=895}] run tp @a ~-1 ~-1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=900}] run tp @a ~-1 ~-1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=905}] run tp @a ~-1 ~-1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=910}] run tp @a ~-1 ~-1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=915}] run tp @a ~-1 ~-1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=920}] run tp @a ~ ~-1 ~

#Move
execute if entity @s[scores={timer=1}] run clone 360 29 2038 362 29 2040 364 36 2038

execute if entity @s[scores={timer=5}] run clone 360 28 2038 362 29 2040 364 36 2038
execute if entity @s[scores={timer=10}] run clone 359 29 2038 362 29 2040 364 37 2038
execute if entity @s[scores={timer=15}] run clone 359 29 2038 362 29 2040 365 37 2038
execute if entity @s[scores={timer=20}] run clone 359 29 2038 362 29 2040 366 37 2038
execute if entity @s[scores={timer=25}] run clone 359 29 2038 362 29 2040 367 37 2038
execute if entity @s[scores={timer=30}] run clone 359 29 2038 362 29 2040 368 37 2038
execute if entity @s[scores={timer=35}] run clone 359 29 2038 362 29 2040 369 37 2038
execute if entity @s[scores={timer=40}] run clone 359 29 2038 362 29 2040 370 37 2038
execute if entity @s[scores={timer=45}] run clone 359 29 2038 362 29 2040 371 37 2038
execute if entity @s[scores={timer=50}] run clone 359 29 2038 362 29 2040 372 37 2038
execute if entity @s[scores={timer=55}] run clone 359 29 2038 362 29 2040 373 37 2038
execute if entity @s[scores={timer=60}] run clone 359 29 2038 362 29 2040 374 37 2038
execute if entity @s[scores={timer=65}] run clone 359 29 2038 362 29 2040 375 37 2038
execute if entity @s[scores={timer=70}] run clone 359 29 2038 362 29 2040 376 37 2038
execute if entity @s[scores={timer=75}] run clone 359 29 2038 362 29 2040 377 37 2038
execute if entity @s[scores={timer=80}] run clone 359 29 2038 362 29 2040 378 37 2038
execute if entity @s[scores={timer=85}] run clone 360 29 2038 362 30 2040 379 36 2038
execute if entity @s[scores={timer=90}] run clone 360 29 2038 362 30 2040 379 35 2038
execute if entity @s[scores={timer=95}] run clone 360 29 2038 362 30 2040 379 34 2038
execute if entity @s[scores={timer=100}] run clone 360 29 2038 362 30 2040 379 33 2038
execute if entity @s[scores={timer=105}] run clone 360 29 2038 362 30 2040 379 32 2038
execute if entity @s[scores={timer=110}] run clone 360 29 2038 362 30 2040 379 31 2038
execute if entity @s[scores={timer=115}] run clone 360 29 2038 362 30 2040 379 30 2038
execute if entity @s[scores={timer=120}] run clone 360 29 2038 362 30 2040 379 29 2038
execute if entity @s[scores={timer=125}] run clone 360 29 2038 362 30 2040 379 28 2038
execute if entity @s[scores={timer=130}] run clone 360 29 2038 362 30 2040 379 27 2038
execute if entity @s[scores={timer=135}] run clone 360 29 2038 362 30 2040 379 26 2038
execute if entity @s[scores={timer=140}] run clone 360 29 2038 362 30 2040 379 25 2038
execute if entity @s[scores={timer=145}] run clone 360 29 2038 362 30 2040 379 24 2038
execute if entity @s[scores={timer=150}] run clone 360 29 2038 362 30 2040 379 23 2038
execute if entity @s[scores={timer=155}] run clone 360 29 2038 362 30 2040 379 22 2038
execute if entity @s[scores={timer=160}] run clone 360 29 2038 362 30 2040 379 21 2038
execute if entity @s[scores={timer=165}] run clone 360 29 2038 362 30 2040 379 20 2038
execute if entity @s[scores={timer=170}] run clone 360 29 2038 363 29 2040 378 20 2038
execute if entity @s[scores={timer=175}] run clone 360 29 2038 363 29 2040 377 20 2038
execute if entity @s[scores={timer=180}] run clone 360 29 2038 363 29 2040 376 20 2038
execute if entity @s[scores={timer=185}] run clone 360 29 2038 363 29 2040 375 20 2038
execute if entity @s[scores={timer=190}] run clone 360 29 2038 362 29 2041 375 20 2037
execute if entity @s[scores={timer=195}] run clone 360 29 2038 362 29 2041 375 20 2036
execute if entity @s[scores={timer=200}] run clone 360 29 2038 362 29 2041 375 20 2035
execute if entity @s[scores={timer=205}] run clone 360 28 2038 362 30 2040 375 20 2035
execute if entity @s[scores={timer=210}] run clone 360 28 2038 362 30 2040 375 21 2035
execute if entity @s[scores={timer=215}] run clone 360 28 2038 362 30 2040 375 22 2035
execute if entity @s[scores={timer=220}] run clone 360 28 2038 362 30 2040 375 23 2035
execute if entity @s[scores={timer=225}] run clone 360 28 2038 362 30 2040 375 24 2035
execute if entity @s[scores={timer=230}] run clone 360 28 2038 362 30 2040 375 25 2035
execute if entity @s[scores={timer=235}] run clone 360 28 2038 362 30 2040 375 26 2035
execute if entity @s[scores={timer=240}] run clone 360 28 2038 362 30 2040 375 27 2035
execute if entity @s[scores={timer=245}] run clone 360 28 2038 362 30 2040 375 28 2035
execute if entity @s[scores={timer=250}] run clone 360 28 2038 362 30 2040 375 29 2035
execute if entity @s[scores={timer=255}] run clone 360 28 2038 362 30 2040 375 30 2035
execute if entity @s[scores={timer=260}] run clone 360 28 2038 362 30 2040 375 31 2035
execute if entity @s[scores={timer=265}] run clone 360 28 2038 362 30 2040 375 32 2035
execute if entity @s[scores={timer=270}] run clone 360 28 2038 362 30 2040 375 33 2035
execute if entity @s[scores={timer=275}] run clone 359 29 2038 362 29 2041 375 34 2034
execute if entity @s[scores={timer=280}] run clone 359 29 2038 362 29 2041 376 34 2033
execute if entity @s[scores={timer=285}] run clone 359 29 2038 362 29 2041 377 34 2032
execute if entity @s[scores={timer=290}] run clone 359 29 2038 362 29 2041 378 34 2031
execute if entity @s[scores={timer=295}] run clone 360 29 2038 362 29 2041 379 34 2030
execute if entity @s[scores={timer=300}] run clone 360 29 2038 362 29 2041 379 34 2029
execute if entity @s[scores={timer=305}] run clone 360 29 2038 362 29 2041 379 34 2028
execute if entity @s[scores={timer=310}] run clone 360 29 2038 362 29 2041 379 34 2027
execute if entity @s[scores={timer=315}] run clone 360 29 2038 362 29 2041 379 34 2026
execute if entity @s[scores={timer=320}] run clone 360 29 2038 362 29 2041 379 34 2025
execute if entity @s[scores={timer=325}] run clone 360 29 2038 362 29 2041 379 34 2024
execute if entity @s[scores={timer=330}] run clone 360 29 2038 362 29 2041 379 34 2023
execute if entity @s[scores={timer=335}] run clone 360 29 2038 362 29 2041 379 34 2022
execute if entity @s[scores={timer=340}] run clone 360 29 2038 362 29 2041 379 34 2021
execute if entity @s[scores={timer=345}] run clone 360 29 2038 362 29 2041 379 34 2020
execute if entity @s[scores={timer=350}] run clone 360 29 2038 362 29 2041 379 34 2019
execute if entity @s[scores={timer=355}] run clone 360 29 2038 362 29 2041 379 34 2018
execute if entity @s[scores={timer=360}] run clone 360 29 2038 362 29 2041 379 34 2017
execute if entity @s[scores={timer=365}] run clone 360 29 2038 362 29 2041 379 34 2016
execute if entity @s[scores={timer=370}] run clone 360 29 2038 362 29 2041 379 34 2015
execute if entity @s[scores={timer=375}] run clone 360 29 2038 362 29 2041 379 34 2014
execute if entity @s[scores={timer=380}] run clone 360 29 2038 362 29 2041 379 34 2013
execute if entity @s[scores={timer=385}] run clone 360 29 2038 362 29 2041 379 34 2012
execute if entity @s[scores={timer=390}] run clone 360 29 2038 362 29 2041 379 34 2011
execute if entity @s[scores={timer=395}] run clone 360 29 2038 362 29 2041 379 34 2010
execute if entity @s[scores={timer=400}] run clone 360 29 2038 362 29 2041 379 34 2009
execute if entity @s[scores={timer=405}] run clone 360 29 2038 362 29 2041 379 34 2008
execute if entity @s[scores={timer=410}] run clone 360 29 2038 362 29 2041 379 34 2007
execute if entity @s[scores={timer=415}] run clone 360 29 2038 362 29 2041 379 34 2006
execute if entity @s[scores={timer=420}] run clone 360 29 2038 362 29 2041 379 34 2005
execute if entity @s[scores={timer=425}] run clone 360 29 2038 362 29 2041 379 34 2004
execute if entity @s[scores={timer=430}] run clone 360 29 2038 362 29 2041 379 34 2003
execute if entity @s[scores={timer=435}] run clone 360 29 2038 362 29 2041 379 34 2002
execute if entity @s[scores={timer=440}] run clone 360 29 2038 362 29 2041 379 34 2001
execute if entity @s[scores={timer=445}] run clone 360 29 2038 362 29 2041 379 34 2000
execute if entity @s[scores={timer=450}] run clone 360 29 2038 362 29 2041 379 34 1999
execute if entity @s[scores={timer=455}] run clone 360 29 2038 362 29 2041 379 34 1998
execute if entity @s[scores={timer=460}] run clone 360 29 2038 362 29 2041 379 34 1997
execute if entity @s[scores={timer=465}] run clone 360 29 2038 362 29 2041 379 34 1996
execute if entity @s[scores={timer=470}] run clone 360 29 2038 362 29 2041 379 34 1995
execute if entity @s[scores={timer=475}] run clone 360 29 2038 362 29 2041 379 34 1994
execute if entity @s[scores={timer=480}] run clone 360 29 2038 362 29 2041 379 34 1993
execute if entity @s[scores={timer=485}] run clone 360 29 2038 362 29 2041 379 34 1992
execute if entity @s[scores={timer=490}] run clone 360 29 2038 362 29 2041 379 34 1991
execute if entity @s[scores={timer=495}] run clone 360 29 2038 362 29 2041 379 34 1990
execute if entity @s[scores={timer=500}] run clone 360 29 2038 362 29 2041 379 34 1989
execute if entity @s[scores={timer=505}] run clone 360 29 2038 362 29 2041 379 34 1988

execute if entity @s[scores={timer=510}] run fill 381 34 1988 379 34 1990 minecraft:air
execute if entity @s[scores={timer=510}] run clone 360 29 2039 362 29 2040 379 34 1985

execute if entity @s[scores={timer=515}] run clone 360 28 2039 362 29 2040 379 34 1985
execute if entity @s[scores={timer=520}] run clone 360 28 2039 362 29 2040 379 35 1985
execute if entity @s[scores={timer=525}] run clone 360 28 2039 362 29 2040 379 36 1985
execute if entity @s[scores={timer=530}] run clone 360 28 2039 362 29 2040 379 37 1985
execute if entity @s[scores={timer=535}] run clone 360 28 2039 362 29 2040 379 38 1985
execute if entity @s[scores={timer=540}] run clone 360 28 2039 362 29 2040 379 39 1985
execute if entity @s[scores={timer=545}] run clone 360 28 2039 362 29 2040 379 40 1985
execute if entity @s[scores={timer=550}] run clone 360 28 2039 362 29 2040 379 41 1985
execute if entity @s[scores={timer=555}] run clone 360 28 2039 362 29 2040 379 42 1985
execute if entity @s[scores={timer=560}] run clone 360 28 2039 362 29 2040 379 43 1985
execute if entity @s[scores={timer=565}] run clone 360 28 2039 362 29 2040 379 44 1985
execute if entity @s[scores={timer=575}] run clone 360 29 2039 363 29 2040 378 45 1985
execute if entity @s[scores={timer=585}] run clone 360 29 2039 363 29 2040 377 45 1985
execute if entity @s[scores={timer=595}] run clone 360 29 2039 363 29 2040 376 45 1985
execute if entity @s[scores={timer=605}] run clone 360 29 2039 363 29 2040 375 45 1985

execute if entity @s[scores={timer=610}] run fill 377 45 1985 375 45 1986 minecraft:air
execute if entity @s[scores={timer=610}] run clone 360 29 2038 362 29 2040 375 45 1988

execute if entity @s[scores={timer=615}] run clone 360 29 2037 362 29 2040 375 45 1988
execute if entity @s[scores={timer=620}] run clone 360 29 2037 362 29 2040 375 45 1989
execute if entity @s[scores={timer=625}] run clone 360 29 2037 362 29 2040 375 45 1990
execute if entity @s[scores={timer=630}] run clone 360 29 2037 362 29 2040 375 45 1991
execute if entity @s[scores={timer=635}] run clone 360 29 2037 362 29 2040 375 45 1992
execute if entity @s[scores={timer=640}] run clone 360 29 2037 362 29 2040 375 45 1993
execute if entity @s[scores={timer=645}] run clone 360 29 2037 362 29 2040 375 45 1994
execute if entity @s[scores={timer=650}] run clone 360 29 2037 362 29 2040 375 45 1995
execute if entity @s[scores={timer=655}] run clone 360 29 2037 362 29 2040 375 45 1996
execute if entity @s[scores={timer=660}] run clone 360 29 2037 362 29 2040 375 45 1997
execute if entity @s[scores={timer=665}] run clone 360 29 2037 362 29 2040 375 45 1998
execute if entity @s[scores={timer=670}] run clone 360 29 2037 362 29 2040 375 45 1999
execute if entity @s[scores={timer=675}] run clone 360 29 2037 362 29 2040 375 45 2000
execute if entity @s[scores={timer=680}] run clone 360 29 2037 362 29 2040 375 45 2001
execute if entity @s[scores={timer=685}] run clone 360 29 2037 362 29 2040 375 45 2002
execute if entity @s[scores={timer=690}] run clone 360 29 2037 362 29 2040 375 45 2003
execute if entity @s[scores={timer=695}] run clone 360 29 2037 362 29 2040 375 45 2004
execute if entity @s[scores={timer=700}] run clone 360 29 2037 362 29 2040 375 45 2005
execute if entity @s[scores={timer=705}] run clone 360 29 2037 362 29 2040 375 45 2006
execute if entity @s[scores={timer=710}] run clone 360 29 2037 362 29 2040 375 45 2007
execute if entity @s[scores={timer=715}] run clone 360 29 2037 362 29 2040 375 45 2008
execute if entity @s[scores={timer=720}] run clone 360 29 2037 362 29 2040 375 45 2009
execute if entity @s[scores={timer=725}] run clone 360 29 2037 362 29 2040 375 45 2010
execute if entity @s[scores={timer=730}] run clone 360 29 2037 362 29 2040 375 45 2011
execute if entity @s[scores={timer=735}] run clone 360 29 2037 362 29 2040 375 45 2012
execute if entity @s[scores={timer=740}] run clone 360 29 2037 362 29 2040 375 45 2013
execute if entity @s[scores={timer=745}] run clone 360 29 2037 362 29 2040 375 45 2014
execute if entity @s[scores={timer=750}] run clone 360 29 2037 362 29 2040 375 45 2015
execute if entity @s[scores={timer=755}] run clone 360 29 2037 362 29 2040 375 45 2016
execute if entity @s[scores={timer=760}] run clone 360 29 2037 362 29 2040 375 45 2017
execute if entity @s[scores={timer=765}] run clone 360 29 2037 362 29 2040 375 45 2018
execute if entity @s[scores={timer=770}] run clone 360 29 2037 362 29 2040 375 45 2019
execute if entity @s[scores={timer=775}] run clone 360 29 2037 362 29 2040 375 45 2020
execute if entity @s[scores={timer=780}] run clone 360 29 2037 362 29 2040 375 45 2021
execute if entity @s[scores={timer=785}] run clone 360 29 2037 362 29 2040 375 45 2022
execute if entity @s[scores={timer=790}] run clone 360 29 2037 362 29 2040 375 45 2023
execute if entity @s[scores={timer=795}] run clone 360 29 2037 362 29 2040 375 45 2024
execute if entity @s[scores={timer=800}] run clone 360 29 2037 362 29 2040 375 45 2025
execute if entity @s[scores={timer=805}] run clone 360 29 2037 362 29 2040 375 45 2026
execute if entity @s[scores={timer=810}] run clone 360 29 2037 362 29 2040 375 45 2027
execute if entity @s[scores={timer=815}] run clone 360 29 2037 362 29 2040 375 45 2028
execute if entity @s[scores={timer=820}] run clone 360 29 2037 362 29 2040 375 45 2029
execute if entity @s[scores={timer=825}] run clone 360 29 2037 362 29 2040 375 45 2030
execute if entity @s[scores={timer=830}] run clone 360 29 2037 362 29 2040 375 45 2031
execute if entity @s[scores={timer=835}] run clone 360 29 2037 362 29 2040 375 45 2032
execute if entity @s[scores={timer=840}] run clone 360 29 2037 362 29 2040 375 45 2033
execute if entity @s[scores={timer=845}] run clone 360 29 2037 362 29 2040 375 45 2034
execute if entity @s[scores={timer=850}] run clone 360 29 2037 362 29 2040 375 45 2035
execute if entity @s[scores={timer=855}] run clone 360 29 2037 362 29 2040 375 45 2036
execute if entity @s[scores={timer=860}] run clone 360 29 2037 362 29 2040 375 45 2037
execute if entity @s[scores={timer=865}] run clone 360 29 2038 363 29 2040 374 45 2038
execute if entity @s[scores={timer=870}] run clone 360 29 2038 363 29 2040 373 45 2038
execute if entity @s[scores={timer=875}] run clone 360 29 2038 363 29 2040 372 45 2038
execute if entity @s[scores={timer=880}] run clone 360 29 2038 363 30 2040 371 44 2038
execute if entity @s[scores={timer=885}] run clone 360 29 2038 363 30 2040 370 43 2038
execute if entity @s[scores={timer=890}] run clone 360 29 2038 363 30 2040 369 42 2038
execute if entity @s[scores={timer=895}] run clone 360 29 2038 363 30 2040 368 41 2038
execute if entity @s[scores={timer=900}] run clone 360 29 2038 363 30 2040 367 40 2038
execute if entity @s[scores={timer=905}] run clone 360 29 2038 363 30 2040 366 39 2038
execute if entity @s[scores={timer=910}] run clone 360 29 2038 363 30 2040 365 38 2038
execute if entity @s[scores={timer=915}] run clone 360 29 2038 363 30 2040 364 37 2038
execute if entity @s[scores={timer=920}] run clone 360 29 2038 362 30 2040 364 36 2038

execute if entity @s[scores={timer=930..}] run tag @s remove Bean
execute if entity @s[scores={timer=930..}] run scoreboard players set @s timer 0
