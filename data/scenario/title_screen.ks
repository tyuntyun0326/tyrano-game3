;==============================
; title_screen.ks
;==============================
[cm]
[clearfix]
[start_keyconfig]

; メニューボタン等を隠す
[hidemenubutton]
[layopt layer=message0 visible=false]

; ★1. まず「表紙（title2.jpg）」を表示
; ※data/bgimage/に title2.jpg が必要です！
[bg storage="title2.jpg" time="100"]

; -------------------------------------------
; ★2. 裏読み込み（この間、画面はtitle2のまま維持されます）
; -------------------------------------------
; プロローグや1章で使う重い画像をここで読んでおきます
[preload storage="data/fgimage/chara/1/hero_normal.png"]
[preload storage="data/fgimage/chara/2/mina_smile.png"]
[preload storage="data/fgimage/chara/3/kanae_normal.png"]
[preload storage="data/fgimage/chara/4/tasky_normal.png"]
[preload storage="data/bgimage/room-night.jpg"]
[preload storage="data/bgimage/bg_smartphone_task_done.jpg"]

; 入力待ち（読み込みが終わるまでここより下には行きません）
[s]

; -------------------------------------------
; ★3. 読み込み完了後の処理
; -------------------------------------------
; 画面全体を透明なボタンにして、どこを押しても進めるようにする
; （transparent.pngが無い場合は、title2.jpgをボタン画像に指定して誤魔化します）
[button graphic="title2.jpg" target="*switch_to_menu" x=0 y=0 width=1280 height=720 opacity=0]

; 読み込み完了の合図（音など）が必要ならここに入れる
; 例: [ptext text="Click to Start" ...]

[s]

; -------------------------------------------
; ★4. クリック後のメニュー切り替え
; -------------------------------------------
*switch_to_menu
; 効果音
[playse storage="SE08 スマホタップ音.mp3"]

; ボタン消去
[cm]

; 背景を「メニュー画面（title.jpg）」に切り替え
[bg storage="title.jpg" time="500"]

; タイトルロゴ表示
[layopt layer=1 visible=true]
[ptext layer=1 page=fore text="Routine Cage" x=180 y=150 size=90 color=0xffffff edge="0x000000" bold="bold" shadow="0x000000"]
[ptext layer=1 page=fore text="― ルーチンの檻 ―" x=450 y=280 size=30 color=0xcccccc edge="0x000000" bold="bold"]

; メニューボタン表示
[glink color="black" text="はじめから" x=500 y=450 size=24 target="*start" width="200"]
[glink color="black" text="つづきから" x=500 y=550 size=24 target="*load" width="200"]

; BGM再生（メニューが出たタイミングで再生）
[playbgm storage="BGM_08_タイトル.mp3" volume="60"]

[s]

*start
; ゲーム開始処理
[cm]
[clearfix]
[freeimage layer=0]
[freeimage layer=1]
[layopt layer=1 visible=false]

; プロローグへ
[jump storage="prologue.ks"]
[s]

*load
[cm]
[showload]
[jump target="*switch_to_menu"]
[s]