#> ricochet:projectile/hit_block/error/en
#
# English error message
#
# @within function ricochet:projectile/hit_block/error/lang

# text
    tellraw @s [{"text": "An unexpected error has occurred\n","color": "red","bold": true},{"text": "Please copy the error log and report the problem via the link below","bold": false}]
    $tellraw @s [{"text": "[Log]","color":"aqua","hoverEvent": {"action": "show_text","contents": "Click to copy"},"clickEvent": {"action": "copy_to_clipboard","value": $(error_log)}}]
    tellraw @s [{"text": "https://github.com/AZerl0/Ricochet-Datapack/issues","color": "gold","underlined": true,"hoverEvent": {"action": "show_text","contents": "Click to open"},"clickEvent": {"action": "open_url","value": "https://github.com/AZerl0/Ricochet-Datapack/issues"}}]