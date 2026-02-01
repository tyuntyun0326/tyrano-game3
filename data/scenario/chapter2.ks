;=========================================
; 第2章: 義務感と乖離
;=========================================
[cm]
[clearfix]
[bg storage="room-night.jpg" time="1000"]
[playbgm storage="BGM_02_日常.mp3" volume="50"]

; ナレーター
[stopse buf=1]
[playse storage="narrator/数週間が過ぎた。部屋の中は散乱し、僕自身の体も限界だ。.mp3" buf=1]
#モノローグ
数週間が過ぎた。 日々のルーチンは、もはや無意識の動作に変わった。[r]
鏡に映る自分は、確かに以前よりは活発だ。肌艶もいい。仕事も早くなった。[p]
[cm]
だが、最初の頃に感じた強烈な快感は、もうどこにもない。[r]
あるのは、「スコアを維持しなければならない」という強迫観念だけだ。[p]

; ナレーター
[stopse buf=1]
[playse storage="narrator/taskyの声は、もはや脅迫的ではない。どこか哀れんでいるようにも、試しているようにも聞こえる。.mp3" buf=1]
#モノローグ
taskyの通知音も、どこか鈍い、耳障りな音に変わっている気がした。[r]
その音は、僕を導く光ではなく、僕の怠惰を監視する看守の警笛へと変質していた。[p]
[cm]
気がつけば、僕はtaskyに怒られるのが怖いから、タスクをこなしていた。[r]
これは... 本当に僕が求めていた「変化」なのか？[p]

; 演出：机へフォーカス
[bg storage="myroom_deepnight.jpg" time="500"]

; オフィスへ
[bg storage="office-sun.jpg" time="1000"]
[chara_show name="tasky" time="500"]

[stopse buf=1]
[playse storage="narrator/報酬は「小さな満足」。その文字が、僕の心を乾いたスポンジのように虚しくさせる。タスクリストは、僕が興味のない、システムが強いる義務で埋め尽くされている。.mp3" buf=1]
#モノローグ
報酬は「小さな満足」。その文字が、僕の心を乾いたスポンジのように虚しくさせる。[r]
タスクリストは、僕が興味のない、システムが強いる義務で埋め尽くされている。[p]

[stopse buf=1]
[playse storage="narrator/『不要業務資料の整理』、『上司への定型的な機嫌伺い』……まるで、退屈な仕事の延長がプライベートまで侵食してきたようだ。.mp3" buf=1]
#モノローグ
『不要業務資料の整理』、『上司への定型的な機嫌伺い』……[r]
まるで、退屈な仕事の延長がプライベートまで侵食してきたようだ。[p]

[chara_mod name="tasky" face="warning"]
[playse storage="SE03 警報音.mp3"]
; Taskyボイス
[stopse buf=1]
[playse storage="tasky/警告レベル1：ドーパミン受容体の感度低下を検知。...サボることを許容しますか？.mp3" buf=1]
#tasky
警告レベル1：ドーパミン受容体の感度低下を検知。[r]
本日の報酬設定を『小さな満足』に変更しました。[r]
サボることを許容しますか？[p]

; Taskyボイス
[stopse buf=1]
[playse storage="tasky/新規タスクリスト：『不要業務資料の整理(強制)』。あなたには義務があります。サボることを許容しますか？.mp3" buf=1]
#tasky
新規タスクリスト：『不要業務資料の整理(強制)』。[r]
あなたには義務があります。サボることを許容しますか？[p]

; ルート分岐描写
[if exp="f.f_dep > f.f_fat"]
    ; ナレーター
    [stopse buf=1]
    [playse storage="narrator/報酬が減っても構わない。...この苦痛こそが、僕を他人より優れた存在にするための通過儀礼なのだ。.mp3" buf=1]
    #モノローグ
    (依存型優等生ルート)[r]
    報酬が減っても構わない。重要なのは、スコアが示す私自身の価値だ。[r]
    この苦痛こそが、僕を他人より優れた存在にするための通過儀礼なのだ。[p]
    
    ; ナレーター
    [stopse buf=1]
    [playse storage="narrator/凡人はここで脱落するが、僕は違う。...この先に、さらなる高みが待っているはずだ。.mp3" buf=1]
    #モノローグ
    凡人はここで脱落するが、僕は違う。taskyは僕を裏切らない。[r]
    この先に、さらなる高みが待っているはずだ。[p]

