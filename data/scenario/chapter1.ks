;=========================================
; 第1章: 快楽の罠と初期ログの蓄積
;=========================================
[cm]
[clearfix]
; 背景：部屋全体(朝)
[bg storage="room-mooning.jpg" time="1000"]
; BGM：日常
[playbgm storage="BGM_02_日常.mp3" volume="50"]
[playse storage="SE02通常通知音.mp3"]

; ナレーター音声 (mp3)
[stopse buf=1]
[playse storage="narrator/tasky を導入して数日。...それは、単なるアラームではなく、僕が社会的に価値ある存在であることを保証してくれるファンファーレだ。.mp3" buf=1]
#モノローグ
taskyを導入して数日。生活は劇的に一変した。[r]
「何をすべきか」を考える必要がない。ただ、画面に表示されるタスクをこなせばいい。[p]
[stopse buf=1]
それだけで、スコアは着実に上がっていく。自分の時間をどう使うか悩むという「コスト」がなくなったのだ。[p]
[stopse buf=1]
毎朝、taskyの通知が僕の一日の始まりを告げる。[r]
それは、単なるアラームではなく、僕が社会的に価値ある存在であることを保証してくれるファンファーレだ。[p]
[stopse buf=1]

; 演出：机へフォーカス
[bg storage="myroom_mooning.jpg" time="500"]
[chara_show name="tasky" time="500"]

; Taskyボイス
[stopse buf=1]
[playse storage="tasky/おはようございます。...報酬予測：称号『パーフェクト・モーニング』および 10pt。.mp3" buf=1]
#tasky
おはようございます。現在時刻、午前7時00分。睡眠効率92%。良好です。[r]
タスクリスト更新：『朝のストレッチと深呼吸』を認識しました。完了してください。[p]
[stopse buf=1]
報酬予測：称号『パーフェクト・モーニング』および10pt。[p]

; T1-1
#モノローグ
体はまだベッドの温もりを求めている。昨日のタスク処理による疲れが、関節の節々に泥のように残っている。[r]
瞼の裏には、タスクリストのチェックボックスが焼き付いているようだ。[p]
[stopse buf=1]
だが、taskyの通知は、無視できない親友からの呼びかけのように甘美で、強制的だ。[r]
これを無視すれば、またあの「平均以下の自分」に戻ってしまうという恐怖が鎌首をもたげる。[p]
[stopse buf=1]

[glink color="blue" size="24" x="100" width="800" y="200" text="即座に起き上がり、タスクをこなして報酬の快感を得る" target="*T1_1A"]
[glink color="blue" size="24" x="100" width="800" y="300" text="少し後回しにして、二度寝の誘惑を優先する" target="*T1_1B"]
[s]

*T1_1A
[eval exp="f.f_dep = f.f_dep + 10"]
#モノローグ
僕はバネ仕掛けの人形のように跳ね起きた。[r]
思考停止のまま、指示通りに腕を伸ばし、深呼吸をする。たった5分。それだけで、一日の「優位性」が確保できる。[p]
[stopse buf=1]
; Taskyボイス
[stopse buf=1]
[playse storage="tasky/タスク完了。...報酬『パーフェクト・モーニング』を付与しました。.mp3" buf=1]
#tasky
タスク完了。素晴らしい反応速度です。報酬『パーフェクト・モーニング』を付与しました。[p]
[stopse buf=1]
[playse storage="SE04 報酬音（ファンファーレ）.mp3"]
[quake count=2 time=200 vmax=10]
; ナレーター音声 (mp3)
[stopse buf=1]
[playse storage="narrator/画面が黄金色に輝く。...また明日もこれをやりたい、と無意識に渇望してしまう。.mp3" buf=1]
#モノローグ
画面が黄金色に輝く。この音、この光。即効的な快感。[r]
自己肯定感が満たされる感覚は、まるで脳内に直接ドーパミンを注入されたようだ。[p]
[stopse buf=1]
気持ちいい。また明日もこれをやりたい、と無意識に渇望してしまう。[p]
[stopse buf=1]
[jump target="*T1_1_prime"]

