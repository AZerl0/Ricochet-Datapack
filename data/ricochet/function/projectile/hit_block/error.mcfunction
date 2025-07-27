#> ricochet:projectile/hit_block/error
#
# ブロックに衝突したが衝突位置を見つけられなかった際に表示するメッセージ
#
# @within ricochet:projectile/hit_block

# 想定内のエラーであれば表示しない
execute if function ricochet:projectile/hit_block/is_invalid_hit run return fail

# エラーメッセージを表示
    # エラーログを生成
    function ricochet:projectile/hit_block/error/generate_log with entity @s
    # 言語に対応したメッセージを表示
    function ricochet:util/lang/get
    execute on origin run function ricochet:projectile/hit_block/error/message with storage temp:
    # 後処理
    data remove storage temp: error_log