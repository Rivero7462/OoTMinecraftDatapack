#Club Rotation
data modify entity @s Rotation[1] set value 0f
execute if entity @s[y_rotation=10] run tp @e[type=zombie,tag=Club1] -573 78 -802
execute if entity @s[y_rotation=0] run tp @e[type=zombie,tag=Club1] -572 78 -802
execute if entity @s[y_rotation=-10] run tp @e[type=zombie,tag=Club1] -571 78 -802

#Rotation
#Side 1
execute if entity @s[x=-572,y=78,z=-805,dx=0,dz=0] if entity @a[x=-573,y=79,z=-801,dx=0,dz=15] unless entity @s[tag=Stun] unless entity @s[tag=Attack] run tp @s ~ ~ ~ 10 ~
execute if entity @s[x=-572,y=78,z=-805,dx=0,dz=0] if entity @a[x=-572,y=79,z=-801,dx=0,dz=15] unless entity @s[tag=Stun] unless entity @s[tag=Attack] run tp @s ~ ~ ~ 0 ~
execute if entity @s[x=-572,y=78,z=-805,dx=0,dz=0] if entity @a[x=-571,y=79,z=-801,dx=0,dz=15] unless entity @s[tag=Stun] unless entity @s[tag=Attack] run tp @s ~ ~ ~ -10 ~
#Side 2
execute if entity @s[x=-572,y=78,z=-786,dx=0,dz=0] if entity @a[x=-573,y=79,z=-805,dx=0,dz=15] unless entity @s[tag=Stun] unless entity @s[tag=Attack] run tp @s ~ ~ ~ 170 ~
execute if entity @s[x=-572,y=78,z=-786,dx=0,dz=0] if entity @a[x=-572,y=79,z=-805,dx=0,dz=15] unless entity @s[tag=Stun] unless entity @s[tag=Attack] run tp @s ~ ~ ~ 180 ~
execute if entity @s[x=-572,y=78,z=-786,dx=0,dz=0] if entity @a[x=-571,y=79,z=-805,dx=0,dz=15] unless entity @s[tag=Stun] unless entity @s[tag=Attack] run tp @s ~ ~ ~ -170 ~

#Attack
execute unless entity @s[tag=Stun] if entity @s[x=-572,y=78,z=-805,dx=0,dz=0] if entity @a[x=-573,y=79,z=-801,dx=2,dz=15] unless entity @s[scores={timer=1..}] run tag @s add Attack
execute unless entity @s[tag=Stun] if entity @s[x=-572,y=78,z=-786,dx=0,dz=0] if entity @a[x=-573,y=79,z=-805,dx=2,dz=15] unless entity @s[scores={timer=1..}] run tag @s add Attack
execute unless entity @s[tag=Stun] if entity @s[scores={timer=1}] run playsound minecraft:entity.zombie.destroy_egg hostile @a ~ ~ ~ 10 .5
execute unless entity @s[tag=Stun] if entity @s[tag=Attack] run scoreboard players add @s timer 1

