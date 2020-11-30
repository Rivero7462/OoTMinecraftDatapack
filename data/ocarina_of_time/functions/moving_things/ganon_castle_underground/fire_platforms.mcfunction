#Small Platforms
#1
execute if block ~ ~-2 ~ minecraft:lime_glazed_terracotta unless entity @s[scores={lifetime=..10}] unless entity @e[type=area_effect_cloud,tag=Hookshot] run scoreboard players remove @s lifetime 1
execute if block ~ ~-3 ~ minecraft:lime_glazed_terracotta unless entity @s[scores={lifetime=..10}] unless entity @e[type=area_effect_cloud,tag=Hookshot] run scoreboard players remove @s lifetime 1
execute if block ~ ~-4 ~ minecraft:lime_glazed_terracotta unless entity @s[scores={lifetime=..10}] unless entity @e[type=area_effect_cloud,tag=Hookshot] run scoreboard players remove @s lifetime 1
execute if block ~ ~-5 ~ minecraft:lime_glazed_terracotta unless entity @s[scores={lifetime=..10}] unless entity @e[type=area_effect_cloud,tag=Hookshot] run scoreboard players remove @s lifetime 1
execute if block ~ ~-6 ~ minecraft:lime_glazed_terracotta unless entity @s[scores={lifetime=..10}] unless entity @e[type=area_effect_cloud,tag=Hookshot] run scoreboard players remove @s lifetime 1
execute unless block ~ ~-6 ~ minecraft:lime_glazed_terracotta unless block ~ ~-5 ~ minecraft:lime_glazed_terracotta unless block ~ ~-4 ~ minecraft:lime_glazed_terracotta unless block ~ ~-3 ~ minecraft:lime_glazed_terracotta unless block ~ ~-2 ~ minecraft:lime_glazed_terracotta unless entity @s[scores={lifetime=100..}] run scoreboard players add @s lifetime 1

execute if entity @s[scores={lifetime=98}] if block ~ ~-2 ~ minecraft:lime_glazed_terracotta run playsound minecraft:block.basalt.step ambient @a ~ ~ ~ 1 .5
execute if entity @s[scores={lifetime=98}] if block ~ ~-3 ~ minecraft:lime_glazed_terracotta run playsound minecraft:block.basalt.step ambient @a ~ ~ ~ 1 .5
execute if entity @s[scores={lifetime=98}] if block ~ ~-4 ~ minecraft:lime_glazed_terracotta run playsound minecraft:block.basalt.step ambient @a ~ ~ ~ 1 .5
execute if entity @s[scores={lifetime=98}] if block ~ ~-5 ~ minecraft:lime_glazed_terracotta run playsound minecraft:block.basalt.step ambient @a ~ ~ ~ 1 .5
execute if entity @s[scores={lifetime=98}] if block ~ ~-6 ~ minecraft:lime_glazed_terracotta run playsound minecraft:block.basalt.step ambient @a ~ ~ ~ 1 .5
execute if entity @s[scores={lifetime=99}] run clone -516 21 1904 -511 19 1909 -516 28 1904
execute if entity @s[scores={lifetime=70}] run clone -516 20 1904 -511 22 1909 -516 28 1904
execute if entity @s[scores={lifetime=50}] run clone -516 21 1904 -511 22 1909 -516 28 1904
execute if entity @s[scores={lifetime=30}] run clone -506 19 1902 -501 20 1907 -516 27 1904
execute if entity @s[scores={lifetime=10}] run fill -516 27 1904 -511 27 1909 minecraft:netherrack replace minecraft:orange_concrete
#2
execute if block ~ ~-2 ~ minecraft:light_blue_glazed_terracotta unless entity @s[scores={time=..10}] unless entity @e[type=area_effect_cloud,tag=Hookshot] run scoreboard players remove @s time 1
execute if block ~ ~-3 ~ minecraft:light_blue_glazed_terracotta unless entity @s[scores={time=..10}] unless entity @e[type=area_effect_cloud,tag=Hookshot] run scoreboard players remove @s time 1
execute if block ~ ~-4 ~ minecraft:light_blue_glazed_terracotta unless entity @s[scores={time=..10}] unless entity @e[type=area_effect_cloud,tag=Hookshot] run scoreboard players remove @s time 1
execute if block ~ ~-5 ~ minecraft:light_blue_glazed_terracotta unless entity @s[scores={time=..10}] unless entity @e[type=area_effect_cloud,tag=Hookshot] run scoreboard players remove @s time 1
execute if block ~ ~-6 ~ minecraft:light_blue_glazed_terracotta unless entity @s[scores={time=..10}] unless entity @e[type=area_effect_cloud,tag=Hookshot] run scoreboard players remove @s time 1
execute unless block ~ ~-6 ~ minecraft:light_blue_glazed_terracotta unless block ~ ~-5 ~ minecraft:light_blue_glazed_terracotta unless block ~ ~-4 ~ minecraft:light_blue_glazed_terracotta unless block ~ ~-3 ~ minecraft:light_blue_glazed_terracotta unless block ~ ~-2 ~ minecraft:light_blue_glazed_terracotta unless entity @s[scores={time=100..}] run scoreboard players add @s time 1

