effect give @s minecraft:instant_health 1 20 true
give @s minecraft:glass_bottle{display:{Name:"\"Bottle\""}}
clear @s minecraft:carrot_on_a_stick{Unbreakable:1b,Damage:1,BottledFairy:1b} 1
tellraw @s {"text":"Fairy Used!","color":"red"}
