; ed3.ks
[cm]
[clearfix]
[start_keyconfig]
[bg storage="room-mooning.jpg" time="2000"]
[playbgm storage="BGM_06_悲哀.mp3" volume="50"]
; モノローグ
[stopse]
[playse storage="その他.mp3/tasky を消してから、数ヶ月が経った。.mp3"]
#モノローグ
taskyを消してから、数ヶ月が経った。[r]
最初は清々しかったが、次第に「何をすればいいか分からない」不安が戻ってきた。[p]
; モノローグ
[stopse]
[playse storage="その他.mp3/日々の生活に張りがなく、また自堕落な生活に戻りつつある。.mp3"]
#モノローグ
日々の生活に張りがなく、また自堕落な生活に戻りつつある。[p]
; モノローグ
[stopse]
[playse storage="その他.mp3/SNS では、みんなが新しいアプリ『Life-Up』のスコアを自慢している。...……あれなら、違うかもしれない。.mp3"]
#モノローグ
SNSでは、みんなが新しいアプリ『Life-Up』のスコアを自慢している。[r]
……あれなら、違うかもしれない。[p]
[stopse]
[playse storage="SE01インストール音_起動音.mp3"]
; モノローグ
[stopse]
[playse storage="その他.mp3/気がつけば、僕は新しい管理アプリをインストールしていた..."]
#モノローグ
気がつけば、僕は新しい管理アプリをインストールしていた。[r]
また、同じループが始まる。[p]
[ptext layer="message0" text="Ending 3: 忘却と再発" x=300 y=300 size=50 color="gray"]
[l]

; --- 追加：終了画面とタイトルへ戻る処理 ---
[cm]
[mask effect="fadeIn" time="2000"]
[bg storage="end.jpg" time="0"]
[ptext layer="message0" text="THE END" x=550 y=300 size=60 color="white" edge="black" shadow="black"]
[ptext layer="message0" text="Click to Title" x=580 y=400 size=30 color="white" edge="black"]
[mask_off effect="fadeOut" time="2000"]
[l]
[jump storage="title.ks"]
[s]