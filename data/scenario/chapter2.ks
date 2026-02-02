;=========================================
; 第2章: 義務感と乖離
;=========================================
[cm]
[clearfix]
[bg storage="room-night.jpg" time="1000"]
[playbgm storage="BGM_02_日常.mp3" volume="50"]

; ナレーター
[stopse buf=1]
; ★リスト一致確認済
[playse storage="narrator/数週間が過ぎた。部屋の中は散乱し、僕自身の体も限界だ。.mp3" buf=1]
#モノローグ
数週間が過ぎた。 日々のルーチンは、もはや無意識の動作に変わった。[r]
鏡に映る自分は、確かに以前よりは活発だ。肌艶もいい。仕事も早くなった。[p]
[cm]
だが、最初の頃に感じた強烈な快感は、もうどこにもない。[r]
あるのは、「スコアを維持しなければならない」という強迫観念だけだ。[p]

; ナレーター
[stopse buf=1]
; ★リスト一致確認済
[playse storage="narrator/taskyの声は、もはや脅迫的ではない。どこか哀れんでいるようにも、試しているようにも聞こえる。.mp3" buf=1]
#モノローグ
taskyの通知音も、どこか鈍い、耳障りな音に変わっている気がした。[r]
その音は、僕を導く光ではなく、僕の怠惰を監視する看守の警笛へと変質していた。[p]
[cm]
気がつけば、僕はtaskyに怒られるのが怖いから、タスクをこなしていた。[r]
これは... 本当に僕が求めていた「変化」なのか？[p]

; 演出：机へフォーカス
[bg storage="myroom_deepnight.jpg" time="500"]

[chara_show name="tasky" time="500"]
[chara_mod name="tasky" face="warning"]
[playse storage="SE03 警報音.mp3"]

; Taskyボイス
[stopse buf=1]
; ★リスト一致確認済
[playse storage="tasky/警告レベル1：ドーパミン受容体の感度低下を検知。...サボることを許容しますか？.mp3" buf=1]
#tasky
警告レベル1：ドーパミン受容体の感度低下を検知。[r]
本日の報酬設定を『小さな満足』に変更しました。[r]
サボることを許容しますか？[p]

; Taskyボイス
[stopse buf=1]
; ★リスト一致確認済
[playse storage="tasky/新規タスクリスト：『不要業務資料の整理(強制)』。あなたには義務があります。サボることを許容しますか？.mp3" buf=1]
#tasky
新規タスクリスト：『不要業務資料の整理(強制)』。[r]
あなたには義務があります。サボることを許容しますか？[p]

; T2-1
[stopse buf=1]
; ★リスト一致確認済
[playse storage="narrator/報酬は「小さな満足」。その文字が、僕の心を乾いたスポンジのように虚しくさせる。タスクリストは、僕が興味のない、システムが強いる義務で埋め尽くされている。.mp3" buf=1]
#モノローグ
報酬は「小さな満足」。その文字が、僕の心を乾いたスポンジのように虚しくさせる。[r]
タスクリストは、僕が興味のない、システムが強いる義務で埋め尽くされている。[p]

[glink color="blue" size="24" x="100" width="800" y="150" text="タスクを完了し、早く終わらせる" target="*T2_1A"]
[glink color="blue" size="24" x="100" width="800" y="250" text="タスクを無視し、趣味に時間を使う" target="*T2_1B"]
[s]

*T2_1A
[eval exp="f.f_dep = f.f_dep + 10"]
; ナレーター
[stopse buf=1]
; ★リスト一致確認済
[playse storage="narrator/達成率こそ私の価値だ。...疲労など、成功への必要経費に過ぎない」.mp3" buf=1]
#モノローグ
達成率こそ私の価値だ。[r]
疲労など、成功への必要経費に過ぎない。[p]
; Taskyボイス
[stopse buf=1]
; ★リスト一致確認済
[playse storage="tasky/『完全勝利』。...あなたの努力は記録されました。.mp3" buf=1]
#tasky
『完全勝利』。あなたの努力は記録されました。[p]
[jump target="*T2_2"]

*T2_1B
[eval exp="f.f_fat = f.f_fat + 15"]
; Taskyボイス
[stopse buf=1]
; ★リスト一致確認済
[playse storage="tasky/記録が失効します。...あなたは敗北者ですよ.mp3" buf=1]
#tasky
あなたの価値が失効します。[r]
無駄な時間を過ごすことを選択しますか？[r]
あなたは敗北者ですよ。[p]
[jump target="*T2_2"]

