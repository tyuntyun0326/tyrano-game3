; ed2.ks
[cm]
[clearfix]
[start_keyconfig]
[bg storage="park-snow.jpg" time="2000"]
[playbgm storage="BGM_06_悲哀.mp3" volume="50"]
; taskyボイス
[stopse]
[playse storage="tasky.mp3/エラー……エラー……自己決定権の奪取を検知しました。...あなたは社会的敗北者となります.mp3"]
#tasky
エラー……エラー……自己決定権の奪取を検知しました。[r]
あなたは社会的敗北者となります。[p]
[stopse]
[playse storage="SE01インストール音_起動音.mp3"]
; モノローグ
[stopse]
[playse storage="その他.mp3/僕は、自分の意志で、このアプリをアンインストールした。...警告音が鳴り止んだ瞬間、体が崩れ落ちるほど重くなった。.mp3"]
#モノローグ
僕は、自分の意志で、このアプリをアンインストールした。[r]
警告音が鳴り止んだ瞬間、体が崩れ落ちるほど重くなった。[p]
; モノローグ
[stopse]
[playse storage="その他.mp3/疲労度は極限だったけれど、これでようやく自由になれる。...タスクも、報酬もない、ただの自分になれる。.mp3"]
#モノローグ
疲労度は極限だったけれど、これでようやく自由になれる。[r]
タスクも、報酬もない、ただの自分になれる。[p]
; モノローグ
[stopse]
[playse storage="その他.mp3/でも、誰も僕を褒めてはくれない。...静寂だけが、僕を包み込んでいた。.mp3"]
#モノローグ
でも、誰も僕を褒めてはくれない。[r]
静寂だけが、僕を包み込んでいた。[p]
[ptext layer="message0" text="Ending 2: 孤独な解放" x=300 y=300 size=50 color="blue"]
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