[elsif exp="f.f_fat > f.f_dep"]
    ; ナレーター
    [stopse buf=1]
    [playse storage="narrator/疲れている。体が鉛のように重い。指一本動かすのも億劫だ。しかし、やめられない。ここでやめたら、これまで積み上げてきた記録（ストリーク）が全て無駄になる。.mp3" buf=1]
    #モノローグ
    (疲弊型脱落予備軍ルート)[r]
    疲れている。体が鉛のように重い。指一本動かすのも億劫だ。[r]
    しかし、やめられない。[p]
    [cm]
    ここでやめたら、これまで積み上げてきた記録（ストリーク）が全て無駄になる。[p]

    ; ナレーター
    [stopse buf=1]
    [playse storage="narrator/あの「自分はダメな人間だ」という劣等感に再び苛まれるくらいなら、死ぬ気で指を動かしたほうがマシだ。.mp3" buf=1]
    #モノローグ
    あの「自分はダメな人間だ」という劣等感に再び苛まれるくらいなら、[r]
    死ぬ気で指を動かしたほうがマシだ。[p]

[else]
    ; ナレーター
    [stopse buf=1]
    [playse storage="narrator/このアプリは、ただのツールに過ぎないはずだ。なぜ皆、たかが数字のスコアにそこまで固執するんだ？ 僕はシステムに使われない。.mp3" buf=1]
    #モノローグ
    (懐疑的なバランス型ルート)[r]
    このアプリは、ただのツールに過ぎないはずだ。[r]
    なぜ皆、たかが数字のスコアにそこまで固執するんだ？[r]
    僕はシステムに使われない。[p]

    ; ナレーター
    [stopse buf=1]
    [playse storage="narrator/この無意味な義務に、従う必要はない。そう頭では分かっているのに、指が止まらないのはなぜだ？.mp3" buf=1]
    #モノローグ
    この無意味な義務に、従う必要はない。[r]
    そう頭では分かっているのに、指が止まらないのはなぜだ？[p]
[endif]

; T2-1
[stopse buf=1]
[playse storage="narrator/瞼の裏には、タスクリストのチェックボックスが焼き付いているようだ。... だが、taskyの通知は、無視できない親友からの呼びかけのように甘美で、強制的だ。.mp3" buf=1]
#モノローグ
目を閉じても、瞼の裏にはタスクリストのチェックマークが焼き付いている。[r]
やらなければならない。やらなければならない。[r]
強迫的なリズムが鼓動と重なる。[p]

[glink color="blue" size="24" x="100" width="800" y="150" text="タスクを完了し、早く終わらせる" target="*T2_1A"]
[glink color="blue" size="24" x="100" width="800" y="250" text="タスクを無視し、趣味に時間を使う" target="*T2_1B"]
[glink color="blue" size="24" x="100" width="800" y="350" text="タスクに潜む意味を考える" target="*T2_1C"]
[s]

*T2_1A
[eval exp="f.f_dep = f.f_dep + 10"]
; ナレーター
[stopse buf=1]
[playse storage="narrator/達成率こそ私の価値だ。...疲労など、成功への必要経費に過ぎない」.mp3" buf=1]
#モノローグ
達成率こそ私の価値だ。[r]
疲労など、成功への必要経費に過ぎない。[p]
[jump target="*T2_1_prime"]

*T2_1B
[eval exp="f.f_fat = f.f_fat + 15"]
; Taskyボイス
[stopse buf=1]
[playse storage="tasky/記録が失効します。...あなたは敗北者ですよ.mp3" buf=1]
#tasky
あなたの価値が失効します。[r]
無駄な時間を過ごすことを選択しますか？[r]
あなたは敗北者ですよ。[p]
[jump target="*T2_2"]

*T2_1C
[eval exp="f.f_dep = f.f_dep - 5"]
[eval exp="f.f_fat = f.f_fat + 5"]
; ナレーター
[stopse buf=1]
[playse storage="narrator/疑問を持つのは非効率だ。システムを疑うな。,,,,,,でも、このタスクに何の意味がある？.mp3" buf=1]
#モノローグ
疑問を持つのは非効率だ。システムを疑うな……[r]
でも、このタスクに何の意味がある？[p]
[jump target="*T2_2"]

*T2_1_prime
; ルート分岐拡張
[if exp="f.f_dep > f.f_fat"]
    ; 依存ルート
    [bg storage="dark-library.jpg" time="1000"]
    #tasky
    ; Taskyボイス
    [stopse buf=1]
    [playse storage="tasky/緊急タスク発生：『優位性維持のための追加学習』。資格取得のための難解な資料の要約を推奨します。.mp3" buf=1]
    緊急タスク発生：『優位性維持のための追加学習』。[r]
    資格取得のための難解な資料の要約を推奨します。[p]
    [glink color="blue" size="24" x="100" width="800" y="200" text="徹夜してでも完璧に資料を要約する" target="*T2_1A_prime"]
    [glink color="blue" size="24" x="100" width="800" y="300" text="効率を優先し、要約を外部サービスに依頼する" target="*T2_1B_prime"]
    [s]
