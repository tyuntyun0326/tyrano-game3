; ed4.ks
[cm]
[clearfix]
[start_keyconfig]
[bg storage="room-mooning.jpg" time="2000"]
[playbgm storage="BGM_07_希望.mp3" volume="50"]
; モノローグ
[stopse]
[playse storage="その他.mp3/僕は tasky をアンインストールしなかった。.mp3"]
#モノローグ
僕はtaskyをアンインストールしなかった。[r]
カナエの助言を使い、システムの管理権限の一部を奪い取ったのだ。[p]
; モノローグ
[stopse]
[playse storage="その他.mp3/tasky は、もはや僕を支配する絶対者ではない。...僕が設定した、必要最低限のタスクしか提示しない。.mp3"]
#モノローグ
taskyは、もはや僕を支配する絶対者ではない。[r]
僕が設定した、必要最低限のタスクしか提示しない。[p]
; taskyボイス
[stopse]
[playse storage="tasky.mp3/今日のタスクは『十分な休息』です。...実行しますか？.mp3"]
#tasky
今日のタスクは『十分な休息』です。報酬：『安定』。実行しますか？[p]
; モノローグ
[stopse]
[playse storage="その他.mp3/疲労と快感のループは断ち切られた。...僕の人生は、退屈だが、僕自身のものになった。.mp3"]
#モノローグ
疲労と快感のループは断ち切られた。[r]
僕の人生は、退屈だが、僕自身のものになった。[p]
[ptext layer="message0" text="Ending 4: 共存と自律" x=300 y=300 size=50 color="orange"]
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