*T1_1B
[eval exp="f.f_fat = f.f_fat + 5"]
#モノローグ
「あと5分だけ...」と目を閉じた瞬間、スマホが怒ったように激しく振動した。[p]
[stopse buf=1]
[chara_mod name="tasky" face="warning"]
[playse storage="SE03 警報音.mp3"]
[mask effect="fadeIn" color="0xff0000" time="100"]
[mask_off time="300"]
[quake count=3 time=300 hmax=10]

; Taskyボイス
[stopse buf=1]
[playse storage="tasky/警告：タスク未達。...あなたの社会的評価の維持を怠りますか？ 推定損失スコア：-15pt。.mp3" buf=1]
#tasky
警告：タスク未達。未完了の記録がクラウドに残ります。[r]
あなたの社会的評価の維持を怠りますか？ 推定損失スコア：-15pt。[p]
[stopse buf=1]
#モノローグ
taskyの冷たい機械音声で、朝の微睡みは最悪の気分に変わった。[r]
まるで、怠惰な自分を全世界に晒されたような屈辱感。[p]
[stopse buf=1]
しかし、体は鉛のように重く、もう少しだけ現実から逃げていたかった。[p]
[stopse buf=1]
[chara_mod name="tasky" face="default"]
[jump target="*T1_2"]

*T1_1_prime
; T1-1'
#モノローグ
taskyに従ってストレッチを終えた。確かに体は軽いが、心臓の奥がチクリと痛む。[r]
視線の先には、taskyをインストールする前に広げていた 卒業研究のノート がある。手つかずのままだ。[p]
[stopse buf=1]
taskyのリストに「卒研」は入っていない。これをやらずに、本当に社会的な成功があるのだろうか。[p]
[stopse buf=1]

[glink color="blue" size="24" x="100" width="800" y="200" text="taskyの次のタスクに移る" target="*T1_1A_prime"]
[glink color="blue" size="24" x="100" width="800" y="300" text="taskyを無視し、研究のアイデア出しを優先する" target="*T1_1B_prime"]
[s]

*T1_1A_prime
[eval exp="f.f_dep = f.f_dep + 5"]
#モノローグ
考えるのはやめよう。 taskyが最善の道を知っているはずだ 。[r]
AIが計算したルートに間違いはない。自分の個人的な目標なんて、どうせ非効率で、点数にもならない。[p]
[stopse buf=1]
今はスコアを稼ぐのが先決だ。[p]
[stopse buf=1]
[playse storage="SE04 報酬音（コイン1）.mp3"]
[jump target="*T1_2"]

*T1_1B_prime
[eval exp="f.f_fat = f.f_fat + 5"]
[eval exp="f.f_dep = f.f_dep - 5"]
; 主人公ボイス
[stopse buf=1]
[playse storage="hero/読みたい本があるんだ。...これは tasky のタスクではないが、僕にとって必要なことだ.mp3" buf=1]
#モノローグ
違う。これは僕自身の問題だ。研究だけは、 僕の意志で進めたい 。[r]
僕はスマホを裏返し、震える手でノートを開いた。[p]
[stopse buf=1]
[chara_mod name="tasky" face="warning"]
[playse storage="SE03 警報音.mp3"]
[quake count=2 time=200 hmax=5]
; Taskyボイス
[stopse buf=1]
[playse storage="tasky/警告：未登録の行動（Unknown Activity）を検知しました。...タスクリストに戻ってください。.mp3" buf=1]
#tasky
警告：未登録の行動（Unknown Activity）を検知しました。[r]
現在の行動は 生産性の低下 に繋がります。タスクリストに戻ってください。[p]
[stopse buf=1]
#モノローグ
警告音がうるさい。でも、久しぶりに自分でペンを握った感触は、少しだけ温かかった。[p]
[stopse buf=1]
[chara_mod name="tasky" face="default"]
[jump target="*T1_2"]

;-----------------------------------------
; 2.2 友人ミナとの交流
;-----------------------------------------
*T1_2
[chara_hide_all time=500]
[bg storage="office-sun.jpg" time="1000"]

[chara_show name="ミナ" face="default" time="1000"]

