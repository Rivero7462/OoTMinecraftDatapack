scoreboard players add @s timer 1

#Moving Platforms
#1
execute if entity @s[scores={timer=0}] run clone 3117 37 1959 3115 39 1962 3119 43 1959
execute if entity @s[scores={timer=8}] run clone 3117 37 1959 3115 39 1962 3119 43 1960
execute if entity @s[scores={timer=16}] run clone 3117 37 1959 3115 39 1962 3119 43 1961
execute if entity @s[scores={timer=24}] run clone 3117 37 1959 3115 39 1962 3119 43 1962
execute if entity @s[scores={timer=32}] run clone 3117 37 1959 3115 39 1962 3119 43 1963
execute if entity @s[scores={timer=40}] run clone 3117 37 1959 3115 39 1962 3119 43 1964
execute if entity @s[scores={timer=48}] run clone 3117 37 1959 3115 39 1962 3119 43 1965
execute if entity @s[scores={timer=56}] run clone 3117 37 1959 3115 39 1962 3119 43 1966
execute if entity @s[scores={timer=64}] run clone 3117 37 1959 3115 39 1962 3119 43 1967
execute if entity @s[scores={timer=72}] run clone 3117 37 1959 3115 39 1962 3119 43 1968

execute if entity @s[scores={timer=96}] run clone 3117 37 1960 3115 39 1963 3119 43 1968
execute if entity @s[scores={timer=104}] run clone 3117 37 1960 3115 39 1963 3119 43 1967
execute if entity @s[scores={timer=112}] run clone 3117 37 1960 3115 39 1963 3119 43 1966
execute if entity @s[scores={timer=120}] run clone 3117 37 1960 3115 39 1963 3119 43 1965
execute if entity @s[scores={timer=128}] run clone 3117 37 1960 3115 39 1963 3119 43 1964
execute if entity @s[scores={timer=136}] run clone 3117 37 1960 3115 39 1963 3119 43 1963
execute if entity @s[scores={timer=144}] run clone 3117 37 1960 3115 39 1963 3119 43 1962
execute if entity @s[scores={timer=152}] run clone 3117 37 1960 3115 39 1963 3119 43 1961
execute if entity @s[scores={timer=160}] run clone 3117 37 1960 3115 39 1963 3119 43 1960
execute if entity @s[scores={timer=168}] run clone 3117 37 1960 3115 39 1963 3119 43 1959

#2
execute if entity @s[scores={timer=0}] run clone 3114 37 1960 3117 39 1962 3105 43 1978
execute if entity @s[scores={timer=10}] run clone 3114 37 1960 3117 39 1962 3106 43 1978
execute if entity @s[scores={timer=20}] run clone 3114 37 1960 3117 39 1962 3107 43 1978
execute if entity @s[scores={timer=31}] run clone 3114 37 1960 3117 39 1962 3108 43 1978
execute if entity @s[scores={timer=41}] run clone 3114 37 1960 3117 39 1962 3109 43 1978
execute if entity @s[scores={timer=51}] run clone 3114 37 1960 3117 39 1962 3110 43 1978
execute if entity @s[scores={timer=61}] run clone 3114 37 1960 3117 39 1962 3111 43 1978
execute if entity @s[scores={timer=72}] run clone 3114 37 1960 3117 39 1962 3112 43 1978

execute if entity @s[scores={timer=96}] run clone 3118 37 1960 3115 39 1962 3112 43 1978
execute if entity @s[scores={timer=106}] run clone 3118 37 1960 3115 39 1962 3111 43 1978
execute if entity @s[scores={timer=116}] run clone 3118 37 1960 3115 39 1962 3110 43 1978
execute if entity @s[scores={timer=127}] run clone 3118 37 1960 3115 39 1962 3109 43 1978
execute if entity @s[scores={timer=137}] run clone 3118 37 1960 3115 39 1962 3108 43 1978
execute if entity @s[scores={timer=147}] run clone 3118 37 1960 3115 39 1962 3107 43 1978
execute if entity @s[scores={timer=157}] run clone 3118 37 1960 3115 39 1962 3106 43 1978
execute if entity @s[scores={timer=168}] run clone 3118 37 1960 3115 39 1962 3105 43 1978

#3
execute if entity @s[scores={timer=0}] run clone 3114 37 1960 3118 39 1962 3111 43 1947
execute if entity @s[scores={timer=12}] run clone 3114 37 1960 3118 39 1962 3112 43 1947
execute if entity @s[scores={timer=24}] run clone 3114 37 1960 3118 39 1962 3113 43 1947
execute if entity @s[scores={timer=36}] run clone 3114 37 1960 3118 39 1962 3114 43 1947
execute if entity @s[scores={timer=48}] run clone 3114 37 1960 3118 39 1962 3115 43 1947
execute if entity @s[scores={timer=60}] run clone 3114 37 1960 3118 39 1962 3116 43 1947
execute if entity @s[scores={timer=72}] run clone 3114 37 1960 3118 39 1962 3117 43 1947