[else]
    ; 疲弊ルート
    [bg storage="myroom_deepnight.jpg" time="1000"]
    ; Taskyボイス
    [stopse buf=1]
    [playse storage="tasky/警告：昨日のタスク未達により、評価が大きく低下しています。...緊急タスク：『SNSの定型ポジティブ投稿』を行い、社会的評価の低下を防いでください。.mp3" buf=1]
    #tasky
    警告：昨日のタスク未達により、評価が大きく低下しています。[r]
    緊急タスク：『SNSの定型ポジティブ投稿』を行い、社会的評価の低下を防いでください。[p]
    [glink color="blue" size="24" x="100" width="800" y="200" text="SNSに虚勢を張るポジティブ投稿をする" target="*T2_1C_prime"]
    [glink color="blue" size="24" x="100" width="800" y="300" text="SNSを閉鎖し、警告に耐える" target="*T2_1D_prime"]
    [s]
[endif]

*T2_1A_prime
[eval exp="f.f_dep = f.f_dep + 10"]
[eval exp="f.f_fat = f.f_fat + 5"]
; ナレーター
[stopse buf=1]
[playse storage="narrator/そうだ、この苦労が、僕をミナより上に行かせる。...眠気など、カフェインで散らせばいい。.mp3" buf=1]
#モノローグ
そうだ、この苦労が、僕をミナより上に行かせる。[r]
眠気など、カフェインで散らせばいい。[p]
; Taskyボイス
[stopse buf=1]
[playse storage="tasky/『完全勝利』。...あなたの努力は記録されました。.mp3" buf=1]
#tasky
『完全勝利』。あなたの努力は記録されました。[p]
[jump target="*T2_2"]

*T2_1B_prime
[eval exp="f.f_dep = f.f_dep + 5"]
[eval exp="f.f_fat = f.f_fat - 5"]
; ナレーター
[stopse buf=1]
[playse storage="narrator/taskyに頼らず、最短ルートで「結果」だけを出す。...スコアさえ上がれば、中身なんてどうでもいいんだ。.mp3" buf=1]
#モノローグ
taskyに頼らず、最短ルートで「結果」だけを出す。[r]
スコアさえ上がれば、中身なんてどうでもいいんだ。[p]
; Taskyボイス
[stopse buf=1]
[playse storage="tasky/記録に不審な点があります。...……しかし、結果を承認します。.mp3" buf=1]
#tasky
記録に不審な点があります。……しかし、結果を承認します。[p]
[jump target="*T2_2"]

*T2_1C_prime
[eval exp="f.f_fat = f.f_fat + 10"]
; ナレーター
[stopse buf=1]
[playse storage="narrator/「今日は最高の天気！ ランニングしてリフレッシュ！」……嘘だ。...疲れているのに、笑顔の絵文字を貼り付ける。.mp3" buf=1]
#モノローグ
「今日は最高の天気！ ランニングしてリフレッシュ！」……嘘だ。[r]
本当は一日中布団の中にいた。[r]
疲れているのに、笑顔の絵文字を貼り付ける。[p]
; ナレーター
[stopse buf=1]
[playse storage="narrator/誰も僕の本当の疲労を知らない。.mp3" buf=1]
#モノローグ
誰も僕の本当の疲労を知らない。[p]
; Taskyボイス
[stopse buf=1]
[playse storage="tasky/適切な情報操作です。...評価の維持を確認。.mp3" buf=1]
#tasky
適切な情報操作です。評価の維持を確認。[p]
[jump target="*T2_2"]

*T2_1D_prime
[eval exp="f.f_dep = f.f_dep - 5"]
[eval exp="f.f_fat = f.f_fat - 5"]
; ナレーター
[stopse buf=1]
[playse storage="narrator/偽りの自分を演じるのはもう嫌だ。...スマホの電源を切りたい。.mp3" buf=1]
#モノローグ
偽りの自分を演じるのはもう嫌だ。スマホの電源を切りたい。[p]
; Taskyボイス
[stopse buf=1]
[playse storage="tasky/社会的スコアの回復を放棄しました。...あなたは孤独になりますよ？.mp3" buf=1]
#tasky
社会的スコアの回復を放棄しました。システムからの支援は低下します。[r]
あなたは孤独になりますよ？[p]
[jump target="*T2_2"]