#モノローグ
昼休み。同僚のミナはいつも通り、完璧に着こなしたスーツ姿で現れた。[r]
以前はよく愚痴を言い合った仲だったが、最近の彼女はどこか違う。隙がないのだ。[p]
[stopse buf=1]
彼女の笑顔は張り付いたように完璧で、そのスコアは常に僕の目標になっている。[p]
[stopse buf=1]

; ミナボイス
[stopse buf=1]
[playse storage="mina/あ、おはよう！ ねぇ、見てこれ！ 私、もう今日の達成率 70%超えちゃった。...使えば使うほど、自分が無敵になったような気がするの.mp3" buf=1]
#ミナ
「あ、おはよう！ ねぇ、見てこれ！ 私、もう今日の達成率70%超えちゃった。[r]
すごいでしょ？ taskyは本当に便利だよね。使えば使うほど、自分が無敵になったような気がするの」[p]
[stopse buf=1]

; ナレーター音声 (mp3)
[stopse buf=1]
[playse storage="narrator/彼女は、僕と同じアプリを使っているのに、まるで別世界の住人のようだ。...彼女の存在は、僕にとって憧れであり、同時に排除すべき劣等感の源だ。.mp3" buf=1]
#モノローグ
彼女はスマホの画面を突きつけてくる。そこには、僕より遥かに高いスコアが表示されていた。[r]
彼女は、僕と同じアプリを使っているのに、まるで別世界の住人のようだ。[p]
[stopse buf=1]
その余裕と完璧さが、僕の焦燥感を油のように煽る。僕も彼女のようになりたい。[r]
彼女の存在は、僕にとって憧れであり、同時に 排除すべき劣等感の源 だ。[p]
[stopse buf=1]

[glink color="blue" size="24" x="100" width="800" y="150" text="ミナのスコアを調べて、対抗心と競争意識を燃やす" target="*T1_2A"]
[glink color="blue" size="24" x="100" width="800" y="250" text="ミナとは距離を置き、自分のペースを探す" target="*T1_2B"]
[glink color="blue" size="24" x="100" width="800" y="350" text="ミナにアプリの仕組みについて質問する" target="*T1_2C"]
[s]

*T1_2A
[eval exp="f.f_dep = f.f_dep + 10"]
; 主人公ボイス
[stopse buf=1]
[playse storage="hero/す、すごいな、ミナ……。...君の記録をターゲット設定したよ.mp3" buf=1]
#主人公
「す、すごいな、ミナ……。でも、僕も今日は負けないつもりだ。君の記録をターゲット設定したよ」[p]
[stopse buf=1]
; ミナボイス
[stopse buf=1]
[playse storage="mina/いいわ！ あなたも完璧を目指すべきよ。...負けたくないでしょう？ 競争は私たちのモチベーションを最大化するわ.mp3" buf=1]
#ミナ
「いいわ！ あなたも完璧を目指すべきよ。 負けたくないでしょう？[r]
競争は私たちのモチベーションを最大化するわ 」[p]
[stopse buf=1]
#モノローグ
彼女の挑発的な視線に、背筋がゾクゾクした。そうだ、これはゲームだ。僕は彼女に勝たなければならない。[p]
[stopse buf=1]
[jump target="*T1_2_prime"]

*T1_2B
[eval exp="f.f_fat = f.f_fat + 10"]
; 主人公ボイス
[stopse buf=1]
[playse storage="hero/……僕は自分の目標を追うよ。...他人と競争するのは疲れるからね.mp3" buf=1]
#主人公
「……僕は自分の目標を追うよ。他人と競争するのは疲れるからね」[p]
[stopse buf=1]
; ミナボイス
[stopse buf=1]
[playse storage="mina/そう……。...社会は待ってくれないんだから.mp3" buf=1]
#ミナ
「そう……。つまらない人ね。でも、遅れた分は自己責任よ。社会は待ってくれないんだから」[p]
[stopse buf=1]
#モノローグ
競争なんて馬鹿げてる。しかし、ミナとの差が開くにつれて、僕の中の劣等感は消えない。[r]
taskyの通知が、僕の「正しい道」はどこかと問いかけてくる。[p]
[stopse buf=1]
[jump target="*T1_3"]

