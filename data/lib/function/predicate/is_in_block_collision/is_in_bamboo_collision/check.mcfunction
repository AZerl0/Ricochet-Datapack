#> lib:predicate/is_in_block_collision/is_in_bamboo_collision/check
#
# 竹のcollision内か判定
#
# @within function lib:predicate/is_in_block_collision/is_in_bamboo_collision

# ランダムな補正がかかった竹の中心の位置にマーカー召喚
    $execute align xyz positioned ~0.5 ~ ~0.5 positioned ~$(x) ~ ~$(z) run summon marker ~ ~ ~ {UUID:[I;13,0,0,1]}

# 竹の中心の位置と実行座標のdistanceで判定
    execute summon item positioned as d-0-0-0-1 if predicate lib:is_in_block_collision/shape/special/bamboo run data remove storage temp: predicate

# マーカーkill
    kill d-0-0-0-1