execute if entity @s[scores={time=98}] if block ~ ~-2 ~ minecraft:light_blue_glazed_terracotta run playsound minecraft:block.basalt.step ambient @a ~ ~ ~ 1 .5
execute if entity @s[scores={time=98}] if block ~ ~-3 ~ minecraft:light_blue_glazed_terracotta run playsound minecraft:block.basalt.step ambient @a ~ ~ ~ 1 .5
execute if entity @s[scores={time=98}] if block ~ ~-4 ~ minecraft:light_blue_glazed_terracotta run playsound minecraft:block.basalt.step ambient @a ~ ~ ~ 1 .5
execute if entity @s[scores={time=98}] if block ~ ~-5 ~ minecraft:light_blue_glazed_terracotta run playsound minecraft:block.basalt.step ambient @a ~ ~ ~ 1 .5
execute if entity @s[scores={time=98}] if block ~ ~-6 ~ minecraft:light_blue_glazed_terracotta run playsound minecraft:block.basalt.step ambient @a ~ ~ ~ 1 .5
execute if entity @s[scores={time=99}] run clone -513 19 1920 -508 21 1925 -513 28 1920
execute if entity @s[scores={time=70}] run clone -513 20 1920 -508 22 1925 -513 28 1920
execute if entity @s[scores={time=50}] run clone -513 21 1920 -508 22 1925 -513 28 1920
execute if entity @s[scores={time=30}] run clone -505 21 1920 -500 22 1925 -513 27 1920
execute if entity @s[scores={time=10}] run fill -513 27 1920 -508 27 1925 minecraft:netherrack
#3
execute if block ~ ~-2 ~ minecraft:purple_glazed_terracotta unless entity @s[scores={ArrowCount=..10}] unless entity @e[type=area_effect_cloud,tag=Hookshot] run scoreboard players remove @s ArrowCount 1
execute if block ~ ~-3 ~ minecraft:purple_glazed_terracotta unless entity @s[scores={ArrowCount=..10}] unless entity @e[type=area_effect_cloud,tag=Hookshot] run scoreboard players remove @s ArrowCount 1
execute if block ~ ~-4 ~ minecraft:purple_glazed_terracotta unless entity @s[scores={ArrowCount=..10}] unless entity @e[type=area_effect_cloud,tag=Hookshot] run scoreboard players remove @s ArrowCount 1
execute if block ~ ~-5 ~ minecraft:purple_glazed_terracotta unless entity @s[scores={ArrowCount=..10}] unless entity @e[type=area_effect_cloud,tag=Hookshot] run scoreboard players remove @s ArrowCount 1
execute if block ~ ~-6 ~ minecraft:purple_glazed_terracotta unless entity @s[scores={ArrowCount=..10}] unless entity @e[type=area_effect_cloud,tag=Hookshot] run scoreboard players remove @s ArrowCount 1
execute unless block ~ ~-6 ~ minecraft:purple_glazed_terracotta unless block ~ ~-5 ~ minecraft:purple_glazed_terracotta unless block ~ ~-4 ~ minecraft:purple_glazed_terracotta unless block ~ ~-3 ~ minecraft:purple_glazed_terracotta unless block ~ ~-2 ~ minecraft:purple_glazed_terracotta unless entity @s[scores={ArrowCount=100..}] run scoreboard players add @s ArrowCount 1

execute if entity @s[scores={ArrowCount=98}] if block ~ ~-2 ~ minecraft:purple_glazed_terracotta run playsound minecraft:block.basalt.step ambient @a ~ ~ ~ 1 .5
execute if entity @s[scores={ArrowCount=98}] if block ~ ~-3 ~ minecraft:purple_glazed_terracotta run playsound minecraft:block.basalt.step ambient @a ~ ~ ~ 1 .5
execute if entity @s[scores={ArrowCount=98}] if block ~ ~-4 ~ minecraft:purple_glazed_terracotta run playsound minecraft:block.basalt.step ambient @a ~ ~ ~ 1 .5
execute if entity @s[scores={ArrowCount=98}] if block ~ ~-5 ~ minecraft:purple_glazed_terracotta run playsound minecraft:block.basalt.step ambient @a ~ ~ ~ 1 .5
execute if entity @s[scores={ArrowCount=98}] if block ~ ~-6 ~ minecraft:purple_glazed_terracotta run playsound minecraft:block.basalt.step ambient @a ~ ~ ~ 1 .5
execute if entity @s[scores={ArrowCount=99}] run clone -513 19 1920 -508 21 1925 -547 28 1908
execute if entity @s[scores={ArrowCount=70}] run clone -513 20 1920 -508 22 1925 -547 28 1908
execute if entity @s[scores={ArrowCount=50}] run clone -513 21 1920 -508 22 1925 -547 28 1908
execute if entity @s[scores={ArrowCount=30}] run clone -505 21 1920 -500 22 1925 -547 27 1908
execute if entity @s[scores={ArrowCount=10}] run fill -547 27 1908 -542 27 1913 minecraft:netherrack

#Big Down Platform
execute if block ~ ~-2 ~ minecraft:yellow_glazed_terracotta unless entity @a[nbt={Inventory:[{Slot:100b,tag:{HoverBoots:1b}}]}] if entity @s[scores={GameTimer=150..}] unless entity @e[type=area_effect_cloud,tag=Hookshot] run scoreboard players remove @s GameTimer 1
execute if block ~ ~-3 ~ minecraft:yellow_glazed_terracotta unless entity @a[nbt={Inventory:[{Slot:100b,tag:{HoverBoots:1b}}]}] if entity @s[scores={GameTimer=150..}] unless entity @e[type=area_effect_cloud,tag=Hookshot] run scoreboard players remove @s GameTimer 1
execute if block ~ ~-4 ~ minecraft:yellow_glazed_terracotta unless entity @a[nbt={Inventory:[{Slot:100b,tag:{HoverBoots:1b}}]}] if entity @s[scores={GameTimer=150..}] unless entity @e[type=area_effect_cloud,tag=Hookshot] run scoreboard players remove @s GameTimer 1
execute if block ~ ~-5 ~ minecraft:yellow_glazed_terracotta unless entity @a[nbt={Inventory:[{Slot:100b,tag:{HoverBoots:1b}}]}] if entity @s[scores={GameTimer=150..}] unless entity @e[type=area_effect_cloud,tag=Hookshot] run scoreboard players remove @s GameTimer 1
execute if block ~ ~-6 ~ minecraft:yellow_glazed_terracotta unless entity @a[nbt={Inventory:[{Slot:100b,tag:{HoverBoots:1b}}]}] if entity @s[scores={GameTimer=150..}] unless entity @e[type=area_effect_cloud,tag=Hookshot] run scoreboard players remove @s GameTimer 1

