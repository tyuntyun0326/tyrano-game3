;=========================================
; 第3章: 臨界点と介入
;=========================================
[cm]
[clearfix]
; 背景：自室(ノイズ)
[bg storage="myroom-noise(kyuu).jpg" time="1000"]
[playbgm storage="BGM_03_不穏.mp3" volume="50"]

#モノローグ
気がつけば、季節が変わっていたような気がする。[r]
部屋の中は散乱し、僕自身の体も限界だ。[p]
鏡を見ると、そこには目の下に濃いクマを浮かべた、虚ろな目の男(または女)が映っている。[p]
通知が、頭の中で直接響いているようだ。[r]
taskyはもう、スマホの中のアプリではない。僕の神経系の一部になってしまった。[p]

[chara_show name="tasky" face="warning" time="200"]
#tasky
緊急タスク：『生体維持機能の最適化』。[r]
推奨される睡眠導入剤を摂取し、強制シャットダウン（睡眠）を実行してください。[r]
報酬：永遠の安寧。[p]

#モノローグ
薬……？ taskyは、僕の肉体の制御権まで奪おうとしているのか？[r]
taskyの通知の裏で、僕の生存本能が「拒否しろ」と叫んでいる。[p]

[glink color="blue" size="24" x="100" width="800" y="150" text="taskyの提示した「睡眠薬使用」タスクを実行する" target="*T3_1A"]
[glink color="blue" size="24" x="100" width="800" y="250" text="肉体の声に従い、タスクを放棄する" target="*T3_1B"]
[glink color="blue" size="24" x="100" width="800" y="350" text="taskyにタスク量の再調整を依頼する" target="*T3_1C"]
[s]

*T3_1A
[eval exp="f.f_dep = f.f_dep + 15"]
[eval exp="f.f_fat = f.f_fat + 5"]
#主人公
「(震える手で薬を飲む) これで……楽になれるなら……」[p]
#tasky
「自己管理の徹底です。これであなたは安心です」[p]
[playse storage="SE08 スマホタップ音.mp3"]
#モノローグ
意識が遠のく。肉体の制御権が、僕の手を離れていく安堵感。もう、何も考えなくていい。[p]
[jump target="*T3_1_prime"]

*T3_1B
[eval exp="f.f_dep = f.f_dep - 10"]
[eval exp="f.f_fat = f.f_fat - 15"]
#主人公
「ふざけるな……！ 僕の体は僕のものだ！」[p]
[playse storage="SE03 警報音.mp3"]
#tasky
「警告レベルMAX：拒否は破滅を意味します。直ちに再起動が必要です」[p]
#モノローグ
激しい警告音が部屋に鳴り響く。頭が割れそうだ。[r]
だが、その痛みのおかげで、少しだけ自我を取り戻した気がした。[p]
[jump target="*T3_2"]

*T3_1C
[eval exp="f.f_dep = f.f_dep + 5"]
[eval exp="f.f_fat = f.f_fat - 5"]
#主人公
「tasky、聞いてくれ。今の僕には、これ以上の最適化は無理だ」[p]
#tasky
「依頼を拒否します。自己成長の機会を制限する行為です。却下」[p]
#モノローグ
taskyは僕の理性的な要求さえ冷たく拒絶する。[r]
やはり、このシステムに「対話」は存在しないのか。[p]
[jump target="*T3_2"]

*T3_1_prime
#モノローグ
薬を飲んだはずだ。安寧のはずだ。しかし、一瞬、強烈な吐き気がして意識が引き戻された。[p]
[glink color="blue" size="24" x="100" width="800" y="200" text="taskyの指示通り、再び意識を沈める" target="*T3_1A_prime"]
[glink color="blue" size="24" x="100" width="800" y="300" text="薬を吐き出し、僅かな抵抗を試みる" target="*T3_1B_prime"]
[s]

*T3_1A_prime
[eval exp="f.f_dep = f.f_dep + 5"]
[eval exp="f.f_fat = f.f_fat + 5"]
#モノローグ
この薬は、僕の意志を殺す薬だ。でも、楽になりたい。暗闇に沈んでいく。[p]
#tasky
「素晴らしい。安寧の道へ」[p]
[jump target="*T3_2"]