execute if entity @s[scores={timer=96}] run clone 3118 37 1962 3115 39 1960 3117 43 1947
execute if entity @s[scores={timer=108}] run clone 3118 37 1962 3115 39 1960 3116 43 1947
execute if entity @s[scores={timer=120}] run clone 3118 37 1962 3115 39 1960 3115 43 1947
execute if entity @s[scores={timer=132}] run clone 3118 37 1962 3115 39 1960 3114 43 1947
execute if entity @s[scores={timer=144}] run clone 3118 37 1962 3115 39 1960 3113 43 1947
execute if entity @s[scores={timer=156}] run clone 3118 37 1962 3115 39 1960 3112 43 1947
execute if entity @s[scores={timer=168}] run clone 3118 37 1962 3115 39 1960 3111 43 1947

execute if entity @s[scores={timer=192..}] run scoreboard players set @s timer -1

#Up Platforms
#1
execute if entity @a[x=3118,y=46,z=1941,dx=2,dz=2] unless entity @s[tag=Up2] run tag @s add Up1
execute if entity @s[tag=Up1] run scoreboard players add @s lifetime 1
execute if entity @a[x=3118,y=47,z=1941,dx=2,dy=12,dz=2] if entity @s[scores={lifetime=1}] at @a run playsound minecraft:block.basalt.step ambient @a ~ ~ ~ 1 .5
execute if entity @a[x=3118,y=47,z=1941,dx=2,dy=12,dz=2] if entity @s[scores={lifetime=30}] at @a run tp @a ~ ~1 ~
execute if entity @a[x=3118,y=47,z=1941,dx=2,dy=12,dz=2] if entity @s[scores={lifetime=33}] at @a run tp @a ~ ~1 ~
execute if entity @a[x=3118,y=47,z=1941,dx=2,dy=12,dz=2] if entity @s[scores={lifetime=36}] at @a run tp @a ~ ~1 ~
execute if entity @a[x=3118,y=47,z=1941,dx=2,dy=12,dz=2] if entity @s[scores={lifetime=39}] at @a run tp @a ~ ~1 ~
execute if entity @a[x=3118,y=47,z=1941,dx=2,dy=12,dz=2] if entity @s[scores={lifetime=42}] at @a run tp @a ~ ~1 ~
execute if entity @a[x=3118,y=47,z=1941,dx=2,dy=12,dz=2] if entity @s[scores={lifetime=45}] at @a run tp @a ~ ~1 ~
execute if entity @a[x=3118,y=47,z=1941,dx=2,dy=12,dz=2] if entity @s[scores={lifetime=48}] at @a run tp @a ~ ~1 ~
execute if entity @a[x=3118,y=47,z=1941,dx=2,dy=12,dz=2] if entity @s[scores={lifetime=51}] at @a run tp @a ~ ~1 ~
execute if entity @a[x=3118,y=47,z=1941,dx=2,dy=12,dz=2] if entity @s[scores={lifetime=54}] at @a run tp @a ~ ~1 ~
execute if entity @a[x=3118,y=47,z=1941,dx=2,dy=12,dz=2] if entity @s[scores={lifetime=57}] at @a run tp @a ~ ~1 ~
execute if entity @a[x=3118,y=47,z=1941,dx=2,dy=12,dz=2] if entity @s[scores={lifetime=60}] at @a run tp @a ~ ~1 ~
execute if entity @a[x=3118,y=47,z=1941,dx=2,dy=12,dz=2] if entity @s[scores={lifetime=63}] at @a run tp @a ~ ~1 ~