execute if block ~ ~-2 ~ minecraft:yellow_glazed_terracotta unless entity @s[scores={GameTimer=..10}] unless entity @s[scores={GameTimer=150..}] unless entity @e[type=area_effect_cloud,tag=Hookshot] run scoreboard players remove @s GameTimer 1
execute if block ~ ~-3 ~ minecraft:yellow_glazed_terracotta unless entity @s[scores={GameTimer=..10}] unless entity @s[scores={GameTimer=150..}] unless entity @e[type=area_effect_cloud,tag=Hookshot] run scoreboard players remove @s GameTimer 1
execute if block ~ ~-4 ~ minecraft:yellow_glazed_terracotta unless entity @s[scores={GameTimer=..10}] unless entity @s[scores={GameTimer=150..}] unless entity @e[type=area_effect_cloud,tag=Hookshot] run scoreboard players remove @s GameTimer 1
execute if block ~ ~-5 ~ minecraft:yellow_glazed_terracotta unless entity @s[scores={GameTimer=..10}] unless entity @s[scores={GameTimer=150..}] unless entity @e[type=area_effect_cloud,tag=Hookshot] run scoreboard players remove @s GameTimer 1
execute if block ~ ~-6 ~ minecraft:yellow_glazed_terracotta unless entity @s[scores={GameTimer=..10}] unless entity @s[scores={GameTimer=150..}] unless entity @e[type=area_effect_cloud,tag=Hookshot] run scoreboard players remove @s GameTimer 1
execute unless block ~ ~-6 ~ minecraft:yellow_glazed_terracotta unless block ~ ~-5 ~ minecraft:yellow_glazed_terracotta unless block ~ ~-4 ~ minecraft:yellow_glazed_terracotta unless block ~ ~-3 ~ minecraft:yellow_glazed_terracotta unless block ~ ~-2 ~ minecraft:yellow_glazed_terracotta unless entity @s[scores={GameTimer=150..}] run scoreboard players add @s GameTimer 1

#Sound
execute if entity @s[scores={GameTimer=148}] if block ~ ~-2 ~ minecraft:yellow_glazed_terracotta run playsound minecraft:block.basalt.step ambient @a ~ ~ ~ 1 .5
execute if entity @s[scores={GameTimer=148}] if block ~ ~-3 ~ minecraft:yellow_glazed_terracotta run playsound minecraft:block.basalt.step ambient @a ~ ~ ~ 1 .5
execute if entity @s[scores={GameTimer=148}] if block ~ ~-4 ~ minecraft:yellow_glazed_terracotta run playsound minecraft:block.basalt.step ambient @a ~ ~ ~ 1 .5
execute if entity @s[scores={GameTimer=148}] if block ~ ~-5 ~ minecraft:yellow_glazed_terracotta run playsound minecraft:block.basalt.step ambient @a ~ ~ ~ 1 .5
execute if entity @s[scores={GameTimer=148}] if block ~ ~-6 ~ minecraft:yellow_glazed_terracotta run playsound minecraft:block.basalt.step ambient @a ~ ~ ~ 1 .5

#Layer 1
execute if entity @s[scores={GameTimer=149}] run fill -515 30 1939 -515 30 1939 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -514 30 1938 -516 30 1938 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -515 30 1937 -516 30 1937 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -516 30 1936 -516 30 1935 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -517 30 1936 -517 30 1933 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -518 30 1935 -518 30 1929 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -519 30 1933 -519 30 1930 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -520 30 1930 -520 30 1932 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -521 30 1933 -521 30 1931 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -522 30 1932 -522 30 1933 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -523 30 1932 -523 30 1934 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -524 30 1933 -524 30 1933 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -517 30 1930 -517 30 1928 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -516 30 1929 -516 30 1925 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -515 30 1929 -515 30 1926 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -514 30 1928 -514 30 1927 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -517 30 1926 -517 30 1923 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -518 30 1925 -518 30 1922 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -519 30 1923 -519 30 1920 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -520 30 1922 -520 30 1919 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -521 30 1920 -521 30 1917 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -522 30 1919 -522 30 1916 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -523 30 1917 -523 30 1914 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -524 30 1916 -524 30 1913 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -525 30 1913 -525 30 1915 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -526 30 1916 -526 30 1914 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -527 30 1916 -530 30 1916 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -528 30 1917 -531 30 1917 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -529 30 1918 -532 30 1918 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -531 30 1919 -534 30 1919 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -532 30 1920 -535 30 1920 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -533 30 1921 -535 30 1921 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -534 30 1922 -534 30 1923 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -533 30 1922 -533 30 1924 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -532 30 1923 -532 30 1926 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -531 30 1924 -531 30 1927 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -530 30 1926 -530 30 1929 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -529 30 1927 -529 30 1930 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -528 30 1929 -528 30 1930 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -527 30 1915 -531 30 1915 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -530 30 1914 -532 30 1914 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -531 30 1913 -532 30 1913 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -531 30 1912 -533 30 1912 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -532 30 1911 -538 30 1911 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -537 30 1912 -536 30 1912 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -533 30 1910 -538 30 1910 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -537 30 1909 -539 30 1909 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -537 30 1908 -539 30 1908 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -538 30 1907 -540 30 1907 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -539 30 1906 -541 30 1905 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -540 30 1904 -542 30 1904 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -541 30 1903 -543 30 1903 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -542 30 1902 -541 30 1902 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -534 30 1909 -532 30 1909 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -533 30 1908 -531 30 1907 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -532 30 1906 -534 30 1906 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -533 30 1905 -535 30 1904 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -534 30 1903 -536 30 1903 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -535 30 1902 -537 30 1902 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -536 30 1901 -537 30 1901 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -538 30 1900 -535 30 1900 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -537 30 1899 -533 30 1899 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -533 30 1898 -535 30 1898 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=149}] run fill -534 30 1897 -534 30 1897 minecraft:orange_concrete

