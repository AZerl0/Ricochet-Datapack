#> ricochet:projectile/tick
#


# 反射処理
    data remove entity @s LeftOwner
    execute if data entity @s[tag=ricochet.projectile] {inGround:1b} if score @s ricochet.bouncing matches 1.. run function ricochet:projectile/hit_block
    data modify entity @s item.components.minecraft:custom_data.last_motion set from entity @s Motion