#Particle
#1
execute unless entity @s[tag=Stun] if entity @s[y_rotation=0,scores={timer=1}] run particle minecraft:block dirt -572 78 -801 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=0,scores={timer=3}] run particle minecraft:block dirt -572 78 -800 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=0,scores={timer=5}] run particle minecraft:block dirt -572 78 -799 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=0,scores={timer=7}] run particle minecraft:block dirt -572 78 -798 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=0,scores={timer=9}] run particle minecraft:block dirt -572 78 -797 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=0,scores={timer=11}] run particle minecraft:block dirt -572 78 -796 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=0,scores={timer=13}] run particle minecraft:block dirt -572 78 -795 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=0,scores={timer=15}] run particle minecraft:block dirt -572 78 -794 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=0,scores={timer=17}] run particle minecraft:block dirt -572 78 -793 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=0,scores={timer=19}] run particle minecraft:block dirt -572 78 -792 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=0,scores={timer=21}] run particle minecraft:block dirt -572 78 -791 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=0,scores={timer=23}] run particle minecraft:block dirt -572 78 -790 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=0,scores={timer=25}] run particle minecraft:block dirt -572 78 -789 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=0,scores={timer=27}] run particle minecraft:block dirt -572 78 -788 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=0,scores={timer=29}] run particle minecraft:block dirt -572 78 -787 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=0,scores={timer=31}] run particle minecraft:block dirt -572 78 -786 0 .1 .1 1 5 force
#2
execute unless entity @s[tag=Stun] if entity @s[y_rotation=10,scores={timer=1}] run particle minecraft:block dirt -573 78 -801 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=10,scores={timer=3}] run particle minecraft:block dirt -573 78 -800 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=10,scores={timer=5}] run particle minecraft:block dirt -573 78 -799 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=10,scores={timer=7}] run particle minecraft:block dirt -573 78 -798 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=10,scores={timer=9}] run particle minecraft:block dirt -573 78 -797 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=10,scores={timer=11}] run particle minecraft:block dirt -573 78 -796 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=10,scores={timer=13}] run particle minecraft:block dirt -573 78 -795 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=10,scores={timer=15}] run particle minecraft:block dirt -573 78 -794 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=10,scores={timer=17}] run particle minecraft:block dirt -573 78 -793 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=10,scores={timer=19}] run particle minecraft:block dirt -573 78 -792 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=10,scores={timer=21}] run particle minecraft:block dirt -573 78 -791 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=10,scores={timer=23}] run particle minecraft:block dirt -573 78 -790 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=10,scores={timer=25}] run particle minecraft:block dirt -573 78 -789 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=10,scores={timer=27}] run particle minecraft:block dirt -573 78 -788 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=10,scores={timer=29}] run particle minecraft:block dirt -573 78 -787 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=10,scores={timer=31}] run particle minecraft:block dirt -573 78 -786 0 .1 .1 1 5 force
#3
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-10,scores={timer=1}] run particle minecraft:block dirt -571 78 -801 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-10,scores={timer=3}] run particle minecraft:block dirt -571 78 -800 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-10,scores={timer=5}] run particle minecraft:block dirt -571 78 -799 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-10,scores={timer=7}] run particle minecraft:block dirt -571 78 -798 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-10,scores={timer=9}] run particle minecraft:block dirt -571 78 -797 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-10,scores={timer=11}] run particle minecraft:block dirt -571 78 -796 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-10,scores={timer=13}] run particle minecraft:block dirt -571 78 -795 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-10,scores={timer=15}] run particle minecraft:block dirt -571 78 -794 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-10,scores={timer=17}] run particle minecraft:block dirt -571 78 -793 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-10,scores={timer=19}] run particle minecraft:block dirt -571 78 -792 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-10,scores={timer=21}] run particle minecraft:block dirt -571 78 -791 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-10,scores={timer=23}] run particle minecraft:block dirt -571 78 -790 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-10,scores={timer=25}] run particle minecraft:block dirt -571 78 -789 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-10,scores={timer=27}] run particle minecraft:block dirt -571 78 -788 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-10,scores={timer=29}] run particle minecraft:block dirt -571 78 -787 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-10,scores={timer=31}] run particle minecraft:block dirt -571 78 -786 0 .1 .1 1 5 force
#Side 2
#1
execute unless entity @s[tag=Stun] if entity @s[y_rotation=180,scores={timer=1}] run particle minecraft:block dirt -572 78 -790 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=180,scores={timer=3}] run particle minecraft:block dirt -572 78 -791 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=180,scores={timer=5}] run particle minecraft:block dirt -572 78 -792 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=180,scores={timer=7}] run particle minecraft:block dirt -572 78 -793 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=180,scores={timer=9}] run particle minecraft:block dirt -572 78 -794 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=180,scores={timer=11}] run particle minecraft:block dirt -572 78 -795 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=180,scores={timer=13}] run particle minecraft:block dirt -572 78 -796 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=180,scores={timer=15}] run particle minecraft:block dirt -572 78 -797 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=180,scores={timer=17}] run particle minecraft:block dirt -572 78 -798 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=180,scores={timer=19}] run particle minecraft:block dirt -572 78 -799 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=180,scores={timer=21}] run particle minecraft:block dirt -572 78 -800 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=180,scores={timer=23}] run particle minecraft:block dirt -572 78 -801 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=180,scores={timer=25}] run particle minecraft:block dirt -572 78 -802 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=180,scores={timer=27}] run particle minecraft:block dirt -572 78 -803 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=180,scores={timer=29}] run particle minecraft:block dirt -572 78 -804 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=180,scores={timer=31}] run particle minecraft:block dirt -572 78 -805 0 .1 .1 1 5 force
#2
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-170,scores={timer=1}] run particle minecraft:block dirt -571 78 -790 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-170,scores={timer=3}] run particle minecraft:block dirt -571 78 -791 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-170,scores={timer=5}] run particle minecraft:block dirt -571 78 -792 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-170,scores={timer=7}] run particle minecraft:block dirt -571 78 -793 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-170,scores={timer=9}] run particle minecraft:block dirt -571 78 -794 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-170,scores={timer=11}] run particle minecraft:block dirt -571 78 -795 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-170,scores={timer=13}] run particle minecraft:block dirt -571 78 -796 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-170,scores={timer=15}] run particle minecraft:block dirt -571 78 -797 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-170,scores={timer=17}] run particle minecraft:block dirt -571 78 -798 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-170,scores={timer=19}] run particle minecraft:block dirt -571 78 -799 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-170,scores={timer=21}] run particle minecraft:block dirt -571 78 -800 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-170,scores={timer=23}] run particle minecraft:block dirt -571 78 -801 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-170,scores={timer=25}] run particle minecraft:block dirt -571 78 -802 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-170,scores={timer=27}] run particle minecraft:block dirt -571 78 -803 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-170,scores={timer=29}] run particle minecraft:block dirt -571 78 -804 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-170,scores={timer=31}] run particle minecraft:block dirt -571 78 -805 0 .1 .1 1 5 force
#3
execute unless entity @s[tag=Stun] if entity @s[y_rotation=170,scores={timer=1}] run particle minecraft:block dirt -573 78 -790 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=170,scores={timer=3}] run particle minecraft:block dirt -573 78 -791 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=170,scores={timer=5}] run particle minecraft:block dirt -573 78 -792 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=170,scores={timer=7}] run particle minecraft:block dirt -573 78 -793 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=170,scores={timer=9}] run particle minecraft:block dirt -573 78 -794 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=170,scores={timer=11}] run particle minecraft:block dirt -573 78 -795 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=170,scores={timer=13}] run particle minecraft:block dirt -573 78 -796 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=170,scores={timer=15}] run particle minecraft:block dirt -573 78 -797 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=170,scores={timer=17}] run particle minecraft:block dirt -573 78 -798 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=170,scores={timer=19}] run particle minecraft:block dirt -573 78 -799 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=170,scores={timer=21}] run particle minecraft:block dirt -573 78 -800 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=170,scores={timer=23}] run particle minecraft:block dirt -573 78 -801 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=170,scores={timer=25}] run particle minecraft:block dirt -573 78 -802 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=170,scores={timer=27}] run particle minecraft:block dirt -573 78 -803 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=170,scores={timer=29}] run particle minecraft:block dirt -573 78 -804 0 .1 .1 1 5 force
execute unless entity @s[tag=Stun] if entity @s[y_rotation=170,scores={timer=31}] run particle minecraft:block dirt -573 78 -805 0 .1 .1 1 5 force

