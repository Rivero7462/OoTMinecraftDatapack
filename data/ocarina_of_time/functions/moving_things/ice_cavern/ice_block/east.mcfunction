execute if block ~ ~ ~-1 minecraft:light_blue_concrete if block ~ ~ ~1 minecraft:light_blue_concrete if block ~3 ~ ~ minecraft:air if block ~3 ~ ~-1 minecraft:air if block ~3 ~ ~1 minecraft:air run summon minecraft:armor_stand ~1 ~ ~ {Tags:["IceBlock","East"],NoGravity:1b,Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:103}}],DisabledSlots:4144959}
execute unless block ~ ~ ~-1 minecraft:light_blue_concrete if block ~3 ~ ~ minecraft:air if block ~3 ~ ~1 minecraft:air if block ~3 ~ ~2 minecraft:air run summon minecraft:armor_stand ~1 ~ ~1 {Tags:["IceBlock","East"],NoGravity:1b,Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:103}}],DisabledSlots:4144959}
execute unless block ~ ~ ~1 minecraft:light_blue_concrete if block ~3 ~ ~ minecraft:air if block ~3 ~ ~-1 minecraft:air if block ~3 ~ ~-2 minecraft:air run summon minecraft:armor_stand ~1 ~ ~-1 {Tags:["IceBlock","East"],NoGravity:1b,Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:103}}],DisabledSlots:4144959}

execute if block ~ ~ ~-1 minecraft:light_blue_concrete if block ~ ~ ~1 minecraft:light_blue_concrete if block ~3 ~ ~ minecraft:air if block ~3 ~ ~-1 minecraft:air if block ~3 ~ ~1 minecraft:air run fill ~2 ~ ~-2 ~ ~ ~2 minecraft:air replace minecraft:light_blue_concrete
execute unless block ~ ~ ~-1 minecraft:light_blue_concrete if block ~3 ~ ~ minecraft:air if block ~3 ~ ~1 minecraft:air if block ~3 ~ ~2 minecraft:air run fill ~2 ~ ~-2 ~ ~ ~2 minecraft:air replace minecraft:light_blue_concrete
execute unless block ~ ~ ~1 minecraft:light_blue_concrete if block ~3 ~ ~ minecraft:air if block ~3 ~ ~-1 minecraft:air if block ~3 ~ ~-2 minecraft:air run fill ~2 ~ ~-2 ~ ~ ~2 minecraft:air replace minecraft:light_blue_concrete
