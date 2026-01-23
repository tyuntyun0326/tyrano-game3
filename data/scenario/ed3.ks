;=========================================
; エンディング3: 忘却と再発
;=========================================
[cm]
[clearfix]
[start_keyconfig]

; 背景：自室（朝・整頓）
[bg storage="room-mooning.jpg" time="2000" method="crossfade"]

; BGM：悲哀（少し淡々と）
[playbgm storage="BGM_06_悲哀.mp3" volume="40"]

#モノローグ
taskyを消してから、数ヶ月が経った。[p]
最初は清々しかったが、次第に「何をすればいいか分からない」不安が戻ってきた。[r]
日々の生活に張りがなく、また自堕落な生活に戻りつつある。[p]
SNSでは、みんなが新しいアプリ『Life-Up』のスコアを自慢している。[r]
……あれなら、違うかもしれない。[p]

; SE：インストール音
[playse storage="SE01インストール音_起動音.mp3"]

#モノローグ
気がつけば、僕は新しい管理アプリをインストールしていた。[r]
また、同じループが始まる。[p]

[ptext layer="message0" text="Ending 3: 忘却と再発" x=300 y=300 size=50 color="gray" edge="black" shadow="black"]
[l]

; --- 終了処理 ---
[cm]
[mask effect="fadeIn" time="2000"]
[bg storage="end.jpg" time="0"]
[ptext layer="message0" text="Click to Title" x=550 y=500 size=30 color="white" edge="black"]
[mask_off effect="fadeOut" time="2000"]

[l]
[jump storage="title.ks"]
[s]