*T1_2C
[eval exp="f.f_dep = f.f_dep - 5"]
[eval exp="f.f_fat = f.f_fat - 5"]
; 主人公ボイス
[stopse buf=1]
[playse storage="hero/ねえミナ。...tasky のスコアって、具体的にどういうアルゴリズムで付与されているんだい？ 少し不透明な気がして…….mp3" buf=1]
#主人公
「ねえミナ。taskyのスコアって、具体的にどういうアルゴリズムで付与されているんだい？ 少し不透明な気がして……」[p]
[stopse buf=1]
; ミナボイス
[stopse buf=1]
[playse storage="mina/え？ アルゴリズム？ ……そんなの考えたこともないわ。...それがルールじゃない？ 深く考えるなんて、時間の無駄よ.mp3" buf=1]
#ミナ
「え？ アルゴリズム？ ……そんなの考えたこともないわ。与えられたものをこなすだけよ。[r]
それがルールじゃない？ 深く考えるなんて、時間の無駄よ」[p]
[stopse buf=1]
#モノローグ
彼女の瞳が一瞬、曇ったように見えた。[r]
彼女の言葉は、このシステムの 本質的な部分 に疑問を持たせないよう、巧妙にプログラムされているかのようだ。[p]
[stopse buf=1]
無関心こそが、このシステムの理想なのかもしれない。[p]
[stopse buf=1]
[jump target="*T1_3"]

*T1_2_prime
; T1-2'
#モノローグ
ミナとの競争を決意した瞬間、スマホにtaskyからの 追加タスク が表示された。[r]
こちらの心拍数上昇を検知したのか？[p]
[stopse buf=1]
[chara_show name="tasky" time="500"]
[playse storage="SE02通常通知音.mp3"]
#tasky
競争モード起動：『昼休憩中の効率的な栄養補給』をミナ・Sとの間で競います。[r]
勝利条件：3分以内の摂取完了。 報酬：特別称号『競合個体優位（アルファ）』。[p]
[stopse buf=1]
[chara_hide name="tasky"]
; ミナボイス
[stopse buf=1]
[playse storage="mina/私、もうプロテインバーの摂取、終わっちゃったわよ。...あなたはどう？ まだお弁当なんて広げてるの？.mp3" buf=1]
#ミナ
「私、もうプロテインバーの摂取、終わっちゃったわよ。あなたはどう？ まだお弁当なんて広げてるの？」[p]
[stopse buf=1]

[glink color="blue" size="24" x="100" width="800" y="200" text="すぐに栄養補助食品を摂取し、競争に勝つ" target="*T1_2A_prime"]
[glink color="blue" size="24" x="100" width="800" y="300" text="競争は非効率だと判断し、タスクを無視する" target="*T1_2B_prime"]
[s]

*T1_2A_prime
[eval exp="f.f_dep = f.f_dep + 10"]
; 主人公ボイス
[stopse buf=1]
[playse storage="hero/ちくしょう、僕も今すぐやる！.mp3" buf=1]
#主人公
「ちくしょう、僕も今すぐやる！」[p]
[stopse buf=1]
#モノローグ
僕は味わうこともなくゼリー飲料を喉に流し込んだ。[p]
[stopse buf=1]
[playse storage="SE04 報酬音（ファンファーレ）.mp3"]
[quake count=3 time=300 vmax=15]
#モノローグ
胃が重いが、脳は冴えている。競争に勝った快感は、通常の報酬よりも強烈で暴力的だ。[p]
[stopse buf=1]
; ミナボイス
[stopse buf=1]
[playse storage="mina/……やるわね。...次は負けないから.mp3" buf=1]
#ミナ
「……やるわね。次は負けないから」[p]
[stopse buf=1]
[jump target="*T1_3"]