#Damage
#1
execute unless entity @s[tag=Stun] if entity @s[y_rotation=0,scores={timer=1}] if entity @a[x=-572,y=79,z=-801,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=0,scores={timer=3}] if entity @a[x=-572,y=79,z=-800,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=0,scores={timer=5}] if entity @a[x=-572,y=79,z=-799,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=0,scores={timer=7}] if entity @a[x=-572,y=79,z=-798,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=0,scores={timer=9}] if entity @a[x=-572,y=79,z=-797,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=0,scores={timer=11}] if entity @a[x=-572,y=79,z=-796,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=0,scores={timer=13}] if entity @a[x=-572,y=79,z=-795,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=0,scores={timer=15}] if entity @a[x=-572,y=79,z=-794,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=0,scores={timer=17}] if entity @a[x=-572,y=79,z=-793,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=0,scores={timer=19}] if entity @a[x=-572,y=79,z=-792,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=0,scores={timer=21}] if entity @a[x=-572,y=79,z=-791,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=0,scores={timer=23}] if entity @a[x=-572,y=79,z=-790,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=0,scores={timer=25}] if entity @a[x=-572,y=79,z=-789,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=0,scores={timer=27}] if entity @a[x=-572,y=79,z=-788,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=0,scores={timer=29}] if entity @a[x=-572,y=79,z=-787,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=0,scores={timer=31}] if entity @a[x=-572,y=79,z=-786,dx=0,dz=0] run tag @s add HitClub
#2
execute unless entity @s[tag=Stun] if entity @s[y_rotation=10,scores={timer=1}] if entity @a[x=-573,y=79,z=-801,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=10,scores={timer=3}] if entity @a[x=-573,y=79,z=-800,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=10,scores={timer=5}] if entity @a[x=-573,y=79,z=-799,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=10,scores={timer=7}] if entity @a[x=-573,y=79,z=-798,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=10,scores={timer=9}] if entity @a[x=-573,y=79,z=-797,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=10,scores={timer=11}] if entity @a[x=-573,y=79,z=-796,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=10,scores={timer=13}] if entity @a[x=-573,y=79,z=-795,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=10,scores={timer=15}] if entity @a[x=-573,y=79,z=-794,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=10,scores={timer=17}] if entity @a[x=-573,y=79,z=-793,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=10,scores={timer=19}] if entity @a[x=-573,y=79,z=-792,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=10,scores={timer=21}] if entity @a[x=-573,y=79,z=-791,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=10,scores={timer=23}] if entity @a[x=-573,y=79,z=-790,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=10,scores={timer=25}] if entity @a[x=-573,y=79,z=-789,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=10,scores={timer=27}] if entity @a[x=-573,y=79,z=-788,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=10,scores={timer=29}] if entity @a[x=-573,y=79,z=-787,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=10,scores={timer=31}] if entity @a[x=-573,y=79,z=-786,dx=0,dz=0] run tag @s add HitClub
#3
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-10,scores={timer=1}] if entity @a[x=-571,y=79,z=-801,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-10,scores={timer=3}] if entity @a[x=-571,y=79,z=-800,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-10,scores={timer=5}] if entity @a[x=-571,y=79,z=-799,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-10,scores={timer=7}] if entity @a[x=-571,y=79,z=-798,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-10,scores={timer=9}] if entity @a[x=-571,y=79,z=-797,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-10,scores={timer=11}] if entity @a[x=-571,y=79,z=-796,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-10,scores={timer=13}] if entity @a[x=-571,y=79,z=-795,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-10,scores={timer=15}] if entity @a[x=-571,y=79,z=-794,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-10,scores={timer=17}] if entity @a[x=-571,y=79,z=-793,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-10,scores={timer=19}] if entity @a[x=-571,y=79,z=-792,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-10,scores={timer=21}] if entity @a[x=-571,y=79,z=-791,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-10,scores={timer=23}] if entity @a[x=-571,y=79,z=-790,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-10,scores={timer=25}] if entity @a[x=-571,y=79,z=-789,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-10,scores={timer=27}] if entity @a[x=-571,y=79,z=-788,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-10,scores={timer=29}] if entity @a[x=-571,y=79,z=-787,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-10,scores={timer=31}] if entity @a[x=-571,y=79,z=-786,dx=0,dz=0] run tag @s add HitClub
#Side 2
#1
execute unless entity @s[tag=Stun] if entity @s[y_rotation=180,scores={timer=1}] if entity @a[x=-572,y=79,z=-790,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=180,scores={timer=3}] if entity @a[x=-572,y=79,z=-791,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=180,scores={timer=5}] if entity @a[x=-572,y=79,z=-792,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=180,scores={timer=7}] if entity @a[x=-572,y=79,z=-793,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=180,scores={timer=9}] if entity @a[x=-572,y=79,z=-794,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=180,scores={timer=11}] if entity @a[x=-572,y=79,z=-795,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=180,scores={timer=13}] if entity @a[x=-572,y=79,z=-796,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=180,scores={timer=15}] if entity @a[x=-572,y=79,z=-797,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=180,scores={timer=17}] if entity @a[x=-572,y=79,z=-798,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=180,scores={timer=19}] if entity @a[x=-572,y=79,z=-799,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=180,scores={timer=21}] if entity @a[x=-572,y=79,z=-800,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=180,scores={timer=23}] if entity @a[x=-572,y=79,z=-801,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=180,scores={timer=25}] if entity @a[x=-572,y=79,z=-802,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=180,scores={timer=27}] if entity @a[x=-572,y=79,z=-803,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=180,scores={timer=29}] if entity @a[x=-572,y=79,z=-804,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=180,scores={timer=31}] if entity @a[x=-572,y=79,z=-805,dx=0,dz=0] run tag @s add HitClub
#2
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-170,scores={timer=1}] if entity @a[x=-571,y=79,z=-790,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-170,scores={timer=3}] if entity @a[x=-571,y=79,z=-791,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-170,scores={timer=5}] if entity @a[x=-571,y=79,z=-792,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-170,scores={timer=7}] if entity @a[x=-571,y=79,z=-793,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-170,scores={timer=9}] if entity @a[x=-571,y=79,z=-794,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-170,scores={timer=11}] if entity @a[x=-571,y=79,z=-795,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-170,scores={timer=13}] if entity @a[x=-571,y=79,z=-796,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-170,scores={timer=15}] if entity @a[x=-571,y=79,z=-797,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-170,scores={timer=17}] if entity @a[x=-571,y=79,z=-798,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-170,scores={timer=19}] if entity @a[x=-571,y=79,z=-799,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-170,scores={timer=21}] if entity @a[x=-571,y=79,z=-800,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-170,scores={timer=23}] if entity @a[x=-571,y=79,z=-801,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-170,scores={timer=25}] if entity @a[x=-571,y=79,z=-802,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-170,scores={timer=27}] if entity @a[x=-571,y=79,z=-803,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-170,scores={timer=29}] if entity @a[x=-571,y=79,z=-804,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=-170,scores={timer=31}] if entity @a[x=-571,y=79,z=-805,dx=0,dz=0] run tag @s add HitClub
#3
execute unless entity @s[tag=Stun] if entity @s[y_rotation=170,scores={timer=1}] if entity @a[x=-573,y=79,z=-790,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=170,scores={timer=3}] if entity @a[x=-573,y=79,z=-791,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=170,scores={timer=5}] if entity @a[x=-573,y=79,z=-792,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=170,scores={timer=7}] if entity @a[x=-573,y=79,z=-793,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=170,scores={timer=9}] if entity @a[x=-573,y=79,z=-794,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=170,scores={timer=11}] if entity @a[x=-573,y=79,z=-795,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=170,scores={timer=13}] if entity @a[x=-573,y=79,z=-796,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=170,scores={timer=15}] if entity @a[x=-573,y=79,z=-797,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=170,scores={timer=17}] if entity @a[x=-573,y=79,z=-798,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=170,scores={timer=19}] if entity @a[x=-573,y=79,z=-799,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=170,scores={timer=21}] if entity @a[x=-573,y=79,z=-800,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=170,scores={timer=23}] if entity @a[x=-573,y=79,z=-801,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=170,scores={timer=25}] if entity @a[x=-573,y=79,z=-802,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=170,scores={timer=27}] if entity @a[x=-573,y=79,z=-803,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=170,scores={timer=29}] if entity @a[x=-573,y=79,z=-804,dx=0,dz=0] run tag @s add HitClub
execute unless entity @s[tag=Stun] if entity @s[y_rotation=170,scores={timer=31}] if entity @a[x=-573,y=79,z=-805,dx=0,dz=0] run tag @s add HitClub