execute if entity @s[tag=Up1,scores={lifetime=30}] run clone 3115 36 1960 3117 39 1962 3118 43 1941
execute if entity @s[tag=Up1,scores={lifetime=33}] run clone 3115 36 1960 3117 39 1962 3118 44 1941
execute if entity @s[tag=Up1,scores={lifetime=36}] run clone 3115 36 1960 3117 39 1962 3118 45 1941
execute if entity @s[tag=Up1,scores={lifetime=39}] run clone 3115 36 1960 3117 39 1962 3118 46 1941
execute if entity @s[tag=Up1,scores={lifetime=42}] run clone 3115 36 1960 3117 39 1962 3118 47 1941
execute if entity @s[tag=Up1,scores={lifetime=45}] run clone 3115 36 1960 3117 39 1962 3118 48 1941
execute if entity @s[tag=Up1,scores={lifetime=48}] run clone 3115 36 1960 3117 39 1962 3118 49 1941
execute if entity @s[tag=Up1,scores={lifetime=51}] run clone 3115 36 1960 3117 39 1962 3118 50 1941
execute if entity @s[tag=Up1,scores={lifetime=54}] run clone 3115 36 1960 3117 39 1962 3118 51 1941
execute if entity @s[tag=Up1,scores={lifetime=57}] run clone 3115 36 1960 3117 39 1962 3118 52 1941
execute if entity @s[tag=Up1,scores={lifetime=60}] run clone 3115 36 1960 3117 39 1962 3118 53 1941
execute if entity @s[tag=Up1,scores={lifetime=63}] run clone 3115 36 1960 3117 39 1962 3118 54 1941

execute if entity @s[tag=Up1,scores={lifetime=93}] run clone 3115 40 1960 3117 37 1962 3118 54 1941
execute if entity @s[tag=Up1,scores={lifetime=96}] run clone 3115 40 1960 3117 37 1962 3118 53 1941
execute if entity @s[tag=Up1,scores={lifetime=99}] run clone 3115 40 1960 3117 37 1962 3118 52 1941
execute if entity @s[tag=Up1,scores={lifetime=102}] run clone 3115 40 1960 3117 37 1962 3118 51 1941
execute if entity @s[tag=Up1,scores={lifetime=105}] run clone 3115 40 1960 3117 37 1962 3118 50 1941
execute if entity @s[tag=Up1,scores={lifetime=108}] run clone 3115 40 1960 3117 37 1962 3118 49 1941
execute if entity @s[tag=Up1,scores={lifetime=111}] run clone 3115 40 1960 3117 37 1962 3118 48 1941
execute if entity @s[tag=Up1,scores={lifetime=114}] run clone 3115 40 1960 3117 37 1962 3118 47 1941
execute if entity @s[tag=Up1,scores={lifetime=117}] run clone 3115 40 1960 3117 37 1962 3118 46 1941
execute if entity @s[tag=Up1,scores={lifetime=120}] run clone 3115 40 1960 3117 37 1962 3118 45 1941
execute if entity @s[tag=Up1,scores={lifetime=123}] run clone 3115 40 1960 3117 37 1962 3118 44 1941
execute if entity @s[tag=Up1,scores={lifetime=126}] run clone 3115 40 1960 3117 37 1962 3118 43 1941

#2
execute if entity @a[x=3113,y=46,z=1961,dx=2,dz=2] unless entity @s[tag=Up1] run tag @s add Up2
execute if entity @s[tag=Up2] run scoreboard players add @s lifetime 1

execute if entity @a[x=3113,y=47,z=1961,dx=2,dy=12,dz=2] if entity @s[scores={lifetime=1}] at @a run playsound minecraft:block.basalt.step ambient @a ~ ~ ~ 1 .5
execute if entity @a[x=3113,y=47,z=1961,dx=2,dy=12,dz=2] if entity @s[scores={lifetime=30}] at @a run tp @a ~ ~1 ~
execute if entity @a[x=3113,y=47,z=1961,dx=2,dy=12,dz=2] if entity @s[scores={lifetime=33}] at @a run tp @a ~ ~1 ~
execute if entity @a[x=3113,y=47,z=1961,dx=2,dy=12,dz=2] if entity @s[scores={lifetime=36}] at @a run tp @a ~ ~1 ~
execute if entity @a[x=3113,y=47,z=1961,dx=2,dy=12,dz=2] if entity @s[scores={lifetime=39}] at @a run tp @a ~ ~1 ~
execute if entity @a[x=3113,y=47,z=1961,dx=2,dy=12,dz=2] if entity @s[scores={lifetime=42}] at @a run tp @a ~ ~1 ~
execute if entity @a[x=3113,y=47,z=1961,dx=2,dy=12,dz=2] if entity @s[scores={lifetime=45}] at @a run tp @a ~ ~1 ~
execute if entity @a[x=3113,y=47,z=1961,dx=2,dy=12,dz=2] if entity @s[scores={lifetime=48}] at @a run tp @a ~ ~1 ~
execute if entity @a[x=3113,y=47,z=1961,dx=2,dy=12,dz=2] if entity @s[scores={lifetime=51}] at @a run tp @a ~ ~1 ~
execute if entity @a[x=3113,y=47,z=1961,dx=2,dy=12,dz=2] if entity @s[scores={lifetime=54}] at @a run tp @a ~ ~1 ~
execute if entity @a[x=3113,y=47,z=1961,dx=2,dy=12,dz=2] if entity @s[scores={lifetime=57}] at @a run tp @a ~ ~1 ~
execute if entity @a[x=3113,y=47,z=1961,dx=2,dy=12,dz=2] if entity @s[scores={lifetime=60}] at @a run tp @a ~ ~1 ~
execute if entity @a[x=3113,y=47,z=1961,dx=2,dy=12,dz=2] if entity @s[scores={lifetime=63}] at @a run tp @a ~ ~1 ~

