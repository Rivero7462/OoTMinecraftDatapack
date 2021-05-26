scoreboard objectives add SpiritMagic dummy
scoreboard players add @s SpiritMagic 1

execute if entity @s[scores={SpiritMagic=1}] run playsound minecraft:entity.illusioner.cast_spell player @a ~ ~ ~ 1 1.5
execute if entity @s[scores={SpiritMagic=1}] run effect give @p resistance 1000000 255 true
execute if entity @s[scores={SpiritMagic=1}] run experience add @a -6 levels
execute if entity @s[scores={SpiritMagic=1..1200}] run particle minecraft:splash ^ ^ ^ 0.3 0 0.3 0 2 normal

#Sound
execute if entity @s[scores={SpiritMagic=20}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=40}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=60}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=80}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=100}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=120}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=140}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=160}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=180}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=200}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=220}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=240}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=260}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=280}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=300}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=320}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=340}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=360}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=380}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=400}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=420}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=440}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=460}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=480}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=500}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=520}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=540}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=560}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=580}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=600}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=620}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=640}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=660}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=680}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=700}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=720}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=740}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=760}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=780}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=800}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=820}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=840}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=860}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=880}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=900}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=920}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=940}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=960}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=980}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=1000}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=1020}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=1040}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=1060}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=1080}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=1100}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=1115}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=1130}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=1145}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=1160}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=1175}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=1190}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 2
execute if entity @s[scores={SpiritMagic=1200}] run playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ .3 1.5

execute if entity @s[scores={SpiritMagic=1200}] run effect clear @p resistance
execute if entity @s[scores={SpiritMagic=1200}] run tag @s remove NayruLove
execute if entity @s[scores={SpiritMagic=1200}] run scoreboard objectives remove SpiritMagic