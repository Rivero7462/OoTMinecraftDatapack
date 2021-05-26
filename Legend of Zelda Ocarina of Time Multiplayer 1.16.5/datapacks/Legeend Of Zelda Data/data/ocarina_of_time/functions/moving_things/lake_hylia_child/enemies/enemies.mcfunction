#Octorok
#1
execute as @e[type=zombie,tag=Octorok1] at @s if entity @s[scores={timer=30}] run summon minecraft:armor_stand ^ ^-.3 ^1 {Tags:["OckRock1","OckRock"],DisabledSlots:4144959,NoGravity:1b,Small:1b,ShowArms:0b,Invisible:1b,ArmorItems:[{},{},{},{id:player_head,Count:1,tag:{SkullOwner:{Name:"\"OckRock\"",Id:[I;-1462228361,-1966521004,-1353016591,943550771],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWMwZTI3ZTU2YjU3MjU5N2E0MjljNzRiNmQyZDQ1MWQyYjk2MDhkMTNmZDYwYTQyMDMzMGRkNTdjNTRhYmM2ZSJ9fX0="}]}}}}],DisabledSlots:4144959,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @e[type=zombie,tag=Octorok1] at @s if entity @s[scores={timer=31}] run tp @e[type=armor_stand,tag=OckRock1] ~ ~-.3 ~ facing entity @p
execute as @e[type=zombie,tag=Octorok1] unless entity @s[scores={timer=26..35}] run tp @s 715 65.8 2712
execute as @e[type=zombie,tag=Octorok1] at @s positioned ~-8 ~ ~-8 unless entity @a[dx=16,dy=100,dz=16] run tp @s 715 44 2712
execute as @e[type=zombie,tag=Octorok1] at @s positioned ~-2 ~ ~-2 if entity @a[dx=4,dy=100,dz=4] unless entity @s[scores={timer=0}] run tp @s 715 44 2712
#2
execute as @e[type=zombie,tag=Octorok2] at @s if entity @s[scores={timer=30}] run summon minecraft:armor_stand ^ ^-.3 ^1 {Tags:["OckRock2","OckRock"],DisabledSlots:4144959,NoGravity:1b,Small:1b,ShowArms:0b,Invisible:1b,ArmorItems:[{},{},{},{id:player_head,Count:1,tag:{SkullOwner:{Name:"\"OckRock\"",Id:[I;-1462228361,-1966521004,-1353016591,943550771],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWMwZTI3ZTU2YjU3MjU5N2E0MjljNzRiNmQyZDQ1MWQyYjk2MDhkMTNmZDYwYTQyMDMzMGRkNTdjNTRhYmM2ZSJ9fX0="}]}}}}],DisabledSlots:4144959,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @e[type=zombie,tag=Octorok2] at @s if entity @s[scores={timer=31}] run tp @e[type=armor_stand,tag=OckRock2] ~ ~-.3 ~ facing entity @p
execute as @e[type=zombie,tag=Octorok2] unless entity @s[scores={timer=26..35}] run tp @s 739 65.8 2773
execute as @e[type=zombie,tag=Octorok2] at @s positioned ~-8 ~ ~-8 unless entity @a[dx=16,dy=100,dz=16] run tp @s 739 44 2773
execute as @e[type=zombie,tag=Octorok2] at @s positioned ~-2 ~ ~-2 if entity @a[dx=4,dy=100,dz=4] unless entity @s[scores={timer=0}] run tp @s 739 44 2773
#3
execute as @e[type=zombie,tag=Octorok3] at @s if entity @s[scores={timer=30}] run summon minecraft:armor_stand ^ ^-.3 ^1 {Tags:["OckRock3","OckRock"],DisabledSlots:4144959,NoGravity:1b,Small:1b,ShowArms:0b,Invisible:1b,ArmorItems:[{},{},{},{id:player_head,Count:1,tag:{SkullOwner:{Name:"\"OckRock\"",Id:[I;-1462228361,-1966521004,-1353016591,943550771],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWMwZTI3ZTU2YjU3MjU5N2E0MjljNzRiNmQyZDQ1MWQyYjk2MDhkMTNmZDYwYTQyMDMzMGRkNTdjNTRhYmM2ZSJ9fX0="}]}}}}],DisabledSlots:4144959,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute as @e[type=zombie,tag=Octorok3] at @s if entity @s[scores={timer=31}] run tp @e[type=armor_stand,tag=OckRock3] ~ ~-.3 ~ facing entity @p
execute as @e[type=zombie,tag=Octorok3] unless entity @s[scores={timer=26..35}] run tp @s 765 65.8 2772
execute as @e[type=zombie,tag=Octorok3] at @s positioned ~-8 ~ ~-8 unless entity @a[dx=16,dy=100,dz=16] run tp @s 765 44 2772
execute as @e[type=zombie,tag=Octorok3] at @s positioned ~-2 ~ ~-2 if entity @a[dx=4,dy=100,dz=4] unless entity @s[scores={timer=0}] run tp @s 765 44 2772
