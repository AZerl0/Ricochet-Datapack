#> ricochet:util/lang/get
#
# サーバーの言語を取得
#
# @public

# 初期化(デフォルトでenにする)
    function ricochet:util/lang/en

# 言語取得用アイテム召喚
    summon item ~ ~ ~ {Item:{id:command_block},Tags:["ricochet.language_detect"],PickupDelay:32767}

# 言語設定(現在対応: en, ja)
    execute if entity @n[name="コマンドブロック",tag=ricochet.language_detect] run function ricochet:util/lang/ja
    execute if entity @n[name="Command Block",tag=ricochet.language_detect] run function ricochet:util/lang/en

# 後始末
    kill @n[tag=ricochet.language_detect]