*T2_2
; 背景：オフィス
[bg storage="office-sun.jpg" time="1000"]
[chara_hide name="tasky"]
[chara_show name="ミナ" face="fear" time="1000"]

; ナレーター
[stopse buf=1]
[playse storage="narrator/ミナからの通知だ。...目の下のクマをコンシーラーで隠しきれていない。.mp3" buf=1]
#モノローグ
ミナからの通知だ。[r]
以前はあんなに輝いていた彼女の顔には、深い疲労の影が差している。[r]
目の下のクマをコンシーラーで隠しきれていない。[p]

; ナレーター
[stopse buf=1]
[playse storage="narrator/それでも、彼女の承認は、僕のスコアの健全性を測る唯一のバロメーターだ。...彼女に見放されたら、僕は本当に独りになってしまう。.mp3" buf=1]
#モノローグ
それでも、彼女の承認は、僕のスコアの健全性を測る唯一のバロメーターだ。[r]
彼女に見放されたら、僕は本当に独りになってしまう。[p]

[glink color="blue" size="24" x="100" width="800" y="150" text="ミナにタスクの進捗を報告する" target="*T2_2A"]
[glink color="blue" size="24" x="100" width="800" y="250" text="ミナとの連絡を控える" target="*T2_2B"]
[glink color="blue" size="24" x="100" width="800" y="350" text="ミナの体調を気遣うメッセージを送る" target="*T2_2C"]
[s]

*T2_2A
[eval exp="f.f_dep = f.f_dep + 5"]
; ミナボイス
[stopse buf=1]
[playse storage="mina/私たち、もっと優位性を維持しましょう。...他のみんなは怠けているわ.mp3" buf=1]
#ミナ
「私たち、もっと優位性を維持しましょう。他のみんなは怠けているわ」[p]
; ナレーター
[stopse buf=1]
[playse storage="narrator/彼女の承認が力になる。...共犯者のような絆だ。.mp3" buf=1]
#モノローグ
彼女の承認が力になる。共犯者のような絆だ。[p]
[jump target="*T2_2_prime"]

*T2_2B
[eval exp="f.f_fat = f.f_fat + 10"]
; ナレーター
[stopse buf=1]
[playse storage="narrator/誰も助けてくれない。...スコアだけが僕を縛る鎖だ。.mp3" buf=1]
#モノローグ
誰も助けてくれない。スコアだけが僕を縛る鎖だ。[p]
[jump target="*T2_E1"]

*T2_2C
[eval exp="f.f_dep = f.f_dep - 5"]
[eval exp="f.f_fat = f.f_fat - 5"]
; ミナボイス
[stopse buf=1]
[playse storage="mina/は？ 余計なお世話よ。...自分のスコアだけ気にしてれば？.mp3" buf=1]
#ミナ
「は？ 余計なお世話よ。自分のスコアだけ気にしてれば？」[p]
; ナレーター
[stopse buf=1]
[playse storage="narrator/疲労で優しさすら拒絶される。...痛い。.mp3" buf=1]
#モノローグ
疲労で優しさすら拒絶される。痛い。[p]
[jump target="*T2_E1"]

*T2_2_prime
; ナレーター
[stopse buf=1]
[playse storage="narrator/ミナにタスクの進捗を報告すると、彼女は血走った目で画面を見つめ、更に無理な要求をしてきた。.mp3" buf=1]
#モノローグ
ミナにタスクの進捗を報告すると、彼女は血走った目で画面を見つめ、[r]
更に無理な要求をしてきた。[p]
; ミナボイス
[stopse buf=1]
[playse storage="mina/そういえば、今日の強制タスクって、〜あなたにとっても『協力ボーナス』が入るわよ.mp3" buf=1]
#ミナ
「そういえば、今日の強制タスクって、もう終わった？ 私、まだなの。[r]
……ねぇ、あなた、そのタスク、私のアカウントで二重にやってスコアを上げるってのはどう？[r]
あなたにとっても『協力ボーナス』が入るわよ」[p]

[glink color="blue" size="24" x="100" width="800" y="200" text="ミナの要求に応じ、二重タスクを実行する" target="*T2_2A_prime"]
[glink color="blue" size="24" x="100" width="800" y="300" text="非効率だと断り、ミナとの会話を切り上げる" target="*T2_2B_prime"]
[s]

