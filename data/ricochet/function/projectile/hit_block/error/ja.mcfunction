#> ricochet:projectile/hit_block/error/ja
#
# 日本語のエラーメッセージ
#
# @within function ricochet:projectile/hit_block/error/lang

# text
    tellraw @s [{"text": "予期せぬエラーが発生しました\n","color": "red","bold": true},{"text": "エラーログをコピーして以下のURLから問題を報告してください","bold": false}]
    $tellraw @s [{"text": "[ログ]","color":"aqua","hoverEvent": {"action": "show_text","contents": "クリックしてコピー"},"clickEvent": {"action": "copy_to_clipboard","value": $(error_log)}}]
    tellraw @s [{"text": "https://github.com/AZerl0/Ricochet-Datapack/issues","color": "gold","underlined": true,"hoverEvent": {"action": "show_text","contents": "クリックして開く"},"clickEvent": {"action": "open_url","value": "https://github.com/AZerl0/Ricochet-Datapack/issues"}}]