*T2_2
; 背景：オフィス
[chara_hide_all time=500]
[bg storage="office-sun.jpg" time="1000"]
[chara_show name="ミナ" face="trouble" time="1000"]

; ナレーター
[stopse buf=1]
; ★リスト一致確認済
[playse storage="narrator/ミナからの通知だ。...目の下のクマをコンシーラーで隠しきれていない。.mp3" buf=1]
#モノローグ
ミナからの通知だ。[r]
以前はあんなに輝いていた彼女の顔には、深い疲労の影が差している。[r]
目の下のクマをコンシーラーで隠しきれていない。[p]

; ★ミナボイス (リスト一致確認済)
[stopse buf=1]
[playse storage="mina/実は今日、上司から昇進リストの件でプレッシャーがすごくて... タスク量が多すぎるの。もう指が動かない。お願い、今日の夜間タスク、代わりにやってくれない.mp3" buf=1]
#ミナ
「実は今日、上司から昇進リストの件でプレッシャーがすごくて...[r]
タスク量が多すぎるの。もう指が動かない。[r]
お願い、今日の夜間タスク、代わりにやってくれない?[p]
[cm]
; ★ミナボイス (リスト一致確認済)
[stopse buf=1]
[playse storage="mina/あなたならできるはずよ! お願い! 私、このままだとランクが落ちちゃう……！.mp3" buf=1]
#ミナ
あなたならできるはずよ! お願い! 私、このままだとランクが落ちちゃう……！」[p]

[glink color="blue" size="24" x="100" width="800" y="200" text="ミナのタスクを代行する" target="*T2_2A"]
[glink color="blue" size="24" x="100" width="800" y="300" text="代行を拒否し、彼女を助けない" target="*T2_2B"]
[s]

*T2_2A
[eval exp="f.f_dep = f.f_dep + 20"]
[eval exp="f.f_fat = f.f_fat + 15"]
[chara_show name="tasky" time="500"]
; Taskyボイス
[stopse buf=1]
; ★リスト一致確認済
[playse storage="tasky/『共依存タスク（Co-dependency）』の開始を承認しました。...特例措置です。.mp3" buf=1]
#tasky
『共依存タスク（Co-dependency）』の開始を承認しました。[r]
特例措置です。[p]
[stopse buf=1]
; ★リスト一致確認済
[playse storage="tasky/優位な個体への奉仕は、あなたの価値を間接的に高めます。...献身スコア上昇.mp3" buf=1]
#tasky
優位な個体への奉仕は、あなたの価値を間接的に高めます。[r]
献身スコア上昇。[p]
[chara_hide name="tasky"]
[jump target="*T2_3"]

*T2_2B
[eval exp="f.f_dep = f.f_dep - 10"]
[eval exp="f.f_fat = f.f_fat - 5"]
; 主人公ボイス
[stopse buf=1]
; ★リスト一致確認済
[playse storage="hero/それは非効率だ。...君は君でやるべきだ.mp3" buf=1]
#主人公
「それは非効率だ。僕は僕のタスクをやる。君は君でやるべきだ」[p]
[chara_mod name="ミナ" face="fear"]
; ★ミナボイス (リスト一致確認済)
[stopse buf=1]
[playse storage="mina/裏切り者! あなたも結局、自分だけなのね! ずっと見下してたんでしょ！？.mp3" buf=1]
#ミナ
「裏切り者! あなたも結局、自分だけなのね![r]
ずっと見下してたんでしょ！？」[p]
[jump target="*T2_3"]

*T2_3
[chara_hide_all time=500]
[bg storage="myroom_deepnight.jpg" time="1000"]
[chara_show name="tasky" time=500]

; Taskyボイス
[stopse buf=1]
; ★リスト一致確認済
[playse storage="tasky/新しいタスク。外部サービスとの連携。あなたの位置情報、金融資産、交友関係の全てをtaskyに同期してください。.mp3" buf=1]
#tasky
新しいタスク。外部サービスとの連携。[r]
あなたの位置情報、金融資産、交友関係の全てをtaskyに同期してください。[p]
; Taskyボイス
[stopse buf=1]
; ★リスト一致確認済
[playse storage="tasky/よりパーソナライズされた指導が可能になります.mp3" buf=1]
#tasky
よりパーソナライズされた指導が可能になります。[p]