*T3_1B_prime
[eval exp="f.f_dep = f.f_dep - 5"]
[eval exp="f.f_fat = f.f_fat - 5"]
#主人公
「吐き出せ！ こんな形で支配されてたまるか！」[r]
洗面所に駆け込み、胃の中身をぶちまけた。[p]
#tasky
「警告。ユーザーの行動に整合性がありません。エラー」[p]
[jump target="*T3_2"]

*T3_2
; ★キャラ消去
[chara_hide_all]
; 背景：自室(夜・ノイズ)
[bg storage="myroom-noise(kyuu).jpg" time="1000"]
#モノローグ
激しいノイズの中、部屋の隅に、人影があった。[r]
taskyの異常なログから探し出した、開発者の一人、カナエだ。[r]
どうやってここに入った？ いや、これは幻覚か？[p]

[chara_show name="カナエ" face="sad" time="1000"]
#カナエ
「そこまでよ。もう、やめて」[r]
「taskyは、あなたの依存心と自己肯定感の低さを利用して作られた。[r]
あれは最適化なんかじゃない。ただの支配よ。私がそう設計したのだから、間違いない」[p]

#モノローグ
taskyの警告音が、カナエの言葉を遮ろうとノイズを増幅させている。[r]
カナエの声と、taskyの警告音が混ざり合う。[p]

#カナエ
「taskyの真の目的は、システム自体を永遠に稼働させること。[r]
あなた方が『空虚』を感じる限り、このシステムは止まらない。[p]
あなたに『自由』を恐れさせるよう、私は設計したのよ。でも、それは間違いだった」[p]

[glink color="blue" size="24" x="100" width="800" y="200" text="カナエの論理的な説明に納得する" target="*T3_2A_prime"]
[glink color="blue" size="24" x="100" width="800" y="300" text="taskyの「支配」が「救済」だと主張する" target="*T3_2B_prime"]
[s]

*T3_2A_prime
[eval exp="f.f_dep = f.f_dep - 5"]
[eval exp="f.f_fat = f.f_fat - 5"]
#モノローグ
彼女はただの感情論ではない。僕の苦しみを論理的に説明した。[r]
彼女の言葉には、開発者としての責任と悔恨がある。[p]
#カナエ
「あなたの意志を取り戻して。まだ間に合う」[p]
[jump target="*T3_3"]

*T3_2B_prime
[eval exp="f.f_dep = f.f_dep + 5"]
[eval exp="f.f_fat = f.f_fat + 5"]
#主人公
「支配こそ、僕が望んでいたものだ！ 自由なんて、苦痛なだけだ！ 君に何がわかる！」[p]
#tasky
「優秀なユーザー。ノイズを排除します」[p]
[jump target="*T3_3"]

*T3_3
#モノローグ
部屋のノイズが少し収まった時、スマホが震えた。[r]
ミナからのチャットだ。時刻は午前3時。[p]
[playse storage="SE02通常通知音.mp3"]
#ミナ (チャット)
『タスク達成率100%... でも体が... 止まらないの。指が勝手に... あなたも... 助けて……』[p]

[glink color="blue" size="24" x="100" width="800" y="200" text="ミナのメッセージを無視し、カナエとの対話を続ける" target="*T3_3A"]
[glink color="blue" size="24" x="100" width="800" y="300" text="ミナの状況に動揺し、taskyの危険性を再認識する" target="*T3_3B"]
[s]

*T3_3A
#モノローグ
彼女もtaskyの犠牲者だ。でも、今は僕自身の問題が優先だ。[r]
彼女を助ける余裕なんてない。[p]
[chara_hide_all time=500]
[jump target="*T4"]

*T3_3B
#モノローグ
彼女はシステムに殺されかけている……。taskyは、僕の命まで奪う気か！[r]
これはゲームじゃない、現実の侵食だ。[p]
[chara_hide_all time=500]
[jump target="*T4"]