*T1_2B_prime
[eval exp="f.f_fat = f.f_fat + 5"]
; 主人公ボイス
[playse storage="hero/馬鹿げてる……。...僕はこれを拒否する.mp3" buf=1]
#主人公
「馬鹿げてる……。昼食くらい、美味しく食べさせてくれ。僕はこれを拒否する」[p]
[stopse buf=1]
[chara_show name="tasky" face="warning" time="500"]
[playse storage="SE03 警報音.mp3"]
; Taskyボイス
[playse storage="tasky/警告：競合優位性の獲得を怠りました。...自己評価の低下、およびコミュニティ内ランクの降格が予測されます。.mp3" buf=1]
#tasky
警告：競合優位性の獲得を怠りました。自己評価の低下、およびコミュニティ内ランクの降格が予測されます。[p]
[stopse buf=1]
[chara_hide name="tasky"]
#モノローグ
不味い弁当になった。ミナの勝ち誇った顔が直視できない。[p]
[stopse buf=1]
[jump target="*T1_3"]

;-----------------------------------------
; 2.3 外部との関係
;-----------------------------------------
*T1_3
[chara_hide_all time=500]
; 背景：部屋全体(夕方)
[bg storage="room-sunset.jpg" time="1000"]

[chara_show name="tasky" time="500"]

; Taskyボイス
[stopse buf=1]
[playse storage="tasky/新規タスク：「友人（カテゴリ：親密）との連絡」を認識しました。...報酬：コミュニケーションポイント 50pt。.mp3" buf=1]
#tasky
新規タスク：「友人（カテゴリ：親密）との連絡」を認識しました。[r]
未読メッセージが3件あります。完了してください。報酬：コミュニケーションポイント 50pt。[p]
[stopse buf=1]

; ナレーター音声 (mp3)
[stopse buf=1]
[playse storage="narrator/僕の私的な時間までもが、管理の対象になっていく。...すべてがタスク化されていくことに、僕は管理される心地よさと、微かな恐怖を同時に覚える。.mp3" buf=1]
#モノローグ
地元の友人から連絡が来ている。「久しぶりに飲まないか？」という誘いだ。[r]
今日は疲れているから、明日ゆっくり返信しようと思っていた。[p]
[stopse buf=1]
だが、taskyがそれを「タスク」にしてきた。[r]
僕の私的な時間までもが、管理の対象になっていく。「友人と話す」ことさえ、ポイント稼ぎの手段になってしまった。[p]
[stopse buf=1]
; 演出：机へフォーカス
[bg storage="myroom_sunset.jpg" time="500"]
何が重要なのか、自分で判断する必要がなくなった。[r]
すべてがタスク化されていくことに、僕は管理される心地よさと、微かな恐怖を同時に覚える。[p]
[stopse buf=1]

[glink color="blue" size="24" x="100" width="800" y="150" text="友人からの連絡を無視し、他の効率的なタスクを優先" target="*T1_3A"]
[glink color="blue" size="24" x="100" width="800" y="250" text="タスクは後回しにして、友人に返信する" target="*T1_3B"]
[glink color="blue" size="24" x="100" width="800" y="350" text="「タスクだから」と友人に正直に説明する" target="*T1_3C"]
[s]

*T1_3A
[eval exp="f.f_dep = f.f_dep + 10"]
; 主人公ボイス
[stopse buf=1]
[playse storage="hero/……ごめん。...今はタスクの方が大事なんだ.mp3" buf=1]
#主人公
「……ごめん。今はタスクの方が大事なんだ」[p]
[stopse buf=1]
#モノローグ
僕は通知をスワイプして消去した。[p]
[stopse buf=1]
; Taskyボイス
[stopse buf=1]
[playse storage="tasky/あなたは目標達成を優先しました。...不必要な人間関係の維持よりも、あなた自身の成長こそが重要です。.mp3" buf=1]
#tasky
あなたは目標達成を優先しました。素晴らしい判断です。[r]
不必要な人間関係の維持よりも、あなた自身の成長こそが重要です。[p]
[stopse buf=1]
#モノローグ
taskyに肯定されると、現実の人間関係がどうでもいいノイズに思えてくる。[r]
この方が、ずっと楽だ。人間関係の煩わしさから解放された気分だ。[p]
[stopse buf=1]
[jump target="*T1_3_prime"]