execute if entity @s[tag=Up2,scores={lifetime=30}] run clone 3115 36 1960 3117 39 1962 3113 43 1961
execute if entity @s[tag=Up2,scores={lifetime=33}] run clone 3115 36 1960 3117 39 1962 3113 44 1961
execute if entity @s[tag=Up2,scores={lifetime=36}] run clone 3115 36 1960 3117 39 1962 3113 45 1961
execute if entity @s[tag=Up2,scores={lifetime=39}] run clone 3115 36 1960 3117 39 1962 3113 46 1961
execute if entity @s[tag=Up2,scores={lifetime=42}] run clone 3115 36 1960 3117 39 1962 3113 47 1961
execute if entity @s[tag=Up2,scores={lifetime=45}] run clone 3115 36 1960 3117 39 1962 3113 48 1961
execute if entity @s[tag=Up2,scores={lifetime=48}] run clone 3115 36 1960 3117 39 1962 3113 49 1961
execute if entity @s[tag=Up2,scores={lifetime=51}] run clone 3115 36 1960 3117 39 1962 3113 50 1961
execute if entity @s[tag=Up2,scores={lifetime=54}] run clone 3115 36 1960 3117 39 1962 3113 51 1961
execute if entity @s[tag=Up2,scores={lifetime=57}] run clone 3115 36 1960 3117 39 1962 3113 52 1961
execute if entity @s[tag=Up2,scores={lifetime=60}] run clone 3115 36 1960 3117 39 1962 3113 53 1961
execute if entity @s[tag=Up2,scores={lifetime=63}] run clone 3115 36 1960 3117 39 1962 3113 54 1961

execute if entity @s[tag=Up2,scores={lifetime=93}] run clone 3115 40 1960 3117 37 1962 3113 54 1961
execute if entity @s[tag=Up2,scores={lifetime=96}] run clone 3115 40 1960 3117 37 1962 3113 53 1961
execute if entity @s[tag=Up2,scores={lifetime=99}] run clone 3115 40 1960 3117 37 1962 3113 52 1961
execute if entity @s[tag=Up2,scores={lifetime=102}] run clone 3115 40 1960 3117 37 1962 3113 51 1961
execute if entity @s[tag=Up2,scores={lifetime=105}] run clone 3115 40 1960 3117 37 1962 3113 50 1961
execute if entity @s[tag=Up2,scores={lifetime=108}] run clone 3115 40 1960 3117 37 1962 3113 49 1961
execute if entity @s[tag=Up2,scores={lifetime=111}] run clone 3115 40 1960 3117 37 1962 3113 48 1961
execute if entity @s[tag=Up2,scores={lifetime=114}] run clone 3115 40 1960 3117 37 1962 3113 47 1961
execute if entity @s[tag=Up2,scores={lifetime=117}] run clone 3115 40 1960 3117 37 1962 3113 46 1961
execute if entity @s[tag=Up2,scores={lifetime=120}] run clone 3115 40 1960 3117 37 1962 3113 45 1961
execute if entity @s[tag=Up2,scores={lifetime=123}] run clone 3115 40 1960 3117 37 1962 3113 44 1961
execute if entity @s[tag=Up2,scores={lifetime=126}] run clone 3115 40 1960 3117 37 1962 3113 43 1961

execute if entity @s[scores={lifetime=126..}] run tag @s remove Up1
execute if entity @s[scores={lifetime=126..}] run tag @s remove Up2
execute if entity @s[scores={lifetime=126..}] run scoreboard players set @s lifetime -1

