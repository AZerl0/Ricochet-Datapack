#> ricochet:load/message
#
# 導入メッセージ表示
#
# @within function ricochet:load

# 言語を取得
function ricochet:util/lang/get

tellraw @s {"text": "----------","color": "gray"}

tellraw @s {"storage": "ricochet:translate","nbt": "values.'load.install'"}
tellraw @s {\
    "text": "by §bAZer0",\
    "hoverEvent": {"action": "show_text","contents": {"storage": "ricochet:translate","nbt": "values.'load.credit.open_x'"}},\
    "clickEvent": {"action": "open_url","value": "https://x.com/_AZer0"}\
}
tellraw @s {"storage": "ricochet:translate","nbt": "values.'load.issue'"}
tellraw @s {"text": "https://github.com/AZerl0/Ricochet-Datapack/issues","color": "gold","underlined": true,"hoverEvent": {"action": "show_text","contents": {"translate": "mco.notification.visitUrl.buttonText.default"}},"clickEvent": {"action": "open_url","value": "https://github.com/AZerl0/Ricochet-Datapack/issues"}}

tellraw @s {"text": "----------","color": "gray"}