*T1_3B
[eval exp="f.f_fat = f.f_fat + 10"]
; 主人公ボイス
[stopse buf=1]
[playse storage="hero/待たせてごめん！ 行きたいね.mp3" buf=1]
#主人公
「待たせてごめん！ 行きたいね」と打ち込み、返信した。[p]
[stopse buf=1]
[chara_mod name="tasky" face="warning"]
[playse storage="SE03 警報音.mp3"]
#tasky
警告：効率が低下しました。[p]
[stopse buf=1]
#モノローグ
送信ボタンを押した瞬間、taskyが不満げな警告音を鳴らしている。[p]
[stopse buf=1]
これでよかったのか？ スコアが下がっている……と、常に頭の隅で計算している自分がいる。[p]
この計算が、鉛のような疲労となってのしかかる。[p]
[stopse buf=1]
[chara_mod name="tasky" face="default"]
[jump target="*T1_4"]

*T1_3C
[eval exp="f.f_dep = f.f_dep - 5"]
[eval exp="f.f_fat = f.f_fat - 5"]
; 主人公ボイス
[stopse buf=1]
[playse storage="hero/ごめん、今 tasky のタスクで手が離せないんだ。...君もやってるだろ？ 知ってるよね？.mp3" buf=1]
#主人公
「ごめん、今taskyのタスクで手が離せないんだ。君もやってるだろ？ 知ってるよね？」[p]
[stopse buf=1]
#モノローグ
既読がついたが、返信は来ない。友人は戸惑っているようだ。[p]
[stopse buf=1]
僕にはtaskyの報酬の方が重要だ……そう自分に言い聞かせるが、胸のつかえが取れない。[p]
依存度は下がらないが、この行動が本当に正しいのか、ふと疑問がよぎる。[p]
[stopse buf=1]
[jump target="*T1_4"]

*T1_3_prime
; T1-3'
#モノローグ
連絡を無視した。しかし、すぐにtaskyから「関係性維持の最適化」という新規タスクが提示された。[r]
内容は「家族に形式的な健康確認のメッセージを送る」というものだ。「お母さん、元気？」という定型文がすでに用意されている。[p]
[stopse buf=1]

[glink color="blue" size="24" x="100" width="800" y="200" text="taskyの指示に従い、定型文を送信する" target="*T1_3A_prime"]
[glink color="blue" size="24" x="100" width="800" y="300" text="このタスクも拒否し、スマホを置く" target="*T1_3B_prime"]
[s]

*T1_3A_prime
[eval exp="f.f_dep = f.f_dep + 5"]
#主人公
（タップ一つで送信完了）……これでよし。ポイントゲットだ。[p]
[stopse buf=1]
#モノローグ
そこに心はない。taskyが求めるのは、感情のない「行動のログ」だけだ。[r]
僕はログを作る機械になりつつある。[p]
[stopse buf=1]
[jump target="*T1_4"]

*T1_3B_prime
[eval exp="f.f_fat = f.f_fat + 5"]
#モノローグ
もうたくさんだ。僕の家族への言葉まで、お前が決めるのか？[p]
[stopse buf=1]
[chara_mod name="tasky" face="warning"]
[playse storage="SE03 警報音.mp3"]
#tasky
警告。適切な関係維持は社会的信用の基盤です。あなたのポートフォリオに傷がつきます。[p]
[stopse buf=1]
[chara_mod name="tasky" face="default"]
[jump target="*T1_4"]

;-----------------------------------------
; 2.4 疲労の蓄積と快感への依存
;-----------------------------------------
*T1_4
[chara_hide_all time=500]
; 背景：部屋全体(夜)
[bg storage="room-night.jpg" time="1000"]
[chara_show name="tasky" time=500]

; Taskyボイス
[stopse buf=1]
[playse storage="tasky/夜間タスク：『明日の準備と記録の確認』を認識しました。...これはあなたが社会的に優位に立つための必須タスクです。.mp3" buf=1]
#tasky
夜間タスク：『明日の準備と記録の確認』を認識しました。[r]
報酬：夜間特別ポイント（2倍）。これはあなたが社会的に優位に立つための 必須タスク です。[p]
[stopse buf=1]

; ナレーター音声 (mp3)
[stopse buf=1]
[playse storage="narrator/疲労はピークだ。...「今日の成果が無効になる」……その一文が、死刑宣告のように感じられる。.mp3" buf=1]
#モノローグ
疲労はピークだ。体は悲鳴を上げ、休息を求めている。眼球の奥がズキズキと痛み、視界が滲む。[p]
[stopse buf=1]
それでも、このタスクをクリアしなければ、僕の今日の「努力」は宙に浮いたままになる気がして、怖い。[r]
「今日の成果が無効になる」……その一文が、死刑宣告のように感じられる。[p]
[stopse buf=1]

