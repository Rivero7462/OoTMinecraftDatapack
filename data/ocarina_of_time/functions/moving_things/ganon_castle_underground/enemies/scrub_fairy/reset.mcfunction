kill @e[type=item,nbt={Item:{tag:{Fairy:1b}}}]
kill @e[type=armor_stand,tag=BusinessScrub]
execute as @e[type=villager,tag=ScrubShop] at @s run tp @s ~ ~-5 ~
kill @e[type=villager,tag=ScrubShop]