execute if entity @s[scores={GameTimer=149}] run fill -515 29 1939 -515 29 1939 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -514 29 1938 -516 29 1938 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -515 29 1937 -516 29 1937 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -516 29 1936 -516 29 1935 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -517 29 1936 -517 29 1933 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -518 29 1935 -518 29 1929 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -519 29 1933 -519 29 1930 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -520 29 1930 -520 29 1932 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -521 29 1933 -521 29 1931 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -522 29 1932 -522 29 1933 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -523 29 1932 -523 29 1934 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -524 29 1933 -524 29 1933 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -517 29 1930 -517 29 1928 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -516 29 1929 -516 29 1925 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -515 29 1929 -515 29 1926 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -514 29 1928 -514 29 1927 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -517 29 1926 -517 29 1923 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -518 29 1925 -518 29 1922 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -519 29 1923 -519 29 1920 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -520 29 1922 -520 29 1919 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -521 29 1920 -521 29 1917 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -522 29 1919 -522 29 1916 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -523 29 1917 -523 29 1914 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -524 29 1916 -524 29 1913 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -525 29 1913 -525 29 1915 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -526 29 1916 -526 29 1914 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -527 29 1916 -530 29 1916 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -528 29 1917 -531 29 1917 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -529 29 1918 -532 29 1918 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -531 29 1919 -534 29 1919 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -532 29 1920 -535 29 1920 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -533 29 1921 -535 29 1921 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -534 29 1922 -534 29 1923 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -533 29 1922 -533 29 1924 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -532 29 1923 -532 29 1926 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -531 29 1924 -531 29 1927 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -530 29 1926 -530 29 1929 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -529 29 1927 -529 29 1930 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -528 29 1929 -528 29 1930 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -527 29 1915 -531 29 1915 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -530 29 1914 -532 29 1914 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -531 29 1913 -532 29 1913 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -531 29 1912 -533 29 1912 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -532 29 1911 -538 29 1911 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -537 29 1912 -536 29 1912 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -533 29 1910 -538 29 1910 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -537 29 1909 -539 29 1909 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -537 29 1908 -539 29 1908 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -538 29 1907 -540 29 1907 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -539 29 1906 -541 29 1905 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -540 29 1904 -542 29 1904 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -541 29 1903 -543 29 1903 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -542 29 1902 -541 29 1902 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -534 29 1909 -532 29 1909 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -533 29 1908 -531 29 1907 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -532 29 1906 -534 29 1906 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -533 29 1905 -535 29 1904 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -534 29 1903 -536 29 1903 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -535 29 1902 -537 29 1902 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -536 29 1901 -537 29 1901 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -538 29 1900 -535 29 1900 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -537 29 1899 -533 29 1899 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -533 29 1898 -535 29 1898 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=149}] run fill -534 29 1897 -534 29 1897 minecraft:chiseled_red_sandstone
#2
execute if entity @s[scores={GameTimer=110}] run fill -515 30 1939 -515 30 1939 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -514 30 1938 -516 30 1938 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -515 30 1937 -516 30 1937 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -516 30 1936 -516 30 1935 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -517 30 1936 -517 30 1933 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -518 30 1935 -518 30 1929 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -519 30 1933 -519 30 1930 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -520 30 1930 -520 30 1932 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -521 30 1933 -521 30 1931 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -522 30 1932 -522 30 1933 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -523 30 1932 -523 30 1934 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -524 30 1933 -524 30 1933 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -517 30 1930 -517 30 1928 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -516 30 1929 -516 30 1925 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -515 30 1929 -515 30 1926 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -514 30 1928 -514 30 1927 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -517 30 1926 -517 30 1923 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -518 30 1925 -518 30 1922 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -519 30 1923 -519 30 1920 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -520 30 1922 -520 30 1919 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -521 30 1920 -521 30 1917 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -522 30 1919 -522 30 1916 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -523 30 1917 -523 30 1914 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -524 30 1916 -524 30 1913 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -525 30 1913 -525 30 1915 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -526 30 1916 -526 30 1914 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -527 30 1916 -530 30 1916 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -528 30 1917 -531 30 1917 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -529 30 1918 -532 30 1918 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -531 30 1919 -534 30 1919 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -532 30 1920 -535 30 1920 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -533 30 1921 -535 30 1921 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -534 30 1922 -534 30 1923 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -533 30 1922 -533 30 1924 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -532 30 1923 -532 30 1926 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -531 30 1924 -531 30 1927 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -530 30 1926 -530 30 1929 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -529 30 1927 -529 30 1930 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -528 30 1929 -528 30 1930 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -527 30 1915 -531 30 1915 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -530 30 1914 -532 30 1914 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -531 30 1913 -532 30 1913 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -531 30 1912 -533 30 1912 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -532 30 1911 -538 30 1911 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -537 30 1912 -536 30 1912 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -533 30 1910 -538 30 1910 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -537 30 1909 -539 30 1909 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -537 30 1908 -539 30 1908 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -538 30 1907 -540 30 1907 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -539 30 1906 -541 30 1905 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -540 30 1904 -542 30 1904 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -541 30 1903 -543 30 1903 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -542 30 1902 -541 30 1902 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -534 30 1909 -532 30 1909 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -533 30 1908 -531 30 1907 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -532 30 1906 -534 30 1906 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -533 30 1905 -535 30 1904 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -534 30 1903 -536 30 1903 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -535 30 1902 -537 30 1902 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -536 30 1901 -537 30 1901 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -538 30 1900 -535 30 1900 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -537 30 1899 -533 30 1899 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -533 30 1898 -535 30 1898 minecraft:air
execute if entity @s[scores={GameTimer=110}] run fill -534 30 1897 -534 30 1897 minecraft:air

