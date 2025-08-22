#> lib:predicate/is_in_block_collision/is_in_pointed_dripstone_collision/check
#
# 鍾乳石 / pointed_dripstoneのcollision内か判定
#
# @within function lib:predicate/is_in_block_collision/is_in_pointed_dripstone_collision

# 補正がかかった鍾乳石の中心の位置にマーカー召喚
    $execute align xyz positioned ~0.5 ~ ~0.5 positioned ~$(x) ~ ~$(z) run summon marker ~ ~ ~ {UUID:[I;13,0,0,1]}

# [vertical_direction=down,thickness=tip]ならY座標をずらす
    execute if block ~ ~ ~ minecraft:pointed_dripstone[vertical_direction=down,thickness=tip] positioned as d-0-0-0-1 run tp d-0-0-0-1 ~ ~0.3125 ~

# 鍾乳石の中心の位置と実行座標のdistanceで判定
    execute summon item positioned as d-0-0-0-1 if predicate lib:is_in_block_collision/shape/special/pointed_dripstone run data remove storage temp: predicate

# マーカーkill
    kill d-0-0-0-1
