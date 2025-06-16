#> ricochet:arrow/tick
#


# 反射処理
    execute if data entity @s {inGround:1b} if score @s ricochet.bouncing matches 1.. run function ricochet:arrow/hit_block