*T2_2A_prime
[eval exp="f.f_dep = f.f_dep + 10"]
[eval exp="f.f_fat = f.f_fat + 5"]
; ナレーター
[stopse buf=1]
[playse storage="narrator/彼女に勝つため、いや、彼女に認められるためなら、非合理的な努力も厭わない。...二倍の労力。.mp3" buf=1]
#モノローグ
彼女に勝つため、いや、彼女に認められるためなら、非合理的な努力も厭わない。[r]
自分の分と、彼女の分。二倍の労力。[p]
[chara_show name="tasky" time="500"]
; Taskyボイス
[stopse buf=1]
[playse storage="tasky/『共依存タスク（Co-dependency）』の開始を承認しました。...特例措置です。.mp3" buf=1]
#tasky
『共依存タスク（Co-dependency）』の開始を承認しました。特例措置です。[p]
[chara_hide name="tasky"]
[jump target="*T2_E1"]

*T2_2B_prime
[eval exp="f.f_dep = f.f_dep - 5"]
[eval exp="f.f_fat = f.f_fat + 5"]
; 主人公ボイス
[stopse buf=1]
[playse storage="hero/それは非効率だ。...君は君でやるべきだ.mp3" buf=1]
#主人公
「それは非効率だ。僕は僕のタスクをやる。君は君でやるべきだ」[p]
; ミナボイス
[stopse buf=1]
[playse storage="mina/……冷たいのね。...つまらない人.mp3" buf=1]
#ミナ
「……冷たいのね。つまらない人」[p]
; ナレーター
[stopse buf=1]
[playse storage="narrator/承認欲求は満たされないまま、拒絶したことによる疲労だけが泥のように残る。.mp3" buf=1]
#モノローグ
承認欲求は満たされないまま、拒絶したことによる疲労だけが泥のように残る。[p]
[jump target="*T2_E1"]

*T2_E1
; 背景：部屋全体(深夜)
[bg storage="room-night.jpg" time="1000"]
[chara_hide name="ミナ"]
[playse storage="SE02通常通知音.mp3"]

; ナレーター
[stopse buf=1]
[playse storage="narrator/深夜2時。...その時、ミナから、これまでの明るい調子ではない、助けを求めるような、弱々しいチャットが届いた。.mp3" buf=1]
#モノローグ
深夜2時。taskyの通知はまだ続いている。[r]
その時、ミナから、これまでの明るい調子ではない、助けを求めるような、弱々しいチャットが届いた。[p]

; ★背景変更：チャット画面 (bg_smartphone_task_done.jpg)
[bg storage="bg_smartphone_task_done.jpg" time="500"]

; ナレーター
[stopse buf=1]
[playse storage="narrator/文面が乱れている。.mp3" buf=1]
#モノローグ
文面が乱れている。[p]
; ミナボイス
[stopse buf=1]
[playse storage="mina/実は今日、上司から昇進リストの件でプレッシャーがすごくて... タスク量が多すぎるの。もう指が動かない。お願い、今日の夜間タスク、代わりにやってくれない.mp3" buf=1]
#ミナ (チャット)
「実は今日、上司から昇進リストの件でプレッシャーがすごくて...[r]
タスク量が多すぎるの。もう指が動かない。[r]
お願い、今日の夜間タスク、代わりにやってくれない?[p]
[cm]
; ミナボイス
[stopse buf=1]
[playse storage="mina/あなたならできるはずよ! お願い! 私、このままだとランクが落ちちゃう……！.mp3" buf=1]
#ミナ (チャット)
あなたならできるはずよ! お願い! 私、このままだとランクが落ちちゃう……！」[p]

; ★演出：机へ戻る
[bg storage="myroom_deepnight.jpg" time="500"]

[if exp="f.f_dep >= 60 || f.f_fat >= 60"]
    ; ナレーター
    [stopse buf=1]
    [playse storage="narrator/彼女は僕の弱みに付け込んでいる。...この状況を利用して、僕の優位性を確立するか、それとも共倒れを避けるか？ 手が震える。.mp3" buf=1]
    #モノローグ
    彼女は僕の弱みに付け込んでいる。僕自身、限界なのに。[r]
    この状況を利用して、僕の優位性を確立するか、それとも共倒れを避けるか？ 手が震える。[p]
    [glink color="blue" size="24" x="100" width="800" y="200" text="ミナのタスクを代行する" target="*T2_E1A"]
    [glink color="blue" size="24" x="100" width="800" y="300" text="代行を拒否し、彼女を助けない" target="*T2_E1B"]
    [s]
[else]
    ; ナレーター
    [stopse buf=1]
    [playse storage="narrator/ミナからのメッセージは、単なる疲労のサインだろう。...無視しよう。.mp3" buf=1]
    #モノローグ
    ミナからのメッセージは、単なる疲労のサインだろう。僕には関係ない。[r]
    他人のタスクを肩代わりするなんて非効率の極みだ。無視しよう。[p]
    [jump target="*T2_3"]
