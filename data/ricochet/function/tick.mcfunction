#> ricochet:tick
#

#
    execute as @e[type=#ricochet:ricochet_projectile] unless score @s ricochet.bouncing matches 0.. unless score @s ricochet.bouncing matches ..0 unless score @s ricochet.bouncing matches 0 run scoreboard players set @s ricochet.bouncing 256
    execute as @e[tag=ricochet.projectile,] at @s run function ricochet:projectile/tick
    execute as @e[type=#ricochet:ricochet_projectile,tag=!ricochet.projectile] at @s run function ricochet:projectile/tick