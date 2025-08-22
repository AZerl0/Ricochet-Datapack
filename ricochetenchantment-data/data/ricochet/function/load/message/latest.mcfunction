#> ricochet:load/message/latest
#
# version >= 1.21.5
#
# @within function ricochet:load/message

tellraw @s {"text": "----------","color": "gray"}

tellraw @s {"storage": "ricochet:translate","nbt": "values.'load.install'"}
tellraw @s {\
    "text": "by §bAZer0",\
    "hover_event": {"action": "show_text","value": {"storage": "ricochet:translate","nbt": "values.'load.credit.open_x'"}},\
    "click_event": {"action": "open_url","url": "https://x.com/_AZer0"}\
}
tellraw @s {"storage": "ricochet:translate","nbt": "values.'load.issue'"}
tellraw @s {\
    "text": "https://github.com/AZerl0/Ricochet-Enchantment/issues","color": "gold","underlined": true,\
    "hover_event": {"action": "show_text","value": {"translate": "mco.notification.visitUrl.buttonText.default"}},\
    "click_event": {"action": "open_url","url": "https://github.com/AZerl0/Ricochet-Enchantment/issues"}\
}

tellraw @s {"text": "----------","color": "gray"}