execute if entity @s[scores={GameTimer=110}] run fill -515 29 1939 -515 29 1939 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -514 29 1938 -516 29 1938 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -515 29 1937 -516 29 1937 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -516 29 1936 -516 29 1935 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -517 29 1936 -517 29 1933 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -518 29 1935 -518 29 1929 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -519 29 1933 -519 29 1930 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -520 29 1930 -520 29 1932 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -521 29 1933 -521 29 1931 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -522 29 1932 -522 29 1933 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -523 29 1932 -523 29 1934 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -524 29 1933 -524 29 1933 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -517 29 1930 -517 29 1928 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -516 29 1929 -516 29 1925 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -515 29 1929 -515 29 1926 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -514 29 1928 -514 29 1927 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -517 29 1926 -517 29 1923 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -518 29 1925 -518 29 1922 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -519 29 1923 -519 29 1920 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -520 29 1922 -520 29 1919 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -521 29 1920 -521 29 1917 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -522 29 1919 -522 29 1916 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -523 29 1917 -523 29 1914 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -524 29 1916 -524 29 1913 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -525 29 1913 -525 29 1915 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -526 29 1916 -526 29 1914 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -527 29 1916 -530 29 1916 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -528 29 1917 -531 29 1917 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -529 29 1918 -532 29 1918 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -531 29 1919 -534 29 1919 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -532 29 1920 -535 29 1920 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -533 29 1921 -535 29 1921 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -534 29 1922 -534 29 1923 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -533 29 1922 -533 29 1924 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -532 29 1923 -532 29 1926 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -531 29 1924 -531 29 1927 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -530 29 1926 -530 29 1929 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -529 29 1927 -529 29 1930 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -528 29 1929 -528 29 1930 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -527 29 1915 -531 29 1915 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -530 29 1914 -532 29 1914 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -531 29 1913 -532 29 1913 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -531 29 1912 -533 29 1912 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -532 29 1911 -538 29 1911 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -537 29 1912 -536 29 1912 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -533 29 1910 -538 29 1910 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -537 29 1909 -539 29 1909 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -537 29 1908 -539 29 1908 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -538 29 1907 -540 29 1907 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -539 29 1906 -541 29 1905 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -540 29 1904 -542 29 1904 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -541 29 1903 -543 29 1903 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -542 29 1902 -541 29 1902 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -534 29 1909 -532 29 1909 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -533 29 1908 -531 29 1907 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -532 29 1906 -534 29 1906 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -533 29 1905 -535 29 1904 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -534 29 1903 -536 29 1903 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -535 29 1902 -537 29 1902 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -536 29 1901 -537 29 1901 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -538 29 1900 -535 29 1900 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -537 29 1899 -533 29 1899 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -533 29 1898 -535 29 1898 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=110}] run fill -534 29 1897 -534 29 1897 minecraft:orange_concrete