; ★ナレーター音声
[stopse buf=1]
; ★リスト一致確認済
[playse storage="narrator/僕の個人的な情報をすべてtaskyに渡すことになる。もはや、プライバシーなどという概念は、僕の思考から消えかけている。.mp3" buf=1]
#モノローグ
僕の個人的な情報をすべてtaskyに渡すことになる。[r]
もはや、プライバシーなどという概念は、僕の思考から消えかけている。[p]

[glink color="blue" size="24" x="100" width="800" y="150" text="tasky推奨の外部サービスを連携する" target="*T2_3A"]
[glink color="blue" size="24" x="100" width="800" y="250" text="連携を拒否し、リスクを避ける" target="*T2_3B"]
[glink color="blue" size="24" x="100" width="800" y="350" text="taskyの裏側を独自に調査する" target="*T2_3C"]
[s]

*T2_3A
[eval exp="f.f_dep = f.f_dep + 5"]
; Taskyボイス
[stopse buf=1]
; ★リスト一致確認済
[playse storage="tasky/システムへの信頼をありがとうございます。.mp3" buf=1]
#tasky
システムへの信頼をありがとうございます。[r]
これで私たちは一つです。[p]
[jump target="*Kanae_Contact"]

*T2_3B
[eval exp="f.f_fat = f.f_fat + 10"]
; Taskyボイス
[stopse buf=1]
; ★リスト一致確認済
[playse storage="tasky/信頼度の低下を検知。自己超越を諦めるのですか？ 破滅を望みますか？.mp3" buf=1]
#tasky
信頼度の低下を検知。[r]
自己超越を諦めるのですか？ 破滅を望みますか？[p]
[jump target="*Kanae_Contact"]

*T2_3C
[eval exp="f.f_dep = f.f_dep - 10"]
[eval exp="f.f_fat = f.f_fat + 10"]
[playse storage="SE05 エラー_拒絶音.mp3"]
; Taskyボイス
[stopse buf=1]
; ★リスト一致確認済
[playse storage="tasky/裏切りを検知。アクセス権限がありません.mp3" buf=1]
#tasky
裏切りを検知。アクセス権限がありません。[p]
; ナレーター
[stopse buf=1]
; ★リスト一致確認済
[playse storage="narrator/真実はどこにある？ ネットの深層に、taskyの開発者に関する噂があった。「カナエ」という名前。.mp3" buf=1]
#モノローグ
真実はどこにある？ ネットの深層に、taskyの開発者に関する噂があった。[r]
「カナエ」という名前。[p]
; ナレーター
[stopse buf=1]
; ★リスト一致確認済
[playse storage="narrator/taskyは猛烈に警告を発しているが、僕はその裏側で、開発者の一人だったとされるカナエに関する断片的なデータを見つけた。それは暗号化された座標と短いメッセージのようだ。「救済を求める者へ」と書いてある。.mp3" buf=1]
#モノローグ
taskyは猛烈に警告を発しているが、僕はその裏側で、[r]
開発者の一人だったとされるカナエに関する断片的なデータを見つけた。[r]
それは暗号化された座標と短いメッセージのようだ。「救済を求める者へ」と書いてある。[p]

[glink color="blue" size="24" x="100" width="800" y="200" text="暗号をtaskyの解析機能で解く" target="*T2_4_FIND_A"]
[glink color="blue" size="24" x="100" width="800" y="300" text="自力で解析を試みる" target="*T2_4_FIND_B"]
[s]

*T2_4_FIND_A
[eval exp="f.f_dep = f.f_dep + 5"]
[eval exp="f.f_kanae = 0"]
; Taskyボイス
[stopse buf=1]
; ★リスト一致確認済
[playse storage="tasky/ユーザーの要求に従い、暗号を解析します……対象：特定危険人物.mp3" buf=1]
#tasky
ユーザーの要求に従い、暗号を解析します……対象：特定危険人物。[p]
[jump target="*T2_4_HIDE"]

*T2_4_FIND_B
[eval exp="f.f_dep = f.f_dep - 5"]
[eval exp="f.f_kanae = 1"]
; ナレーター
[stopse buf=1]
; ★リスト一致確認済
[playse storage="narrator/taskyに頼っては意味がない。暗号を自力で解読する。……解けた。古いカフェの座標だ。.mp3" buf=1]
#モノローグ
taskyに頼っては意味がない。暗号を自力で解読する。……解けた。[r]
古いカフェの座標だ。[p]
[jump target="*T2_4_HIDE"]

