#> ricochet:projectile/hit_block/error/lang
#
# 言語に対応したメッセージを表示させる
#
# @within function ricochet:projectile/hit_block/error

# エラーログを生成
    function ricochet:projectile/hit_block/error/generate_log with entity @s

# 言語に対応したメッセージを表示
    $execute on origin run function ricochet:projectile/hit_block/error/$(lang) with storage temp:
