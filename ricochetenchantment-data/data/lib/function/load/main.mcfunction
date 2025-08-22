#> lib:load/main
#

# 定数スコアボード
    function lib:load/constant

# 一時変数用スコアボード
    scoreboard objectives add temp dummy

# チャンク[0, 0]強制読込
    forceload add 0 0