#> ricochet:load
#

# ライブラリ読み込み
function lib:load/main

#スコアボード
scoreboard objectives add ricochet.remaining_ricochets dummy
scoreboard objectives add ricochet.ricochet_count dummy

# 跳弾発光用チーム
team add ricochet.projectile
team modify ricochet.projectile color green

# 導入メッセージ表示
execute as @a run function ricochet:load/message

# 進捗剝奪
advancement revoke @a only ricochet:hurt_slime_with_book