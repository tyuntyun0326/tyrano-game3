;=========================================
; プロローグ
;=========================================
[cm]
[clearfix]
[start_keyconfig]

; -------------------------------------------
; ★ロード画面の消去
; -------------------------------------------
[iscript]
clearInterval(window.loadingInterval);
$('#custom_loader').fadeOut(500, function(){ $(this).remove(); });
[endscript]
[wait time=500]

; メッセージウィンドウ設定（5行表示対応）
[position layer=message0 width=1280 height=350 top=370 left=0]
[position layer=message0 page=fore frame="" opacity=150]
[position layer=message0 page=fore margint=80 marginb=40 marginl=50 marginr=50]
[deffont size=26 line=32]

; 前の画面の残骸を消す
[freeimage layer=1]
[layopt layer=1 visible=false]
[showmenubutton]

;=========================================
; キャラクター定義
;=========================================
[chara_new name="hero" storage="chara/1/hero_normal.png" jname="僕" width="400" top="100"]
[chara_face name="hero" face="default" storage="chara/1/hero_normal.png"]
[chara_new name="ミナ" storage="chara/2/mina_smile.png" jname="ミナ" width="400" top="100"]
[chara_face name="ミナ" face="default" storage="chara/2/mina_smile.png"]
[chara_new name="カナエ" storage="chara/3/kanae_normal.png" jname="カナエ" width="400" top="100"]
[chara_face name="カナエ" face="default" storage="chara/3/kanae_normal.png"]
[chara_new name="tasky" storage="chara/4/tasky_normal.png" jname="tasky" width="400" top="100"]
[chara_face name="tasky" face="default" storage="chara/4/tasky_normal.png"]
[chara_face name="tasky" face="warning" storage="chara/4/tasky_warning.png"]

; 変数初期化
[eval exp="f.f_dep = 0"]
[eval exp="f.f_fat = 0"]
[eval exp="f.f_kanae = 0"]

;-----------------------------------------
; シナリオ開始
;-----------------------------------------
[bg storage="room-night.jpg" time="1000"]
[playbgm storage="BGM_01_導入.mp3" volume="50"]
[playse storage="SE11 環境音：都会の喧騒.mp3" volume="30" loop="true"]

; ナレーター
[stopse buf=1]
[playse storage="narrator/窓の外は、暴力的なまでに〜として訴えかけているようだった。.mp3" buf=1]
#モノローグ
窓の外は、暴力的なまでに煌々と輝く〈インデックス・シティ〉のネオン。[l][r]
その人工的な光は、遮光カーテンの隙間から強引に侵入し、[l][r]
僕の部屋の暗さを「非生産的な怠惰」という罪として訴えかけているようだった。[p]

[stopse buf=1]
[playse storage="narrator/この街は、巨大な監視システムそのものだ。...誰もが画面に映る「ルーチン・スコア」を誇示し、互いの「努力」を監視し合っている。.mp3" buf=1]
#モノローグ
この街は、巨大な監視システムそのものだ。[l][r]
街頭のカメラ、オフィスのPC、そして手元のスマートフォン。[l][r]
誰もが画面に映る「ルーチン・スコア」を誇示し、互いの「努力」を監視し合っている。[p]

[stopse buf=1]
[playse storage="narrator/「今日のスコアは98点だ」「睡眠効率が落ちているぞ」……そんな会話が挨拶代わりに交わされる世界。〜僕の胃を締め上げる。.mp3" buf=1]
#モノローグ
「今日のスコアは98点だ」「睡眠効率が落ちているぞ」……[l][r]
そんな会話が挨拶代わりに交わされる世界。[l][r]
その圧力は、公的な罰則よりも重く、粘着質な自己否定となって僕の胃を締め上げる。[p]

[stopse buf=1]
[playse storage="narrator/このままでは、社会から期待されない「平凡以下の不良資産（バッド・アセット）」として、この都市の光の届かない隅で埋もれてしまうだろう。.mp3" buf=1]
#モノローグ
僕のスコアは 72 。平均以下だ。[l][r]
同僚たちは着実に昇進リストに名を連ねていく中、[l][r]
僕は卒業研究のテーマすら決まらず、日々の雑務に忙殺されている。[l][r]
このままでは、社会から期待されない「平凡以下の不良資産（バッド・アセット）」として、[l][r]
この都市の光の届かない隅で埋もれてしまうだろう。[p]

; 机へフォーカス
[bg storage="myroom_night.jpg" time="1000"]

[stopse buf=1]
[playse storage="narrator/常に感じる、喉の奥に張り付いたような焦燥感と自己嫌悪。... 「変わりたい」 その思いだけが空回りして、何一つ行動に移せない。.mp3" buf=1]
#モノローグ
常に感じる、喉の奥に張り付いたような 焦燥感と自己嫌悪 。[l][r]
「変わりたい」 その思いだけが空回りして、何一つ行動に移せない。[p]

