;=========================================
; エンディング3: 忘却と再発
;=========================================
[cm]
[clearfix]
[start_keyconfig]

; 背景：自室（朝・整頓）
[bg storage="myroom_mooning.jpg" time="2000" method="crossfade"]

; BGM：悲哀（少し淡々と）
[playbgm storage="BGM_06_悲哀.mp3" volume="40"]

; ★ナレーター音声
[stopse buf=1]
[playse storage="narrator/taskyを消してから、数ヶ月が経った。最初は清々しかったが、次第に「何をすればいいか分からない」不安が戻ってきた.mp3" buf=1]
#モノローグ
taskyを消してから、数ヶ月が経った。[p]
#モノローグ
最初は清々しかったが、次第に「何をすればいいか分からない」不安が戻ってきた。[p]
; ★ナレーター音声
[stopse buf=1]
[playse storage="narrator/日々の生活に張りがなく、また自堕落な生活に戻りつつある。.mp3" buf=1]
#モノローグ
日々の生活に張りがなく、また自堕落な生活に戻りつつある。[p]
; ★ナレーター音声
[stopse buf=1]
[playse storage="narrator/SNSでは、みんなが新しいアプリ『Life-Up』のスコアを自慢している。……あれなら、違うかもしれない。.mp3" buf=1]
#モノローグ
SNSでは、みんなが新しいアプリ『Life-Up』のスコアを自慢している。[l][r]
……あれなら、違うかもしれない。[p]

; 演出：インストール音
[playse storage="SE01インストール音_起動音.mp3"]
; ★背景変更：スマホ画面 (smartphone_night.jpg)
[bg storage="smartphone_night.jpg" time="1000"]
[wait time=1000]

; ★ナレーター音声
[stopse buf=1]
[playse storage="narrator/これが、最後のチャンスかもしれない。...僕はtaskyに、僕の人生の主導権を委ねてみようと決めた。.mp3" buf=1]
#モノローグ
気がつけば、僕は新しい管理アプリをインストールしていた。[l][r]
また、同じループが始まる。[p]

; 立ち絵消去・メッセージ枠消去
[chara_hide_all]
[layopt layer=message0 visible=false]

; END表示
[layopt layer=1 visible=true]
[ptext layer=1 text="END" x=580 y=300 size=80 color="gray" edge="black" shadow="black" bold="bold"]
[l]

; --- 終了処理 ---
[cm]
[freeimage layer=1]
[mask effect="fadeIn" time="2000"]
[bg storage="end.jpg" time="0"]
[ptext layer=1 text="Click to Title" x=550 y=500 size=30 color="white" edge="black"]
[mask_off effect="fadeOut" time="2000"]

[l]
[jump storage="title_screen.ks"]
[s]