execute if entity @s[scores={GameTimer=110}] run fill -515 28 1939 -515 28 1939 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -514 28 1938 -516 28 1938 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -515 28 1937 -516 28 1937 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -516 28 1936 -516 28 1935 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -517 28 1936 -517 28 1933 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -518 28 1935 -518 28 1929 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -519 28 1933 -519 28 1930 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -520 28 1930 -520 28 1932 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -521 28 1933 -521 28 1931 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -522 28 1932 -522 28 1933 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -523 28 1932 -523 28 1934 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -524 28 1933 -524 28 1933 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -517 28 1930 -517 28 1928 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -516 28 1929 -516 28 1925 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -515 28 1929 -515 28 1926 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -514 28 1928 -514 28 1927 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -517 28 1926 -517 28 1923 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -518 28 1925 -518 28 1922 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -519 28 1923 -519 28 1920 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -520 28 1922 -520 28 1919 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -521 28 1920 -521 28 1917 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -522 28 1919 -522 28 1916 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -523 28 1917 -523 28 1914 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -524 28 1916 -524 28 1913 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -525 28 1913 -525 28 1915 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -526 28 1916 -526 28 1914 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -527 28 1916 -530 28 1916 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -528 28 1917 -531 28 1917 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -529 28 1918 -532 28 1918 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -531 28 1919 -534 28 1919 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -532 28 1920 -535 28 1920 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -533 28 1921 -535 28 1921 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -534 28 1922 -534 28 1923 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -533 28 1922 -533 28 1924 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -532 28 1923 -532 28 1926 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -531 28 1924 -531 28 1927 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -530 28 1926 -530 28 1929 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -529 28 1927 -529 28 1930 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -528 28 1929 -528 28 1930 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -527 28 1915 -531 28 1915 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -530 28 1914 -532 28 1914 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -531 28 1913 -532 28 1913 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -531 28 1912 -533 28 1912 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -532 28 1911 -538 28 1911 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -537 28 1912 -536 28 1912 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -533 28 1910 -538 28 1910 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -537 28 1909 -539 28 1909 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -537 28 1908 -539 28 1908 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -538 28 1907 -540 28 1907 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -539 28 1906 -541 28 1905 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -540 28 1904 -542 28 1904 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -541 28 1903 -543 28 1903 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -542 28 1902 -541 28 1902 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -534 28 1909 -532 28 1909 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -533 28 1908 -531 28 1907 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -532 28 1906 -534 28 1906 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -533 28 1905 -535 28 1904 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -534 28 1903 -536 28 1903 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -535 28 1902 -537 28 1902 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -536 28 1901 -537 28 1901 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -538 28 1900 -535 28 1900 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -537 28 1899 -533 28 1899 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -533 28 1898 -535 28 1898 minecraft:chiseled_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill -534 28 1897 -534 28 1897 minecraft:chiseled_red_sandstone
#3
execute if entity @s[scores={GameTimer=70}] run fill -515 29 1939 -515 29 1939 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -514 29 1938 -516 29 1938 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -515 29 1937 -516 29 1937 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -516 29 1936 -516 29 1935 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -517 29 1936 -517 29 1933 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -518 29 1935 -518 29 1929 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -519 29 1933 -519 29 1930 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -520 29 1930 -520 29 1932 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -521 29 1933 -521 29 1931 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -522 29 1932 -522 29 1933 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -523 29 1932 -523 29 1934 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -524 29 1933 -524 29 1933 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -517 29 1930 -517 29 1928 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -516 29 1929 -516 29 1925 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -515 29 1929 -515 29 1926 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -514 29 1928 -514 29 1927 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -517 29 1926 -517 29 1923 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -518 29 1925 -518 29 1922 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -519 29 1923 -519 29 1920 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -520 29 1922 -520 29 1919 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -521 29 1920 -521 29 1917 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -522 29 1919 -522 29 1916 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -523 29 1917 -523 29 1914 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -524 29 1916 -524 29 1913 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -525 29 1913 -525 29 1915 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -526 29 1916 -526 29 1914 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -527 29 1916 -530 29 1916 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -528 29 1917 -531 29 1917 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -529 29 1918 -532 29 1918 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -531 29 1919 -534 29 1919 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -532 29 1920 -535 29 1920 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -533 29 1921 -535 29 1921 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -534 29 1922 -534 29 1923 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -533 29 1922 -533 29 1924 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -532 29 1923 -532 29 1926 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -531 29 1924 -531 29 1927 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -530 29 1926 -530 29 1929 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -529 29 1927 -529 29 1930 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -528 29 1929 -528 29 1930 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -527 29 1915 -531 29 1915 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -530 29 1914 -532 29 1914 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -531 29 1913 -532 29 1913 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -531 29 1912 -533 29 1912 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -532 29 1911 -538 29 1911 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -537 29 1912 -536 29 1912 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -533 29 1910 -538 29 1910 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -537 29 1909 -539 29 1909 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -537 29 1908 -539 29 1908 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -538 29 1907 -540 29 1907 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -539 29 1906 -541 29 1905 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -540 29 1904 -542 29 1904 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -541 29 1903 -543 29 1903 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -542 29 1902 -541 29 1902 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -534 29 1909 -532 29 1909 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -533 29 1908 -531 29 1907 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -532 29 1906 -534 29 1906 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -533 29 1905 -535 29 1904 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -534 29 1903 -536 29 1903 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -535 29 1902 -537 29 1902 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -536 29 1901 -537 29 1901 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -538 29 1900 -535 29 1900 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -537 29 1899 -533 29 1899 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -533 29 1898 -535 29 1898 minecraft:air
execute if entity @s[scores={GameTimer=70}] run fill -534 29 1897 -534 29 1897 minecraft:air

