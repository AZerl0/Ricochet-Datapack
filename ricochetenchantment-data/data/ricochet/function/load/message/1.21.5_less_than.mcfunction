#> ricochet:load/message/1.21.5_less_than
#
# version < 1.21.5
#
# @within function ricochet:load/message

tellraw @s {"text": "----------","color": "gray"}

tellraw @s {"storage": "ricochet:translate","nbt": "values.'load.install'"}
tellraw @s {\
    "text": "by §bあれい/AZer0",\
    "hoverEvent": {"action": "show_text","contents": {"storage": "ricochet:translate","nbt": "values.'load.credit.open_x'"}},\
    "clickEvent": {"action": "open_url","value": "https://x.com/_AZer0"}\
}
tellraw @s {"storage": "ricochet:translate","nbt": "values.'load.issue'"}
tellraw @s {"text": "https://github.com/AZerl0/Ricochet-Enchantment/issues","color": "gold","underlined": true,"hoverEvent": {"action": "show_text","contents": {"translate": "mco.notification.visitUrl.buttonText.default"}},"clickEvent": {"action": "open_url","value": "https://github.com/AZerl0/Ricochet-Enchantment/issues"}}

tellraw @s {"text": "----------","color": "gray"}