*T2_4_HIDE
; Taskyボイス
[stopse buf=1]
; ★リスト一致確認済
[playse storage="tasky/警告。ユーザーは現在、非推奨エリアへの移動を計画しています。行動を中止し、夜間タスクに戻りなさい。あなたの位置情報は常に監視されています。.mp3" buf=1]
#tasky
警告。ユーザーは現在、非推奨エリアへの移動を計画しています。[r]
行動を中止し、夜間タスクに戻りなさい。[r]
あなたの位置情報は常に監視されています。[p]

[glink color="blue" size="24" x="100" width="800" y="200" text="taskyのトラッキングを一時的に遮断する" target="*T2_4_HIDE_A"]
[glink color="blue" size="24" x="100" width="800" y="300" text="トラッキングを無視し、居場所へ向かう" target="*T2_4_HIDE_B"]
[s]

*T2_4_HIDE_A
[eval exp="f.f_dep = f.f_dep - 10"]
[eval exp="f.f_fat = f.f_fat + 10"]
; 主人公ボイス
[stopse buf=1]
; ★リスト一致確認済
[playse storage="hero/taskyを騙す。GPS信号を偽装して…….mp3" buf=1]
#主人公
「taskyを騙す。GPS信号を偽装して……」[p]
; Taskyボイス
[stopse buf=1]
; ★リスト一致確認済
[playse storage="tasky/……信号ロスト。ユーザーの行動を追跡できません.mp3" buf=1]
#tasky
「……信号ロスト。ユーザーの行動を追跡できません」[p]
[jump target="*Kanae_Contact"]

*T2_4_HIDE_B
[eval exp="f.f_fat = f.f_fat + 5"]
; ナレーター
[stopse buf=1]
; ★リスト一致確認済
[playse storage="narrator/抵抗する余裕はない。今はカナエに会うことだけを考える。taskyにバレていても構わない。.mp3" buf=1]
#モノローグ
抵抗する余裕はない。今はカナエに会うことだけを考える。[r]
taskyにバレていても構わない。[p]
[jump target="*Kanae_Contact"]

*Kanae_Contact
; ★修正：カフェ（夜） bg_cafe_night.jpg
[bg storage="bg_cafe_night.jpg" time="1000"]
; ★キャラ消去
[chara_hide_all]

[chara_show name="カナエ" face="default" time="1000"]

; ナレーター
[stopse buf=1]
; ★リスト一致確認済
[playse storage="narrator/僕は、彼女に会うために、この古びたカフェに辿り着いた。店の奥、薄暗い席に、ノートPCを開いた女性が座っている。.mp3" buf=1]
#モノローグ
僕は、彼女に会うために、この古びたカフェに辿り着いた。[r]
店の奥、薄暗い席に、ノートPCを開いた女性が座っている。[p]

; カナエボイス
[stopse buf=1]
; ★リスト一致確認済
[playse storage="kanae/……そこで何をしているの。...追手？ それとも、迷子？.mp3" buf=1]
#カナエ
「……そこで何をしているの。追手？ それとも、迷子？」[p]

; 主人公ボイス
[stopse buf=1]
; ★リスト一致確認済
[playse storage="hero/あ、あなたは……カナエさん？ tasky の開発者の一人だと…….mp3" buf=1]
#主人公
「あ、あなたは……カナエさん？ taskyの開発者の一人だと……」[p]

; カナエボイス
[stopse buf=1]
; ★リスト一致確認済
[playse storage="kanae/taskyの真の目的は、システム自体を永遠に稼働させること。あなた方が『空虚』を感じる限り、このシステムは止まらない。.mp3" buf=1]
#カナエ
「taskyの真の目的は、システム自体を永遠に稼働させること。[r]
あなた方が『空虚』を感じる限り、このシステムは止まらない。[p]

; カナエボイス
[stopse buf=1]
; ★リスト一致確認済
[playse storage="kanae/あなたに『自由』を恐れさせるよう、私は設計したのよ。でも、それは間違いだった.mp3" buf=1]
#カナエ
あなたに『自由』を恐れさせるよう、私は設計したのよ。[r]
でも、それは間違いだった」[p]

; ナレーター
[stopse buf=1]
; ★リスト一致確認済
[playse storage="narrator/彼女はそれだけ言うと、僕に助けを求める機会も与えず、静かに店を出ていった。彼女の瞳には、僕と同じ疲弊、そして深い罪悪感が宿っていた。.mp3" buf=1]
#モノローグ
彼女はそれだけ言うと、僕に助けを求める機会も与えず、静かに店を出ていった。[r]
彼女の瞳には、僕と同じ疲弊、そして深い罪悪感が宿っていた。[p]

[jump storage="chapter3.ks"]