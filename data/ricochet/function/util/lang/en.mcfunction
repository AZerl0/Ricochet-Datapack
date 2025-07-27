#> ricochet:util/lang/en
#
# English
#
# @within function ricochet:projectile/hit_block/error/en

function ricochet:util/lang/_init

data modify storage ricochet:translate lang set value "en"
data merge storage ricochet:translate {values:{\
"load.install":"§aRicochet-Datapack§r has been introduced",\
"load.credit.open_x":"Open X",\
"load.issue":"Please report bugs here",\
"error.unexpected":"An unexpected error has occurred",\
"error.unexpected.desc":"Please copy the error log and report the problem via the link below",\
"ui.error_log":"[Error log]"\
}}