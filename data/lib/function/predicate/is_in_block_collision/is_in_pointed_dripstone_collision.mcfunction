#> lib:predicate/is_in_block_collision/is_in_pointed_dripstone_collision
#
# 鍾乳石 / pointe_dripstoneのcollision box内か判定
#
# @api


# 準備
    data modify storage temp: predicate set value false

# シードによるランダムな位置補正を取得
    function lib:calculation/pointed_dripstone_position/get
# 位置補正を加味して判定
    function lib:predicate/is_in_block_collision/is_in_pointed_dripstone_collision/check with storage return:

## return
    # NBTが存在しない = true
        execute unless data storage temp: predicate run return 1
    # ここまで通過している = false
        data remove storage temp: predicate
        return fail