#Arrow
execute if entity @e[type=arrow,nbt={Potion:"minecraft:night_vision"},distance=..1.5] run tag @s add Stun

#Finish
execute if entity @s[scores={timer=45..}] run tag @s remove Attack
execute if entity @s[scores={timer=45..}] run scoreboard players set @s timer 0

#Hit
execute unless entity @s[tag=Stun] if entity @s[tag=HitClub] run scoreboard players add @s lifetime 1
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=1}] run effect give @a minecraft:wither 2 0 true
execute if entity @a[scores={ResetHealth=1..}] run tag @s remove HitClub
#1
execute if entity @s[x=-572,y=78,z=-805,dx=0,dz=0] if entity @s[tag=HitClub] at @a run tp @a ~ ~ ~.8
execute if entity @s[x=-572,y=78,z=-805,dx=0,dz=0] if entity @a[x=-573,y=79,z=-784,dx=2,dz=1] run tag @s remove HitClub
execute if entity @s[x=-572,y=78,z=-805,dx=0,dz=0] if entity @a[x=-573,y=79,z=-784,dx=2,dz=1] run scoreboard players set @s lifetime 0
#2
execute if entity @s[x=-572,y=78,z=-786,dx=0,dz=0] if entity @s[tag=HitClub] at @a run tp @a ~ ~ ~-.8
execute if entity @s[x=-572,y=78,z=-786,dx=0,dz=0] if entity @a[x=-573,y=79,z=-808,dx=2,dy=1,dz=1] run tag @s remove HitClub
execute if entity @s[x=-572,y=78,z=-786,dx=0,dz=0] if entity @a[x=-573,y=79,z=-808,dx=2,dy=1,dz=1] run scoreboard players set @s lifetime 0

#Stun
execute if entity @s[tag=Stun] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=1..110}] run particle minecraft:falling_dust blue_wool ~ ~3 ~ .5 1 .7 1 1
execute if entity @s[scores={GameTimer=1..110}] run scoreboard players set @s timer 0
execute if entity @s[scores={GameTimer=110..}] run tag @s remove Stun
execute unless entity @s[tag=Stun] run scoreboard players set @s GameTimer 0

#Hurt
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.cat.death hostile @a ~ ~ ~ 1 .5
