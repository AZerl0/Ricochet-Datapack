#> ricochet:projectile/hit_block/error/message/1.21.5_less_than
#
# version < 1.21.5
#
# @within function ricochet:projectile/hit_block/error/message

tellraw @s {"storage": "ricochet:translate","nbt": "values.'error.unexpected'","color": "red","bold": true}
tellraw @s {"storage": "ricochet:translate","nbt": "values.'error.unexpected.desc'","color": "red"}
$tellraw @s [{\
    "storage": "ricochet:translate","nbt": "values.'ui.error_log'","color":"aqua",\
    "hoverEvent": {"action": "show_text","contents": {"translate": "chat.copy.click"}},\
    "clickEvent": {"action": "copy_to_clipboard","value": $(error_log)}\
}]
tellraw @s [{\
    "text": "https://github.com/AZerl0/Ricochet-Datapack/issues","color": "gold","underlined": true,\
    "hoverEvent": {"action": "show_text","contents": {"translate": "mco.notification.visitUrl.buttonText.default"}},\
    "clickEvent": {"action": "open_url","value": "https://github.com/AZerl0/Ricochet-Datapack/issues"}\
}]