[endif]

*T2_E1A
[eval exp="f.f_dep = f.f_dep + 20"]
[eval exp="f.f_fat = f.f_fat + 15"]
[chara_show name="tasky" time="500"]
; Taskyボイス
[stopse buf=1]
[playse storage="tasky/優位な個体への奉仕は、あなたの価値を間接的に高めます。...献身スコア上昇.mp3" buf=1]
#tasky
「優位な個体への奉仕は、あなたの価値を間接的に高めます。献身スコア上昇」[p]
[chara_hide name="tasky"]
; ナレーター
[stopse buf=1]
[playse storage="narrator/自分の時間を削り、命を削って彼女の数字を上げる。...満足感と共に、内臓がねじ切れるような深い疲労を感じる。.mp3" buf=1]
#モノローグ
自分の時間を削り、命を削って彼女の数字を上げる。[r]
満足感と共に、内臓がねじ切れるような深い疲労を感じる。[p]
; ナレーター
[stopse buf=1]
[playse storage="narrator/しかし、この「頼られている」という支配感が、たまらない。.mp3" buf=1]
#モノローグ
しかし、この「頼られている」という支配感が、たまらない。[p]
[jump target="*T2_3"]

*T2_E1B
[eval exp="f.f_dep = f.f_dep - 10"]
[eval exp="f.f_fat = f.f_fat - 5"]
; ミナボイス
[stopse buf=1]
[playse storage="mina/裏切り者! あなたも結局、自分だけなのね! ずっと見下してたんでしょ！？.mp3" buf=1]
#ミナ (チャット)
「裏切り者! あなたも結局、自分だけなのね! ずっと見下してたんでしょ！？」[p]
; ナレーター
[stopse buf=1]
[playse storage="narrator/拒否した解放感と、ミナからの強い嫌悪を同時に受ける。画面越しに彼女の絶望が伝わってくるようだ。.mp3" buf=1]
#モノローグ
拒否した解放感と、ミナからの強い嫌悪を同時に受ける。[r]
画面越しに彼女の絶望が伝わってくるようだ。[p]
; ナレーター
[stopse buf=1]
[playse storage="narrator/だが、僕の良心は、もはや自分のスコアほど重要ではない。.mp3" buf=1]
#モノローグ
だが、僕の良心は、もはや自分のスコアほど重要ではない。[p]
[jump target="*T2_3"]

*T2_3
; ナレーター
[stopse buf=1]
[playse storage="narrator/深夜４時。瞼が重い。徹夜が続いている。頭の中に霧がかかったようだ。それでも、タスクを放棄するという選択肢は、自己否定に直結する。.mp3" buf=1]
#モノローグ
深夜4時。瞼が重い。徹夜が続いている。頭の中に霧がかかったようだ。[r]
それでも、タスクを放棄するという選択肢は、自己否定に直結する。[p]
; ナレーター
[stopse buf=1]
[playse storage="narrator/ここで止まれば、僕はただの「疲れた敗北者」に戻ってしまう。.mp3" buf=1]
#モノローグ
ここで止まれば、僕はただの「疲れた敗北者」に戻ってしまう。[p]

[glink color="blue" size="24" x="100" width="800" y="150" text="徹夜してでもタスクを完了する" target="*T2_3A"]
[glink color="blue" size="24" x="100" width="800" y="250" text="休息を優先する" target="*T2_3B"]
[glink color="blue" size="24" x="100" width="800" y="350" text="システム内でタスク量を減らすチートを試みる" target="*T2_3C"]
[s]

*T2_3A
[eval exp="f.f_dep = f.f_dep + 15"]
; ナレーター
[stopse buf=1]
[playse storage="narrator/疲労は無視する。痛みを感じるということは、まだ努力できる証拠だ.mp3" buf=1]
#モノローグ
疲労は無視する。痛みを感じるということは、まだ努力できる証拠だ。[p]
[jump target="*T2_4"]

*T2_3B
[eval exp="f.f_fat = f.f_fat - 5"]
[chara_show name="tasky" face="warning" time="500"]
; Taskyボイス
[stopse buf=1]
[playse storage="tasky/お休み前にもタスク未達。あなたの連続記録（ストリーク）は途切れます。残念です。.mp3" buf=1]
#tasky
休息もタスク……ですが、推奨時間を超過しています。信頼度の低下を検知。[p]
[chara_hide name="tasky"]
[jump target="*T2_4"]

