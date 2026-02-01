;==============================
; title_screen.ks
;==============================
[cm]
[clearfix]
[start_keyconfig]

; メニュー類を隠す
[hidemenubutton]
[layopt layer=message0 visible=false]

; ★1. 起動時は「表紙（title2.jpg）」を表示して停止
[bg storage="title2.jpg" time="100"]

; -------------------------------------------
; ★2. クリック待ち（ここですべてを止める）
; -------------------------------------------
; 画面中央に点滅テキストを表示
[layopt layer=1 visible=true]
[ptext layer=1 page=fore text="Click to Start" x=500 y=600 size=40 color=white edge=black name="flash"]
[anim name="flash" opacity=0 time=1000 loop=true]

; 画面全体（1280x720）を透明なボタンにする
; ※ここをクリックしない限り、背景変更も音楽再生も始まりません
[clickable width=1280 height=720 target="*press_start" opacity=0 mouseopacity=0]

; 処理停止（sタグ）
[s]

; -------------------------------------------
; ★3. クリックされたら初めて動き出す
; -------------------------------------------
*press_start
; クリック領域とテキストを消去
[cm]
[freeimage layer=1]

; 効果音
[playse storage="SE08 スマホタップ音.mp3"]

; ★ここで初めて背景を「メニュー画面（title.jpg）」に切り替え
[bg storage="title.jpg" time="500"]

; ★ここで初めてBGMを再生（クリック後なのでブラウザ制限に引っかかりません）
[playbgm storage="BGM_08_タイトル.mp3" volume="60"]

; タイトルロゴ表示
[layopt layer=1 visible=true]
[ptext layer=1 page=fore text="Routine Cage" x=180 y=150 size=90 color=0xffffff edge="0x000000" bold="bold" shadow="0x000000"]
[ptext layer=1 page=fore text="― ルーチンの檻 ―" x=450 y=280 size=30 color=0xcccccc edge="0x000000" bold="bold"]

; メニューボタン表示
[glink color="black" text="はじめから" x=500 y=450 size=24 target="*start" width="200"]
[glink color="black" text="つづきから" x=500 y=550 size=24 target="*load" width="200"]

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
[jump target="*press_start"]
[s]