#Down Platforms
#1
execute at @a if entity @a[x=3105,y=44,z=1937,dx=2,dy=3,dz=2] if block ~ ~-1 ~ minecraft:orange_concrete unless entity @s[scores={GameTimer=..10}] run scoreboard players remove @s GameTimer 1
execute unless entity @a[x=3105,y=44,z=1937,dx=2,dy=3,dz=2] unless entity @s[scores={GameTimer=100..}] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=99}] if entity @a[x=3105,y=44,z=1937,dx=2,dy=3,dz=2] at @a run playsound minecraft:block.basalt.step ambient @a ~ ~ ~ 1 .5
execute if entity @s[scores={GameTimer=99}] run clone 3117 40 1962 3115 37 1960 3105 43 1937
execute if entity @s[scores={GameTimer=70}] run clone 3117 40 1962 3115 38 1960 3105 43 1937
execute if entity @s[scores={GameTimer=50}] run clone 3117 40 1962 3115 39 1960 3105 43 1937
execute if entity @s[scores={GameTimer=30}] run clone 3117 40 1962 3115 39 1960 3105 42 1937
execute if entity @s[scores={GameTimer=10}] run fill 3105 42 1937 3107 42 1939 minecraft:netherrack

#2
execute at @a if entity @a[x=3111,y=44,z=1936,dx=2,dy=3,dz=2] if block ~ ~-1 ~ minecraft:orange_concrete unless entity @s[scores={time=..10}] run scoreboard players remove @s time 1
execute unless entity @a[x=3111,y=44,z=1936,dx=2,dy=3,dz=2] unless entity @s[scores={time=100..}] run scoreboard players add @s time 1
execute if entity @s[scores={time=99}] if entity @a[x=3111,y=44,z=1936,dx=2,dy=3,dz=2] at @a run playsound minecraft:block.basalt.step ambient @a ~ ~ ~ 1 .5
execute if entity @s[scores={time=99}] run clone 3117 40 1962 3115 37 1960 3111 43 1936
execute if entity @s[scores={time=70}] run clone 3117 40 1962 3115 38 1960 3111 43 1936
execute if entity @s[scores={time=50}] run clone 3117 40 1962 3115 39 1960 3111 43 1936
execute if entity @s[scores={time=30}] run clone 3117 40 1962 3115 39 1960 3111 42 1936
execute if entity @s[scores={time=10}] run fill 3111 42 1936 3113 42 1938 minecraft:netherrack

#3
execute at @a if entity @a[x=3103,y=44,z=1972,dx=2,dy=3,dz=2] if block ~ ~-1 ~ minecraft:orange_concrete unless entity @s[scores={CuccoCount=..10}] run scoreboard players remove @s CuccoCount 1
execute unless entity @a[x=3103,y=44,z=1972,dx=2,dy=3,dz=2] unless entity @s[scores={CuccoCount=100..}] run scoreboard players add @s CuccoCount 1
execute if entity @s[scores={CuccoCount=99}] if entity @a[x=3103,y=44,z=1972,dx=2,dy=3,dz=2] at @a run playsound minecraft:block.basalt.step ambient @a ~ ~ ~ 1 .5
execute if entity @s[scores={CuccoCount=99}] run clone 3117 40 1962 3115 37 1960 3103 43 1972
execute if entity @s[scores={CuccoCount=70}] run clone 3117 40 1962 3115 38 1960 3103 43 1972
execute if entity @s[scores={CuccoCount=50}] run clone 3117 40 1962 3115 39 1960 3103 43 1972
execute if entity @s[scores={CuccoCount=30}] run clone 3117 40 1962 3115 39 1960 3103 42 1972
execute if entity @s[scores={CuccoCount=10}] run fill 3103 42 1972 3105 42 1974 minecraft:netherrack

#4
execute at @a if entity @a[x=3119,y=44,z=1975,dx=2,dy=3,dz=2] if block ~ ~-1 ~ minecraft:orange_concrete unless entity @s[scores={ArrowCount=..10}] run scoreboard players remove @s ArrowCount 1
execute unless entity @a[x=3119,y=44,z=1975,dx=2,dy=3,dz=2] unless entity @s[scores={ArrowCount=100..}] run scoreboard players add @s ArrowCount 1
execute if entity @s[scores={ArrowCount=99}] if entity @a[x=3119,y=44,z=1975,dx=2,dy=3,dz=2] at @a run playsound minecraft:block.basalt.step ambient @a ~ ~ ~ 1 .5
execute if entity @s[scores={ArrowCount=99}] run clone 3117 40 1962 3115 37 1960 3119 43 1975
execute if entity @s[scores={ArrowCount=70}] run clone 3117 40 1962 3115 38 1960 3119 43 1975
execute if entity @s[scores={ArrowCount=50}] run clone 3117 40 1962 3115 39 1960 3119 43 1975
execute if entity @s[scores={ArrowCount=30}] run clone 3117 40 1962 3115 39 1960 3119 42 1975
execute if entity @s[scores={ArrowCount=10}] run fill 3119 42 1975 3121 42 1977 minecraft:netherrack