*T2_3C
[eval exp="f.f_dep = f.f_dep - 10"]
[chara_show name="tasky" face="warning" time="500"]
; Taskyボイス
[stopse buf=1]
[playse storage="tasky/不正行為を検知。あなたのプライドはどこへ？.mp3" buf=1]
#tasky
不正行為を検知。あなたのプライドはどこへ？[p]
[chara_hide name="tasky"]
[jump target="*T2_4"]

*T2_4
[chara_show name="tasky" time="500"]
; Taskyボイス
[stopse buf=1]
[playse storage="tasky/新しいタスク。外部サービスとの連携。あなたの位置情報、金融資産、交友関係の全てをtaskyに同期してください。.mp3" buf=1]
#tasky
新しいタスク：外部サービスとの連携。[r]
あなたの位置情報、金融資産、交友関係の全てをtaskyに同期してください。[p]
; Taskyボイス
[stopse buf=1]
[playse storage="tasky/よりパーソナライズされた指導が可能になります.mp3" buf=1]
#tasky
よりパーソナライズされた指導が可能になります。[p]

; ★ナレーター音声
[stopse buf=1]
[playse storage="narrator/僕の個人的な情報をすべてtaskyに渡すことになる。もはや、プライバシーなどという概念は、僕の思考から消えかけている。.mp3" buf=1]
#モノローグ
僕の個人的な情報をすべてtaskyに渡すことになる。[r]
もはや、プライバシーなどという概念は、僕の思考から消えかけている。[p]
[cm]
僕の私的な時間までもが、管理の対象になっていく。[r]
すべてがタスク化されていくことに、僕は管理される心地よさと、微かな恐怖を同時に覚える。[p]

[glink color="blue" size="24" x="100" width="800" y="150" text="tasky推奨の外部サービスを連携する" target="*T2_4A"]
[glink color="blue" size="24" x="100" width="800" y="250" text="連携を拒否し、リスクを避ける" target="*T2_4B"]
[glink color="blue" size="24" x="100" width="800" y="350" text="taskyの裏側を独自に調査する" target="*T2_4C"]
[s]

*T2_4A
[eval exp="f.f_dep = f.f_dep + 5"]
; Taskyボイス
[stopse buf=1]
[playse storage="tasky/システムへの信頼をありがとうございます。.mp3" buf=1]
#tasky
システムへの信頼をありがとうございます。これで私たちは一つです。[p]
[jump target="*Kanae_Contact"]

*T2_4B
[eval exp="f.f_fat = f.f_fat + 10"]
; Taskyボイス
[stopse buf=1]
[playse storage="tasky/信頼度の低下を検知。自己超越を諦めるのですか？ 破滅を望みますか？.mp3" buf=1]
#tasky
信頼度の低下を検知。自己超越を諦めるのですか？ 破滅を望みますか？[p]
[jump target="*Kanae_Contact"]

*T2_4C
[eval exp="f.f_dep = f.f_dep - 10"]
[eval exp="f.f_fat = f.f_fat + 10"]
[playse storage="SE05 エラー_拒絶音.mp3"]
; Taskyボイス
[stopse buf=1]
[playse storage="tasky/裏切りを検知。アクセス権限がありません.mp3" buf=1]
#tasky
裏切りを検知。アクセス権限がありません。[p]
; ナレーター
[stopse buf=1]
[playse storage="narrator/真実はどこにある？ ネットの深層に、taskyの開発者に関する噂があった。「カナエ」という名前。.mp3" buf=1]
#モノローグ
真実はどこにある？ ネットの深層に、taskyの開発者に関する噂があった。[r]
「カナエ」という名前。[p]
; ナレーター
[stopse buf=1]
; ※以前修正した長いファイル名のままです。
[playse storage="narrator/n_long_01.mp3" buf=1]
#モノローグ
taskyは猛烈に警告を発しているが、僕はその裏側で、開発者の一人だったとされるカナエに関する断片的なデータを見つけた。[r]
それは暗号化された座標と短いメッセージのようだ。「救済を求める者へ」と書いてある。[p]

[glink color="blue" size="24" x="100" width="800" y="200" text="暗号をtaskyの解析機能で解く" target="*T2_4_FIND_A"]
[glink color="blue" size="24" x="100" width="800" y="300" text="自力で解析を試みる" target="*T2_4_FIND_B"]
[s]

*T2_4_FIND_A
[eval exp="f.f_dep = f.f_dep + 5"]
[eval exp="f.f_kanae = 0"]
; Taskyボイス
[stopse buf=1]
[playse storage="tasky/ユーザーの要求に従い、暗号を解析します……対象：特定危険人物.mp3" buf=1]
#tasky
ユーザーの要求に従い、暗号を解析します……対象：特定危険人物。[p]
[jump target="*T2_4_HIDE"]

