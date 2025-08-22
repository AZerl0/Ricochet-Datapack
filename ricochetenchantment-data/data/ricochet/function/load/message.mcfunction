#> ricochet:load/message
#
# 導入メッセージ表示
#
# @within function ricochet:load


# 言語を取得
function ricochet:lang/core/sync

# バージョンに応じたメッセージを表示
execute if function lib:version/is_less_than/1.21.5 run function ricochet:load/message/1.21.5_less_than
execute unless function lib:version/is_less_than/1.21.5 run function ricochet:load/message/latest