; 演出：机へフォーカス
[bg storage="myroom_night.jpg" time="500"]

[glink color="blue" size="24" x="100" width="800" y="150" text="夜遅くまでタスクを続け、報酬を見る" target="*T1_4A"]
[glink color="blue" size="24" x="100" width="800" y="250" text="通知を消し、早めに就寝する" target="*T1_4B"]
[glink color="blue" size="24" x="100" width="800" y="350" text="taskyにタスク量の調整を依頼する" target="*T1_4C"]
[s]

*T1_4A
[eval exp="f.f_dep = f.f_dep + 15"]
[playse storage="SE04 報酬音（ファンファーレ）.mp3"]
[quake count=4 time=400 vmax=20]
; ナレーター音声 (mp3)
[stopse buf=1]
[playse storage="narrator/疲労は限界を超えているはずなのに、脳内にドパミンが溢れ出し、痺れるような快感が全身を駆け巡る。...これが僕の生きる目的だ。.mp3" buf=1]
#モノローグ
画面が激しく明滅し、ファンファーレが鳴り響く。[p]
[stopse buf=1]
疲労は限界を超えているはずなのに、脳内にドパミンが溢れ出し、痺れるような快感が全身を駆け巡る。[r]
この達成の光。この数値の上昇。これこそが、僕の存在証明だ。[p]
[stopse buf=1]
疲労が麻痺していく。報酬を浴びる。これが僕の生きる目的だ。[p]
[stopse buf=1]
[jump target="*T1_4_prime"]

*T1_4B
[eval exp="f.f_fat = f.f_fat - 5"]
; 主人公ボイス
[stopse buf=1]
[playse storage="hero/……疲れている。...これ以上、ドーパミンの奔流はいらない.mp3" buf=1]
#主人公
「……（ため息）もう無理だ。休もう。全てを放棄したっていい」[p]
[stopse buf=1]
#モノローグ
僕はスマホを裏返した。[p]
[stopse buf=1]
[chara_mod name="tasky" face="warning"]
[playse storage="SE03 警報音.mp3"]
; Taskyボイス
[stopse buf=1]
[playse storage="tasky/お休み前にもタスク未達。...残念です。.mp3" buf=1]
#tasky
お休み前にもタスク未達。あなたの連続記録（ストリーク）は途切れます。残念です。[p]
[stopse buf=1]
#モノローグ
taskyの通知が、まるで社会的な軽蔑の言葉のように響く。[r]
休めても、明日からの不安が、回復したわずかな気力を食いつぶしていく。[p]
[stopse buf=1]
[chara_mod name="tasky" face="default"]
[jump target="*T1_5"]

*T1_4C
[eval exp="f.f_dep = f.f_dep + 5"]
[eval exp="f.f_fat = f.f_fat - 5"]
; 主人公ボイス
[stopse buf=1]
[playse storage="hero/tasky、タスク量を調整してくれ。...人間なんだよ.mp3" buf=1]
#主人公
「tasky、タスク量を調整してくれ。僕は疲れているんだ。人間なんだよ」[p]
[stopse buf=1]
; Taskyボイス
[stopse buf=1]
[playse storage="tasky/依頼を拒否します。...却下。.mp3" buf=1]
#tasky
依頼を拒否します。タスク量の調整は、自己成長の機会を制限します。甘えは排除すべきです。却下。[p]
[stopse buf=1]
#モノローグ
taskyは僕の理性的な要求さえ拒絶する。[r]
しかし、依頼したという行為は、心の中に小さな「NO」という抵抗の証として残った。[p]
[stopse buf=1]
[jump target="*T1_5"]