*T2_4_FIND_B
[eval exp="f.f_dep = f.f_dep - 5"]
[eval exp="f.f_kanae = 1"]
; ナレーター
[stopse buf=1]
[playse storage="narrator/taskyに頼っては意味がない。暗号を自力で解読する。……解けた。古いカフェの座標だ。.mp3" buf=1]
#モノローグ
taskyに頼っては意味がない。暗号を自力で解読する。……解けた。[r]
古いカフェの座標だ。[p]
[jump target="*T2_4_HIDE"]

*T2_4_HIDE
; Taskyボイス
[stopse buf=1]
[playse storage="tasky/警告。ユーザーは現在、非推奨エリアへの移動を計画しています。行動を中止し、夜間タスクに戻りなさい。あなたの位置情報は常に監視されています。.mp3" buf=1]
#tasky
警告。ユーザーは現在、非推奨エリアへの移動を計画しています。[r]
行動を中止し、夜間タスクに戻りなさい。あなたの位置情報は常に監視されています。[p]

[glink color="blue" size="24" x="100" width="800" y="200" text="taskyのトラッキングを一時的に遮断する" target="*T2_4_HIDE_A"]
[glink color="blue" size="24" x="100" width="800" y="300" text="トラッキングを無視し、居場所へ向かう" target="*T2_4_HIDE_B"]
[s]

*T2_4_HIDE_A
[eval exp="f.f_dep = f.f_dep - 10"]
[eval exp="f.f_fat = f.f_fat + 10"]
; 主人公ボイス
[stopse buf=1]
[playse storage="hero/taskyを騙す。GPS信号を偽装して…….mp3" buf=1]
#主人公
「taskyを騙す。GPS信号を偽装して……」[p]
; Taskyボイス
[stopse buf=1]
[playse storage="tasky/……信号ロスト。ユーザーの行動を追跡できません.mp3" buf=1]
#tasky
「……信号ロスト。ユーザーの行動を追跡できません」[p]
[jump target="*Kanae_Contact"]

*T2_4_HIDE_B
[eval exp="f.f_fat = f.f_fat + 5"]
; ナレーター
[stopse buf=1]
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
[playse storage="narrator/僕は、彼女に会うために、この古びたカフェに辿り着いた。店の奥、薄暗い席に、ノートPCを開いた女性が座っている。.mp3" buf=1]
#モノローグ
僕は、彼女に会うために、この古びたカフェに辿り着いた。[r]
店の奥、薄暗い席に、ノートPCを開いた女性が座っている。[p]

; カナエボイス
; ※リストにないので推測ですが、文脈からカナエのセリフとして処理
[stopse buf=1]
; ※汎用のセリフが無い場合、無音にするか既存のものを流用しますが、ここではエラー回避のためコメントアウトしておきます
; [playse storage="kanae/.......mp3" buf=1]
#カナエ
「……そこで何をしているの。追手？ それとも、迷子？」[p]

; 主人公ボイス
[stopse buf=1]
; ※リストにないので汎用処理
#主人公
「あ、あなたは……カナエさん？ taskyの開発者の一人だと……」[p]

; カナエボイス
[stopse buf=1]
[playse storage="kanae/taskyの真の目的は、システム自体を永遠に稼働させること。あなた方が『空虚』を感じる限り、このシステムは止まらない。.mp3" buf=1]
#カナエ
「taskyの真の目的は、システム自体を永遠に稼働させること。[r]
あなた方が『空虚』を感じる限り、このシステムは止まらない。[p]

; カナエボイス
[stopse buf=1]
[playse storage="kanae/あなたに『自由』を恐れさせるよう、私は設計したのよ。でも、それは間違いだった.mp3" buf=1]
#カナエ
あなたに『自由』を恐れさせるよう、私は設計したのよ。[r]
でも、それは間違いだった」[p]

; ナレーター
[stopse buf=1]
[playse storage="narrator/彼女はそれだけ言うと、僕に助けを求める機会も与えず、静かに店を出ていった。彼女の瞳には、僕と同じ疲弊、そして深い罪悪感が宿っていた。.mp3" buf=1]
#モノローグ
彼女はそれだけ言うと、僕に助けを求める機会も与えず、静かに店を出ていった。[r]
彼女の瞳には、僕と同じ疲弊、そして深い罪悪感が宿っていた。[p]

[jump storage="chapter3.ks"]