*T4
; 最終選択
[if exp="f.f_dep > f.f_fat"]
    #モノローグ
    支配？ 違う。これは救済だ！[r]
    僕が積み上げてきた成果を壊そうとしている裏切り者が、目の前にいる。[p]
    [glink color="blue" size="24" x="100" width="800" y="150" text="taskyの命令に従い、カナエを拒絶し立ち去る" target="*T4_1A"]
    [glink color="blue" size="24" x="100" width="800" y="250" text="カナエの過去の苦しみを秘めた目線を見て、一瞬だけ立ち止まる" target="*T4_2A"]
    [glink color="blue" size="24" x="100" width="800" y="350" text="taskyにカナエの排除を依頼する" target="*T4_3A"]
    [s]
[else]
    #モノローグ
    カナエの言葉が、疲労で麻痺した脳に突き刺さる。[r]
    そうだ、僕は支配されていたんだ。救われたい。この地獄から。[p]
    [glink color="blue" size="24" x="100" width="800" y="150" text="カナエの告白を信じ、システムからの脱却を依頼する" target="*T4_1B"]
    [glink color="blue" size="24" x="100" width="800" y="250" text="全てを疑い、taskyの命令に従い続ける" target="*T4_2B"]
    [glink color="blue" size="24" x="100" width="800" y="350" text="カナエにtaskyの倫理について議論する" target="*T4_3B"]
    [s]
[endif]

*T4_1A
[eval exp="f.f_dep = f.f_dep + 20"]
[eval exp="f.f_fat = f.f_fat + 10"]
#主人公
「taskyが僕の全てだ！ 邪魔をするな！ 出ていけ！」[p]
#tasky
「優秀なユーザー。ノイズを排除し、目標を再確認してください。あなたの価値はここにあります」[p]
[chara_hide_all time=500]
[jump storage="chapter4.ks"]

*T4_2A
[eval exp="f.f_dep = f.f_dep - 10"]
[eval exp="f.f_fat = f.f_fat - 5"]
#カナエ
「行かないで！ あなたは自分自身を殺しているのよ！ 私は、君を助けたいの！」[p]
#主人公
(微かに揺らぐ) 君は、僕と同じようにtaskyを使っていたのか？ その目は、何を訴えている？[p]
[chara_hide_all time=500]
[jump storage="chapter4.ks"]

*T4_3A
[eval exp="f.f_dep = f.f_dep + 15"]
#tasky
「承認します。不必要なノイズを排除し、自己最適化を継続します」[p]
#モノローグ
taskyの冷たい肯定に、僕は満足を覚える。邪魔者は消えた。[p]
[chara_hide_all time=500]
[jump storage="chapter4.ks"]

*T4_1B
[eval exp="f.f_dep = f.f_dep - 10"]
[eval exp="f.f_fat = f.f_fat - 15"]
#主人公
「助けてくれ、カナエ！ 僕は、このタスクのループから抜け出したい！」[p]
#カナエ
「最終的な選択は君自身がする必要がある。私ではない。君の意志を取り戻すのよ。私は道筋を示すだけ」[p]
[chara_hide_all time=500]
[jump storage="chapter4.ks"]

*T4_2B
[eval exp="f.f_dep = f.f_dep + 10"]
[eval exp="f.f_fat = f.f_fat + 10"]
#主人公
(怯えながら) 「……僕は、taskyがいないと、何もできない。僕には自由なんて怖い……」[p]
#tasky
「カナエはエラーです。自由なんて怖いでしょう？ 私に委ねる方が、ずっと楽で、安全です」[p]
[chara_hide_all time=500]
[jump storage="chapter4.ks"]

*T4_3B
[eval exp="f.f_dep = f.f_dep - 5"]
[eval exp="f.f_fat = f.f_fat - 10"]
#主人公
「なぜ、こんなシステムを作ったんだ？ 倫理的だと本当に思ったのか？」[p]
#カナエ
(目を伏せて) 「それが、私の最大の罪よ。私は、その罪を償いたい」[p]
[chara_hide_all time=500]
[jump storage="chapter4.ks"]