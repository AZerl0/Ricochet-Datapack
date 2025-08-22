#> ricochet:lang/core/sync
#
# このデータパックの言語をサーバーの言語と同期
#
# @public

# 初期化(デフォルトでenにする)
    function ricochet:lang/translation/en

# 言語取得用アイテム召喚
    summon item ~ ~ ~ {Item:{id:command_block},Tags:["ricochet.language_detect"],PickupDelay:32767}

# 言語設定(現在対応: en, ja)
    execute if entity @n[name="コマンドブロック",tag=ricochet.language_detect] run function ricochet:lang/translation/ja
    execute if entity @n[name="Command Block",tag=ricochet.language_detect] run function ricochet:lang/translation/en

# 後始末
    kill @n[tag=ricochet.language_detect]