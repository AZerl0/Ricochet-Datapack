#> ricochet:tick
#
# 跳弾データパックのメイン処理
#
# @within tags/function minecraft:tick

# 跳弾する可能性のある投擲物の跳弾状態を更新
    execute as @e[type=#ricochet:ricochet_projectile] at @s run function ricochet:projectile/tick

# ゲームプレイのメイン処理
    function ricochet:gameplay/tick