execute if entity @s[scores={GameTimer=70}] run fill -515 28 1939 -515 28 1939 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -514 28 1938 -516 28 1938 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -515 28 1937 -516 28 1937 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -516 28 1936 -516 28 1935 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -517 28 1936 -517 28 1933 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -518 28 1935 -518 28 1929 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -519 28 1933 -519 28 1930 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -520 28 1930 -520 28 1932 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -521 28 1933 -521 28 1931 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -522 28 1932 -522 28 1933 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -523 28 1932 -523 28 1934 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -524 28 1933 -524 28 1933 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -517 28 1930 -517 28 1928 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -516 28 1929 -516 28 1925 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -515 28 1929 -515 28 1926 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -514 28 1928 -514 28 1927 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -517 28 1926 -517 28 1923 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -518 28 1925 -518 28 1922 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -519 28 1923 -519 28 1920 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -520 28 1922 -520 28 1919 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -521 28 1920 -521 28 1917 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -522 28 1919 -522 28 1916 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -523 28 1917 -523 28 1914 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -524 28 1916 -524 28 1913 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -525 28 1913 -525 28 1915 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -526 28 1916 -526 28 1914 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -527 28 1916 -530 28 1916 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -528 28 1917 -531 28 1917 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -529 28 1918 -532 28 1918 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -531 28 1919 -534 28 1919 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -532 28 1920 -535 28 1920 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -533 28 1921 -535 28 1921 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -534 28 1922 -534 28 1923 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -533 28 1922 -533 28 1924 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -532 28 1923 -532 28 1926 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -531 28 1924 -531 28 1927 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -530 28 1926 -530 28 1929 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -529 28 1927 -529 28 1930 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -528 28 1929 -528 28 1930 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -527 28 1915 -531 28 1915 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -530 28 1914 -532 28 1914 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -531 28 1913 -532 28 1913 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -531 28 1912 -533 28 1912 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -532 28 1911 -538 28 1911 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -537 28 1912 -536 28 1912 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -533 28 1910 -538 28 1910 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -537 28 1909 -539 28 1909 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -537 28 1908 -539 28 1908 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -538 28 1907 -540 28 1907 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -539 28 1906 -541 28 1905 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -540 28 1904 -542 28 1904 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -541 28 1903 -543 28 1903 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -542 28 1902 -541 28 1902 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -534 28 1909 -532 28 1909 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -533 28 1908 -531 28 1907 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -532 28 1906 -534 28 1906 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -533 28 1905 -535 28 1904 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -534 28 1903 -536 28 1903 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -535 28 1902 -537 28 1902 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -536 28 1901 -537 28 1901 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -538 28 1900 -535 28 1900 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -537 28 1899 -533 28 1899 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -533 28 1898 -535 28 1898 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=70}] run fill -534 28 1897 -534 28 1897 minecraft:orange_concrete

#4
execute if entity @s[scores={GameTimer=40}] run fill -515 28 1939 -515 28 1939 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -514 28 1938 -516 28 1938 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -515 28 1937 -516 28 1937 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -516 28 1936 -516 28 1935 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -517 28 1936 -517 28 1933 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -518 28 1935 -518 28 1929 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -519 28 1933 -519 28 1930 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -520 28 1930 -520 28 1932 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -521 28 1933 -521 28 1931 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -522 28 1932 -522 28 1933 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -523 28 1932 -523 28 1934 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -524 28 1933 -524 28 1933 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -517 28 1930 -517 28 1928 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -516 28 1929 -516 28 1925 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -515 28 1929 -515 28 1926 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -514 28 1928 -514 28 1927 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -517 28 1926 -517 28 1923 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -518 28 1925 -518 28 1922 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -519 28 1923 -519 28 1920 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -520 28 1922 -520 28 1919 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -521 28 1920 -521 28 1917 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -522 28 1919 -522 28 1916 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -523 28 1917 -523 28 1914 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -524 28 1916 -524 28 1913 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -525 28 1913 -525 28 1915 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -526 28 1916 -526 28 1914 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -527 28 1916 -530 28 1916 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -528 28 1917 -531 28 1917 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -529 28 1918 -532 28 1918 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -531 28 1919 -534 28 1919 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -532 28 1920 -535 28 1920 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -533 28 1921 -535 28 1921 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -534 28 1922 -534 28 1923 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -533 28 1922 -533 28 1924 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -532 28 1923 -532 28 1926 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -531 28 1924 -531 28 1927 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -530 28 1926 -530 28 1929 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -529 28 1927 -529 28 1930 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -528 28 1929 -528 28 1930 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -527 28 1915 -531 28 1915 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -530 28 1914 -532 28 1914 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -531 28 1913 -532 28 1913 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -531 28 1912 -533 28 1912 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -532 28 1911 -538 28 1911 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -537 28 1912 -536 28 1912 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -533 28 1910 -538 28 1910 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -537 28 1909 -539 28 1909 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -537 28 1908 -539 28 1908 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -538 28 1907 -540 28 1907 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -539 28 1906 -541 28 1905 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -540 28 1904 -542 28 1904 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -541 28 1903 -543 28 1903 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -542 28 1902 -541 28 1902 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -534 28 1909 -532 28 1909 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -533 28 1908 -531 28 1907 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -532 28 1906 -534 28 1906 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -533 28 1905 -535 28 1904 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -534 28 1903 -536 28 1903 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -535 28 1902 -537 28 1902 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -536 28 1901 -537 28 1901 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -538 28 1900 -535 28 1900 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -537 28 1899 -533 28 1899 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -533 28 1898 -535 28 1898 minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill -534 28 1897 -534 28 1897 minecraft:air

