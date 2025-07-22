#> ricochet:projectile/tick
#
# 跳弾の状態を更新
# これには実際に跳弾させる以外にも毎tick、Motionを保存する等の処理も含まれる
#
# @within function ricochet:tick


# 反射処理
    data remove entity @s LeftOwner
    execute if data entity @s[tag=ricochet.projectile] {inGround:1b} if score @s ricochet.bouncing matches 1.. run function ricochet:projectile/hit_block
    execute if data entity @s[tag=!ricochet.projectile] {inGround:1b,inBlockState:{Name:"minecraft:slime_block"}} if score @s ricochet.bouncing matches 1.. run function ricochet:projectile/hit_block
    data modify entity @s item.components.minecraft:custom_data.last_motion set from entity @s Motion