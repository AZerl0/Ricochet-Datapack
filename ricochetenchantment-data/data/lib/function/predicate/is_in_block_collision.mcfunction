#> lib:predicate/is_in_block_collision
#
# 実行座標がブロックのcollision box内か判定する
#
# @api

# predicateでentity_propertyのdistanceを使用しているが
# これは実行者の位置を参照するので実行座標をずらす場合はsummon itemを通して実行する

# ブロックのcollision box内だったらreturn 1
    execute summon item align xyz if predicate lib:is_in_block_collision run return 1
# 例外的にbambooは別で判定する
    execute if function lib:predicate/is_in_block_collision/is_in_bamboo_collision run return 1
# 例外的にpointed_dripstoneは別で判定する
    execute if function lib:predicate/is_in_block_collision/is_in_pointed_dripstone_collision run return 1

# ここが呼び出されるのはcollision box内ではない時なのでreturn fail
    return fail