execute if entity @s[scores={GameTimer=40}] run fill -515 27 1939 -515 27 1939 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -514 27 1938 -516 27 1938 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -515 27 1937 -516 27 1937 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -516 27 1936 -516 27 1935 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -517 27 1936 -517 27 1933 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -518 27 1935 -518 27 1929 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -519 27 1933 -519 27 1930 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -520 27 1930 -520 27 1932 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -521 27 1933 -521 27 1931 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -522 27 1932 -522 27 1933 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -523 27 1932 -523 27 1934 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -524 27 1933 -524 27 1933 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -517 27 1930 -517 27 1928 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -516 27 1929 -516 27 1925 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -515 27 1929 -515 27 1926 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -514 27 1928 -514 27 1927 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -517 27 1926 -517 27 1923 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -518 27 1925 -518 27 1922 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -519 27 1923 -519 27 1920 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -520 27 1922 -520 27 1919 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -521 27 1920 -521 27 1917 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -522 27 1919 -522 27 1916 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -523 27 1917 -523 27 1914 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -524 27 1916 -524 27 1913 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -525 27 1913 -525 27 1915 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -526 27 1916 -526 27 1914 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -527 27 1916 -530 27 1916 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -528 27 1917 -531 27 1917 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -529 27 1918 -532 27 1918 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -531 27 1919 -534 27 1919 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -532 27 1920 -535 27 1920 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -533 27 1921 -535 27 1921 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -534 27 1922 -534 27 1923 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -533 27 1922 -533 27 1924 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -532 27 1923 -532 27 1926 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -531 27 1924 -531 27 1927 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -530 27 1926 -530 27 1929 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -529 27 1927 -529 27 1930 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -528 27 1929 -528 27 1930 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -527 27 1915 -531 27 1915 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -530 27 1914 -532 27 1914 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -531 27 1913 -532 27 1913 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -531 27 1912 -533 27 1912 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -532 27 1911 -538 27 1911 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -537 27 1912 -536 27 1912 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -533 27 1910 -538 27 1910 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -537 27 1909 -539 27 1909 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -537 27 1908 -539 27 1908 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -538 27 1907 -540 27 1907 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -539 27 1906 -541 27 1905 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -540 27 1904 -542 27 1904 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -541 27 1903 -543 27 1903 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -542 27 1902 -541 27 1902 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -534 27 1909 -532 27 1909 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -533 27 1908 -531 27 1907 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -532 27 1906 -534 27 1906 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -533 27 1905 -535 27 1904 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -534 27 1903 -536 27 1903 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -535 27 1902 -537 27 1902 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -536 27 1901 -537 27 1901 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -538 27 1900 -535 27 1900 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -537 27 1899 -533 27 1899 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -533 27 1898 -535 27 1898 minecraft:orange_concrete
execute if entity @s[scores={GameTimer=40}] run fill -534 27 1897 -534 27 1897 minecraft:orange_concrete

#5
execute if entity @s[scores={GameTimer=10}] run fill -515 27 1939 -515 27 1939 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -514 27 1938 -516 27 1938 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -515 27 1937 -516 27 1937 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -516 27 1936 -516 27 1935 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -517 27 1936 -517 27 1933 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -518 27 1935 -518 27 1929 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -519 27 1933 -519 27 1930 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -520 27 1930 -520 27 1932 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -521 27 1933 -521 27 1931 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -522 27 1932 -522 27 1933 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -523 27 1932 -523 27 1934 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -524 27 1933 -524 27 1933 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -517 27 1930 -517 27 1928 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -516 27 1929 -516 27 1925 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -515 27 1929 -515 27 1926 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -514 27 1928 -514 27 1927 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -517 27 1926 -517 27 1923 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -518 27 1925 -518 27 1922 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -519 27 1923 -519 27 1920 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -520 27 1922 -520 27 1919 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -521 27 1920 -521 27 1917 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -522 27 1919 -522 27 1916 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -523 27 1917 -523 27 1914 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -524 27 1916 -524 27 1913 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -525 27 1913 -525 27 1915 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -526 27 1916 -526 27 1914 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -527 27 1916 -530 27 1916 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -528 27 1917 -531 27 1917 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -529 27 1918 -532 27 1918 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -531 27 1919 -534 27 1919 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -532 27 1920 -535 27 1920 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -533 27 1921 -535 27 1921 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -534 27 1922 -534 27 1923 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -533 27 1922 -533 27 1924 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -532 27 1923 -532 27 1926 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -531 27 1924 -531 27 1927 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -530 27 1926 -530 27 1929 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -529 27 1927 -529 27 1930 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -528 27 1929 -528 27 1930 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -527 27 1915 -531 27 1915 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -530 27 1914 -532 27 1914 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -531 27 1913 -532 27 1913 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -531 27 1912 -533 27 1912 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -532 27 1911 -538 27 1911 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -537 27 1912 -536 27 1912 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -533 27 1910 -538 27 1910 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -537 27 1909 -539 27 1909 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -537 27 1908 -539 27 1908 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -538 27 1907 -540 27 1907 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -539 27 1906 -541 27 1905 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -540 27 1904 -542 27 1904 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -541 27 1903 -543 27 1903 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -542 27 1902 -541 27 1902 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -534 27 1909 -532 27 1909 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -533 27 1908 -531 27 1907 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -532 27 1906 -534 27 1906 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -533 27 1905 -535 27 1904 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -534 27 1903 -536 27 1903 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -535 27 1902 -537 27 1902 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -536 27 1901 -537 27 1901 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -538 27 1900 -535 27 1900 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -537 27 1899 -533 27 1899 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -533 27 1898 -535 27 1898 minecraft:netherrack
execute if entity @s[scores={GameTimer=10}] run fill -534 27 1897 -534 27 1897 minecraft:netherrack

execute if entity @s[tag=ResetPlatform] run scoreboard players add @s BlueRupee 1
execute if entity @s[scores={BlueRupee=1}] run scoreboard players set @s GameTimer 9
execute if entity @s[scores={BlueRupee=2}] run scoreboard players set @s GameTimer 39
execute if entity @s[scores={BlueRupee=3}] run scoreboard players set @s GameTimer 69
execute if entity @s[scores={BlueRupee=4}] run scoreboard players set @s GameTimer 109
execute if entity @s[scores={BlueRupee=5}] run scoreboard players set @s GameTimer 148
execute if entity @s[scores={BlueRupee=5..}] run tag @s remove ResetPlatform
execute if entity @s[scores={BlueRupee=5..}] run scoreboard players set @s BlueRupee 0
