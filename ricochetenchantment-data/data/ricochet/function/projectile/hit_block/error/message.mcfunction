#> ricochet:projectile/hit_block/error/message
#
# エラーメッセージを表示
#
# @within function ricochet:projectile/hit_block/error

# バージョンに応じたメッセージを表示
execute if function lib:version/is_less_than/1.21.5 run function ricochet:projectile/hit_block/error/message/1.21.5_less_than with storage temp:
execute unless function lib:version/is_less_than/1.21.5 run function ricochet:projectile/hit_block/error/message/latest with storage temp: