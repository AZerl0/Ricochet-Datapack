#> ricochet:util/lang/ja
#
# 日本語
#
# @within function ricochet:util/get_language

function ricochet:util/lang/_init

data modify storage ricochet:translate lang set value "ja"
data merge storage ricochet:translate {values:{\
"load.install":"§a跳弾データパック§rが導入されました",\
"load.credit.open_x":"Xを開く",\
"load.issue":"バグはこちらに報告してください",\
"error.unexpected":"予期せぬエラーが発生しました",\
"error.unexpected.desc":"エラーログをコピーして以下のURLから問題を報告してください",\
"ui.error_log":"[エラーログ]"\
}}