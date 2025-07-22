#> ricochet:tick
#
# 跳弾データパックのメイン処理
#
# @within tags/function minecraft:tick

# 跳弾エンチャントが付与されている投擲物の跳弾状態を更新
    execute as @e[type=#ricochet:ricochet_projectile] unless score @s ricochet.bouncing matches 0.. unless score @s ricochet.bouncing matches ..0 unless score @s ricochet.bouncing matches 0 run scoreboard players set @s ricochet.bouncing 256
    execute as @e[tag=ricochet.projectile,] at @s run function ricochet:projectile/tick

# 跳弾エンチャントは付与されていなくても、跳弾の条件に一致している可能性があるので、タグが付与されていない投擲物も処理する
    execute as @e[type=#ricochet:ricochet_projectile,tag=!ricochet.projectile] at @s run function ricochet:projectile/tick