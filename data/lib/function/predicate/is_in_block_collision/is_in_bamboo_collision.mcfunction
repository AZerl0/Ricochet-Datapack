#> lib:predicate/is_in_block_collision/is_in_bamboo_collision
#
# 竹のcollision内か判定
#
# @api

# 実行座標がbambooでなければreturn fail
    execute unless block ~ ~ ~ bamboo run return fail

# 準備
    data modify storage temp: predicate set value false

# シードによるランダムな位置補正を取得
    function lib:calculation/flower_position/get
# 位置補正を加味して判定
    function lib:predicate/is_in_block_collision/is_in_bamboo_collision/check with storage return:

## return
    # NBTが存在しない = true
        execute unless data storage temp: predicate run return 1
    # ここまで通過している = false
        say fail
        data remove storage temp: predicate
        return fail