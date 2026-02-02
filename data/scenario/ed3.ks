;=========================================
; エンディング3: 忘却と再発
;=========================================
[cm]
[clearfix]
[bg storage="myroom_mooning.jpg" time="2000" method="crossfade"]
[playbgm storage="BGM_06_悲哀.mp3" volume="40"]

; ★ナレーター音声
[stopse buf=1]
; ★リスト完全一致
[playse storage="narrator/taskyを消してから、数ヶ月が経った。最初は清々しかったが、次第に「何をすればいいか分からない」不安が戻ってきた.mp3" buf=1]
#モノローグ
taskyを消してから、数ヶ月が経った。[r]
最初は清々しかったが、次第に「何をすればいいか分からない」不安が戻ってきた。[p]
; ★ナレーター音声
[stopse buf=1]
; ★リスト完全一致
[playse storage="narrator/日々の生活に張りがなく、また自堕落な生活に戻りつつある。.mp3" buf=1]
#モノローグ
日々の生活に張りがなく、また自堕落な生活に戻りつつある。[p]
; ★ナレーター音声
[stopse buf=1]
; ★リスト完全一致
[playse storage="narrator/SNSでは、みんなが新しいアプリ『Life-Up』のスコアを自慢している。……あれなら、違うかもしれない。.mp3" buf=1]
#モノローグ
SNSでは、みんなが新しいアプリ『Life-Up』のスコアを自慢している。[r]
……あれなら、違うかもしれない。[p]

[playse storage="SE01インストール音_起動音.mp3"]
[bg storage="smartphone_night.jpg" time="1000"]
[wait time=1000]

; ★ナレーター音声
[stopse buf=1]
; ★リスト完全一致
[playse storage="narrator/これが、最後のチャンスかもしれない。...僕はtaskyに、僕の人生の主導権を委ねてみようと決めた。.mp3" buf=1]
#モノローグ
これが、最後のチャンスかもしれない。[r]
...僕はtaskyに、僕の人生の主導権を委ねてみようと決めた。[p]

[layopt layer=message0 visible=false]
[layopt layer=1 visible=true]
[ptext layer=1 text="END" x=580 y=300 size=80 color="gray" edge="black" shadow="black" bold="bold"]
[l]

[cm]
[freeimage layer=1]
[mask effect="fadeIn" time="2000"]
[bg storage="end.jpg" time="0"]
[ptext layer=1 text="Click to Title" x=550 y=500 size=30 color="white" edge="black"]
[mask_off effect="fadeOut" time="2000"]
[l]
[jump storage="title_screen.ks"]
[s]