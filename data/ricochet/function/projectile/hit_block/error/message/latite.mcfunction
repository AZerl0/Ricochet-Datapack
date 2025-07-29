#> ricochet:projectile/hit_block/error/message/latite
#
# version >= 1.21.5
#
# @within function ricochet:projectile/hit_block/error/message

tellraw @s {"storage": "ricochet:translate","nbt": "values.'error.unexpected'","color": "red","bold": true}
tellraw @s {"storage": "ricochet:translate","nbt": "values.'error.unexpected.desc'","color": "red"}
$tellraw @s [{\
    "storage": "ricochet:translate","nbt": "values.'ui.error_log'","color":"aqua",\
    "hover_event": {"action": "show_text","value": {"translate": "chat.copy.click"}},\
    "click_event": {"action": "copy_to_clipboard","value": $(error_log)}\
}]
tellraw @s [{\
    "text": "https://github.com/AZerl0/Ricochet-Datapack/issues","color": "gold","underlined": true,\
    "hover_event": {"action": "show_text","value": {"translate": "mco.notification.visitUrl.buttonText.default"}},\
    "click_event": {"action": "open_url","url": "https://github.com/AZerl0/Ricochet-Datapack/issues"}\
}]