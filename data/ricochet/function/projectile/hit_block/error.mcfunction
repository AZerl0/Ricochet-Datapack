#> ricochet:projectile/hit_block/error
#
# ブロックに衝突したが衝突位置を見つけられなかった際に表示するメッセージ
#
# @within ricochet:projectile/hit_block

# 想定内のエラーであれば表示しない
execute if function ricochet:projectile/hit_block/is_invalid_hit run return fail

# 言語に対応したメッセージを表示させる
function ricochet:util/get_language
function ricochet:projectile/hit_block/error/lang with storage return:
data remove storage temp: error_log