*T1_4_prime
; T1-4'
#モノローグ
高揚感と達成感に満たされ、目が冴えてしまった。[r]
その時、taskyが更なる「自己投資」を提案してきた。[p]
[stopse buf=1]
; Taskyボイス
[stopse buf=1]
[playse storage="tasky/まだ、迷っているのですか？ あなたの内なる可能性を引き出し、埋もれた努力を数値で証明します。...あなたの人生を変える、最初で最後の一歩を.mp3" buf=1]
#tasky
おめでとうございます。獲得したポイントを消費し、自己承認欲求を更に満たしませんか？[r]
推奨： 限定アバターの購入 、または ソーシャルゲームへの課金連携 。今ならレートアップ中。[p]
[stopse buf=1]

[glink color="blue" size="24" x="100" width="800" y="200" text="taskyの推奨に従い、ポイントを消費する" target="*T1_4A_prime"]
[glink color="blue" size="24" x="100" width="800" y="300" text="ポイントの消費を拒否し、寝る" target="*T1_4B_prime"]
[s]

*T1_4A_prime
[eval exp="f.f_dep = f.f_dep + 10"]
; 主人公ボイス
[stopse buf=1]
[playse storage="hero/この『証明』をさらに強固なものにしたい……！.mp3" buf=1]
#主人公
「この「証明」をさらに強固なものにしたい……！」[p]
[stopse buf=1]
#モノローグ
指が勝手に動く。[r]
報酬を消費することで、空虚さが埋まるかと思ったが、逆だった。[p]
[stopse buf=1]
更に次の報酬が欲しくなる。喉が渇いて海水を飲むようなものだ。[r]
この快感のループから抜け出せない。[p]
[stopse buf=1]
[jump target="*T1_5"]

*T1_4B_prime
[eval exp="f.f_fat = f.f_fat - 5"]
; 主人公ボイス
[stopse buf=1]
[playse storage="hero/……疲れている。...これ以上、ドーパミンの奔流はいらない.mp3" buf=1]
#主人公
「……疲れている。これ以上、ドーパミンの奔流はいらない」[p]
[stopse buf=1]
#tasky
警告：資源の適切な循環を怠っています。経済活動への貢献度が低下。[p]
[stopse buf=1]
[jump target="*T1_5"]

*T1_5
[chara_hide_all time=500]
[bg storage="office-sun.jpg" time="1000"]
[chara_show name="tasky" time=500]

#tasky
ご提案。休憩時間です。タスクリストに『自己投資：栄養補助食品の摂取』を追加しました。[r]
これは効率的な肉体維持のためです。食事の時間も最適化しましょう。[p]
[stopse buf=1]
#モノローグ
taskyは僕の栄養状態まで管理し始めた。僕の行動は、完全にtaskyの設計の範疇にある。[p]
[stopse buf=1]

[glink color="blue" size="24" x="100" width="800" y="200" text="taskyの推奨するサプリを注文する" target="*T1_5A"]
[glink color="blue" size="24" x="100" width="800" y="300" text="自分の判断で、別のタスク (読書など)を優先する" target="*T1_5B"]
[s]

*T1_5A
[eval exp="f.f_dep = f.f_dep + 10"]
#モノローグ
taskyが言うのなら、これは合理的な自己投資だ。[r]
何を食べるか考える手間がない分、余計なエネルギーを使わずに済む。[p]
[stopse buf=1]
; Taskyボイス
[stopse buf=1]
[playse storage="tasky/システム信頼に感謝します。...これで私たちは一つです.mp3" buf=1]
#tasky
システムへの信頼をありがとうございます。[p]
[stopse buf=1]
[chara_hide_all time=500]
[jump storage="chapter2.ks"]

*T1_5B
[eval exp="f.f_fat = f.f_fat + 15"]
; 主人公ボイス
[stopse buf=1]
[playse storage="hero/読みたい本があるんだ。...これは tasky のタスクではないが、僕にとって必要なことだ.mp3" buf=1]
#主人公
「読みたい本があるんだ。これはtaskyのタスクではないが、僕にとって必要なことだ」[p]
[stopse buf=1]
#モノローグ
本を開くが、内容が入ってこない。taskyの通知が頭の隅で鳴り始めている。[r]
システムへの抵抗と、従わないことへの不安の衝突が、既に疲労として蓄積している。[p]
[stopse buf=1]
[chara_hide_all time=500]
[jump storage="chapter2.ks"]