[stopse buf=1]
[playse storage="narrator/何とかして、この無力な日常の閉塞感から、自分の意志で抜け出したかった。...誰かに、正解を教えて欲しかった。.mp3" buf=1]
#モノローグ
何とかして、この無力な日常の閉塞感から、自分の意志で抜け出したかった。[l][r]
誰かに、正解を教えて欲しかった。[p]

[stopse]
[playse storage="SE08 スマホタップ音.mp3"]

; 広告画像
[bg storage="advertisement.jpg" time="500" method="crossfade"]
[wait time=2000]

; Taskyボイス
[stopse buf=1]
[playse storage="tasky/まだ、迷っているのですか？ あなたの内なる可能性を引き出し、埋もれた努力を数値で証明します。...あなたの人生を変える、最初で最後の一歩を.mp3" buf=1]
#tasky (広告音声)
『まだ、迷っているのですか？[l][r]
あなたの内なる可能性を引き出し、埋もれた努力を数値で証明します。[l][r]
自己管理AIアプリ『tasky』。[l][r]
今ならインストール無料。あなたの人生を変える、最初で最後の一歩を』[p]

; 部屋へ戻る
[bg storage="myroom_night.jpg" time="500"]

[stopse buf=1]
[playse storage="narrator/SNSのタイムラインが、taskyの広告で埋め尽くされている。...友人も、同僚も、皆これを使っているという。.mp3" buf=1]
#モノローグ
SNSのタイムラインが、taskyの広告で埋め尽くされている。[l][r]
まるで、僕の深夜の苦悩を見透かしたかのように。[l][r]
友人も、同僚も、皆これを使っているという。[p]

[stopse buf=1]
[playse storage="narrator/これが、最後のチャンスかもしれない。...僕はtaskyに、僕の人生の主導権を委ねてみようと決めた。.mp3" buf=1]
#モノローグ
これが、最後のチャンスかもしれない。[l][r]
藁にもすがる思いで、震える指先を画面に伸ばす。[l][r]
僕はtaskyに、僕の人生の主導権を委ねてみようと決めた。[p]

[playse storage="SE01インストール音_起動音.mp3"]
[mask effect="fadeIn" color="0xffffff" time="200"]
[bg storage="myroom_night.jpg" time="0"]
[mask_off effect="fadeOut" time="1000"]

[chara_show name="tasky" time="1000"]

; Taskyボイス
[stopse buf=1]
[playse storage="tasky/ようこそ、ユーザーID：404。...私はあなたの生産性を最大限に引き出し、理想の自己へと導くパートナーです。.mp3" buf=1]
#tasky
ようこそ、ユーザーID：404。[l][r]
私はあなたの生産性を最大限に引き出し、理想の自己へと導くパートナーです。[p]

[stopse buf=1]
[playse storage="tasky/あなたの無駄を削ぎ落とし、幸福への最短ルートを計算します。...完了してください。.mp3" buf=1]
#tasky
あなたの無駄を削ぎ落とし、幸福への最短ルートを計算します。[l][r]
初回起動タスク：『自己紹介の承認』を認識しました。完了してください。[p]

[glink color="blue" size="24" x="360" width="400" y="250" text="【承認する】" target="*approve"]
[s]

*approve
[playse storage="SE08 スマホタップ音.mp3"]
[quake count=3 time=300 hmax=10]

[stopse buf=1]
[playse storage="narrator/「承認」ボタンをタップした瞬間、全身が電流に打たれたように痺れ、そして同時に重荷が消え去ったような浮遊感を覚えた。.mp3" buf=1]
#モノローグ
「承認」ボタンをタップした瞬間、全身が電流に打たれたように痺れ、[l][r]
そして同時に重荷が消え去ったような浮遊感を覚えた。[p]

[stopse buf=1]
[playse storage="narrator/「素晴らしい判断です」……画面に表示されたその文字。...そんなポジティブな肯定の言葉、最近誰からもかけられていなかった。.mp3" buf=1]
#モノローグ
「素晴らしい判断です」……画面に表示されたその文字。[l][r]
そんなポジティブな肯定の言葉、最近誰からもかけられていなかった。[p]

[stopse buf=1]
[playse storage="narrator/まるで、生まれたての赤ちゃんのように、世界が輝いて見えた。...新しい僕を。.mp3" buf=1]
#モノローグ
まるで、生まれたての赤ちゃんのように、世界が輝いて見えた。[l][r]
これで、僕もあの光を手に入れられる。さあ、始めよう。新しい僕を。[p]

[chara_hide_all time=500]
[jump storage="chapter1.ks"]