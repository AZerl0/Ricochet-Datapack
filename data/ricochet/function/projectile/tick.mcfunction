#> ricochet:projectile/tick
#
# 跳弾の状態を更新
# これには実際に跳弾させる以外にも毎tick、Motionを保存する等の処理も含まれる
#
# @within function ricochet:tick

# 常にこのNBTを削除してOwnerに当たらないようにする
    data remove entity @s LeftOwner

# 跳弾の条件に一致していたら反射処理
# 反射処理を呼び出すとinGroundが0bになるので1tick内で複数の条件によって処理が重なることはない

    # スコアが1以上の跳弾エンチャントの矢
        execute if entity @s[predicate=ricochet:can_ricochet_projectile/ricochet] run function ricochet:projectile/hit_block
    # スライムブロックに刺さった投擲物
        execute if entity @s[predicate=ricochet:can_ricochet_projectile/slime_block] run function ricochet:projectile/hit_block

# 残りの跳弾回数が0で突き刺さった投擲物からGlowingを消す
execute as @e[predicate=ricochet:clear_glowing] run data modify entity @s Glowing set value false

# 現在のMotionを保存
    data modify entity @s item.components.minecraft:custom_data.last_motion set from entity @s Motion