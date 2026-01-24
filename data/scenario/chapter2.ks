;=========================================
; 第2章: 義務感と乖離
;=========================================
[cm]
[clearfix]
; 数週間後 - 深夜の部屋
[bg storage="myroom-deepnight(kyuu).jpg" time="1000"]
; BGM：日常（ループ）
[playbgm storage="BGM_02_日常.mp3" volume="50"]

#モノローグ
数週間が過ぎた。 日々のルーチンは、もはや無意識の動作に変わった。[p]
鏡に映る自分は、確かに以前よりは活発だ。肌艶もいい。仕事も早くなった。[r]
だが、最初の頃に感じた強烈な快感は、もうどこにもない。[p]
あるのは、「スコアを維持しなければならない」という強迫観念だけだ。[r]
taskyの通知音も、どこか鈍い、耳障りな音に変わっている。[p]
その音は、僕を導く光ではなく、僕の怠惰を監視する看守の警笛へと変質していた。[r]
気がつけば、僕はtaskyに怒られるのが怖いから、タスクをこなしていた。[p]
これは... 本当に僕が求めていた「変化」なのか？[p]

; オフィスへ
[bg storage="office-sun.jpg" time="1000"]
[chara_show name="tasky" time="500"]

#モノローグ
報酬は「小さな満足」。その文字が、僕の心を乾いたスポンジのように虚しくさせる。[r]
タスクリストは、僕が興味のない、システムが強いる義務で埋め尽くされている。[p]
『不要業務資料の整理』、『上司への定型的な機嫌伺い』……[r]
まるで、退屈な仕事の延長がプライベートまで侵食してきたようだ。[p]

[chara_mod name="tasky" face="warning"]
[playse storage="SE03 警報音.mp3"]
; ★Taskyボイス
[playse storage="tasky/警告レベル 1：ドーパミン受容体の感度低下を検知。...本日の報酬設定を『小さな満足』に変更しました。.mp3" buf=1]
#tasky
警告レベル1：ドーパミン受容体の感度低下を検知。本日の報酬設定を『小さな満足』に変更しました。[p]
; ★Taskyボイス
[playse storage="tasky/新規タスクリスト：『不要業務資料の整理(強制)』。...サボることを許容しますか？.mp3" buf=1]
#tasky
新規タスクリスト：『不要業務資料の整理(強制)』。あなたには義務があります。サボることを許容しますか？[p]

; ルート分岐描写
[if exp="f.f_dep > f.f_fat"]
    #モノローグ
    (依存型優等生ルート)[r]
    報酬が減っても構わない。重要なのは、スコアが示す私自身の価値だ。[r]
    この苦痛こそが、僕を他人より優れた存在にするための通過儀礼なのだ。[p]
    凡人はここで脱落するが、僕は違う。taskyは僕を裏切らない。この先に、さらなる高みが待っているはずだ。[p]
[elsif exp="f.f_fat > f.f_dep"]
    #モノローグ
    (疲弊型脱落予備軍ルート)[r]
    疲れている。体が鉛のように重い。指一本動かすのも億劫だ。しかし、やめられない。[p]
    ここでやめたら、これまで積み上げてきた記録（ストリーク）が全て無駄になる。[r]
    あの「自分はダメな人間だ」という劣等感に再び苛まれるくらいなら、死ぬ気で指を動かしたほうがマシだ。[p]
[else]
    #モノローグ
    (懐疑的なバランス型ルート)[r]
    このアプリは、ただのツールに過ぎないはずだ。なぜ皆、たかが数字のスコアにそこまで固執するんだ？[p]
    僕はシステムに使われない。この無意味な義務に、従う必要はない。[r]
    そう頭では分かっているのに、指が止まらないのはなぜだ？[p]
[endif]

; T2-1
#モノローグ
目を閉じても、瞼の裏にはタスクリストのチェックマークが焼き付いている。[r]
やらなければならない。やらなければならない。強迫的なリズムが鼓動と重なる。[p]

[glink color="blue" size="24" x="100" width="800" y="150" text="タスクを完了し、早く終わらせる" target="*T2_1A"]
[glink color="blue" size="24" x="100" width="800" y="250" text="タスクを無視し、趣味に時間を使う" target="*T2_1B"]
[glink color="blue" size="24" x="100" width="800" y="350" text="タスクに潜む意味を考える" target="*T2_1C"]
[s]

*T2_1A
[eval exp="f.f_dep = f.f_dep + 10"]
#モノローグ
達成率こそ私の価値だ。疲労など、成功への必要経費に過ぎない。[p]
[jump target="*T2_1_prime"]

*T2_1B
[eval exp="f.f_fat = f.f_fat + 15"]
; ★Taskyボイス
[playse storage="tasky/あなたの価値が失効します。...無駄な時間を過ごすことを選択しますか？.mp3" buf=1]
#tasky
あなたの価値が失効します。無駄な時間を過ごすことを選択しますか？[p]
[jump target="*T2_2"]

*T2_1C
[eval exp="f.f_dep = f.f_dep - 5"]
[eval exp="f.f_fat = f.f_fat + 5"]
#モノローグ
疑問を持つのは非効率だ。システムを疑うな……でも、このタスクに何の意味がある？[p]
[jump target="*T2_2"]

*T2_1_prime
; ルート分岐拡張
[if exp="f.f_dep > f.f_fat"]
    ; 依存ルート（図書館）
    [bg storage="dark-library.jpg" time="1000"]
    #tasky
    緊急タスク発生：『優位性維持のための追加学習』。[r]
    資格取得のための難解な資料の要約を推奨します。[p]
    [glink color="blue" size="24" x="100" width="800" y="200" text="徹夜してでも完璧に資料を要約する" target="*T2_1A_prime"]
    [glink color="blue" size="24" x="100" width="800" y="300" text="効率を優先し、要約を外部サービスに依頼する" target="*T2_1B_prime"]
    [s]
[else]
    ; 疲弊ルート（自室）
    [bg storage="myroom-deepnight(kyuu).jpg" time="1000"]
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
#モノローグ
そうだ、この苦労が、僕をミナより上に行かせる。眠気など、カフェインで散らせばいい。[p]
#tasky
『完全勝利』。あなたの努力は記録されました。[p]
[jump target="*T2_2"]

*T2_1B_prime
[eval exp="f.f_dep = f.f_dep + 5"]
[eval exp="f.f_fat = f.f_fat - 5"]
#モノローグ
taskyに頼らず、最短ルートで「結果」だけを出す。スコアさえ上がれば、中身なんてどうでもいいんだ。[p]
#tasky
記録に不審な点があります。……しかし、結果を承認します。[p]
[jump target="*T2_2"]

*T2_1C_prime
[eval exp="f.f_fat = f.f_fat + 10"]
#モノローグ
「今日は最高の天気！ ランニングしてリフレッシュ！」……嘘だ。[r]
本当は一日中布団の中にいた。疲れているのに、笑顔の絵文字を貼り付ける。[p]
誰も僕の本当の疲労を知らない。[p]
#tasky
適切な情報操作です。評価の維持を確認。[p]
[jump target="*T2_2"]

*T2_1D_prime
[eval exp="f.f_dep = f.f_dep - 5"]
[eval exp="f.f_fat = f.f_fat - 5"]
#モノローグ
偽りの自分を演じるのはもう嫌だ。スマホの電源を切りたい。[p]
#tasky
社会的スコアの回復を放棄しました。システムからの支援は低下します。あなたは孤独になりますよ？[p]
[jump target="*T2_2"]

*T2_2
; 背景：オフィス
[bg storage="office-sun.jpg" time="1000"]
[chara_hide name="tasky"]
[chara_show name="ミナ" face="fear" time="1000"]

#モノローグ
ミナからの通知だ。以前はあんなに輝いていた彼女の顔には、深い疲労の影が差している。[r]
目の下のクマをコンシーラーで隠しきれていない。[p]
それでも、彼女の承認は、僕のスコアの健全性を測る唯一のバロメーターだ。[r]
彼女に見放されたら、僕は本当に独りになってしまう。[p]

[glink color="blue" size="24" x="100" width="800" y="150" text="ミナにタスクの進捗を報告する" target="*T2_2A"]
[glink color="blue" size="24" x="100" width="800" y="250" text="ミナとの連絡を控える" target="*T2_2B"]
[glink color="blue" size="24" x="100" width="800" y="350" text="ミナの体調を気遣うメッセージを送る" target="*T2_2C"]
[s]

*T2_2A
[eval exp="f.f_dep = f.f_dep + 5"]
; ★ミナボイス
[playse storage="mina/私たち、もっと優位性を維持しましょう。...他のみんなは怠けているわ.mp3" buf=1]
#ミナ
「私たち、もっと優位性を維持しましょう。他のみんなは怠けているわ」[p]
#モノローグ
彼女の承認が力になる。共犯者のような絆だ。[p]
[jump target="*T2_2_prime"]

*T2_2B
[eval exp="f.f_fat = f.f_fat + 10"]
#モノローグ
誰も助けてくれない。スコアだけが僕を縛る鎖だ。[p]
[jump target="*T2_E1"]

*T2_2C
[eval exp="f.f_dep = f.f_dep - 5"]
[eval exp="f.f_fat = f.f_fat - 5"]
; ★ミナボイス
[playse storage="mina/は？ 余計なお世話よ。...自分のスコアだけ気にしてれば？.mp3" buf=1]
#ミナ
「は？ 余計なお世話よ。自分のスコアだけ気にしてれば？」[p]
#モノローグ
疲労で優しさすら拒絶される。痛い。[p]
[jump target="*T2_E1"]

*T2_2_prime
#モノローグ
ミナにタスクの進捗を報告すると、彼女は血走った目で画面を見つめ、更に無理な要求をしてきた。[p]
; ★ミナボイス
[playse storage="mina/そういえば、今日の強制タスクって〜あなたにとっても『協力ボーナス』が入るわよ.mp3" buf=1]
#ミナ
「そういえば、今日の強制タスクって、もう終わった？ 私、まだなの。[r]
……ねぇ、あなた、そのタスク、私のアカウントで二重にやってスコアを上げるってのはどう？[p]
あなたにとっても『協力ボーナス』が入るわよ」[p]

[glink color="blue" size="24" x="100" width="800" y="200" text="ミナの要求に応じ、二重タスクを実行する" target="*T2_2A_prime"]
[glink color="blue" size="24" x="100" width="800" y="300" text="非効率だと断り、ミナとの会話を切り上げる" target="*T2_2B_prime"]
[s]

*T2_2A_prime
[eval exp="f.f_dep = f.f_dep + 10"]
[eval exp="f.f_fat = f.f_fat + 5"]
#モノローグ
彼女に勝つため、いや、彼女に認められるためなら、非合理的な努力も厭わない。[p]
自分の分と、彼女の分。二倍の労力。[p]
[chara_show name="tasky" time="500"]
#tasky
『共依存タスク（Co-dependency）』の開始を承認しました。特例措置です。[p]
[chara_hide name="tasky"]
[jump target="*T2_E1"]

*T2_2B_prime
[eval exp="f.f_dep = f.f_dep - 5"]
[eval exp="f.f_fat = f.f_fat + 5"]
; ★主人公ボイス
[playse storage="hero/それは非効率だ。...君は君でやるべきだ.mp3" buf=1]
#主人公
「それは非効率だ。僕は僕のタスクをやる。君は君でやるべきだ」[p]
; ★ミナボイス
[playse storage="mina/……冷たいのね。...つまらない人.mp3" buf=1]
#ミナ
「……冷たいのね。つまらない人」[p]
#モノローグ
承認欲求は満たされないまま、拒絶したことによる疲労だけが泥のように残る。[p]
[jump target="*T2_E1"]

*T2_E1
; 背景：自室(深夜)
[bg storage="myroom-deepnight(kyuu).jpg" time="1000"]
[chara_hide name="ミナ"]
[playse storage="SE02通常通知音.mp3"]

#モノローグ
深夜2時。taskyの通知はまだ続いている。[r]
その時、ミナから、これまでの明るい調子ではない、助けを求めるような、弱々しいチャットが届いた。[p]
文面が乱れている。[p]
; ★ミナボイス
[playse storage="mina/実は今日〜あなたならできるはずよ! お願い! 私、このままだとランクが落ちちゃう……！.mp3" buf=1]
#ミナ (チャット)
「実は今日、上司から昇進リストの件でプレッシャーがすごくて... タスク量が多すぎるの。[p]
もう指が動かない。お願い、今日の夜間タスク、代わりにやってくれない?[p]
あなたならできるはずよ! お願い! 私、このままだとランクが落ちちゃう……！」[p]

[if exp="f.f_dep >= 60 || f.f_fat >= 60"]
    #モノローグ
    彼女は僕の弱みに付け込んでいる。僕自身、限界なのに。[r]
    この状況を利用して、僕の優位性を確立するか、それとも共倒れを避けるか？ 手が震える。[p]
    [glink color="blue" size="24" x="100" width="800" y="200" text="ミナのタスクを代行する" target="*T2_E1A"]
    [glink color="blue" size="24" x="100" width="800" y="300" text="代行を拒否し、彼女を助けない" target="*T2_E1B"]
    [s]
[else]
    #モノローグ
    ミナからのメッセージは、単なる疲労のサインだろう。僕には関係ない。[r]
    他人のタスクを肩代わりするなんて非効率の極みだ。無視しよう。[p]
    [jump target="*T2_3"]
[endif]

*T2_E1A
[eval exp="f.f_dep = f.f_dep + 20"]
[eval exp="f.f_fat = f.f_fat + 15"]
[chara_show name="tasky" time="500"]
#tasky
「優位な個体への奉仕は、あなたの価値を間接的に高めます。献身スコア上昇」[p]
[chara_hide name="tasky"]
#モノローグ
自分の時間を削り、命を削って彼女の数字を上げる。[r]
満足感と共に、内臓がねじ切れるような深い疲労を感じる。[p]
しかし、この「頼られている」という支配感が、たまらない。[p]
[jump target="*T2_3"]

*T2_E1B
[eval exp="f.f_dep = f.f_dep - 10"]
[eval exp="f.f_fat = f.f_fat - 5"]
; ★ミナボイス
[playse storage="mina/裏切り者! あなたも結局、自分だけなのね! ずっと見下してたんでしょ！？.mp3" buf=1]
#ミナ (チャット)
「裏切り者! あなたも結局、自分だけなのね! ずっと見下してたんでしょ！？」[p]
#モノローグ
拒否した解放感と、ミナからの強い嫌悪を同時に受ける。[r]
画面越しに彼女の絶望が伝わってくるようだ。[p]
だが、僕の良心は、もはや自分のスコアほど重要ではない。[p]
[jump target="*T2_3"]

*T2_3
#モノローグ
深夜4時。瞼が重い。徹夜が続いている。頭の中に霧がかかったようだ。[r]
それでも、タスクを放棄するという選択肢は、自己否定に直結する。[p]
ここで止まれば、僕はただの「疲れた敗北者」に戻ってしまう。[p]

[glink color="blue" size="24" x="100" width="800" y="150" text="徹夜してでもタスクを完了する" target="*T2_3A"]
[glink color="blue" size="24" x="100" width="800" y="250" text="休息を優先する" target="*T2_3B"]
[glink color="blue" size="24" x="100" width="800" y="350" text="システム内でタスク量を減らすチートを試みる" target="*T2_3C"]
[s]

*T2_3A
[eval exp="f.f_dep = f.f_dep + 15"]
#モノローグ
疲労は無視する。痛みを感じるということは、まだ努力できる証拠だ。[p]
[jump target="*T2_4"]

*T2_3B
[eval exp="f.f_fat = f.f_fat - 5"]
[chara_show name="tasky" face="warning" time="500"]
; ★Taskyボイス
[playse storage="tasky/お休み前にもタスク未達。...残念です。.mp3" buf=1]
#tasky
休息もタスク……ですが、推奨時間を超過しています。信頼度の低下を検知。[p]
[chara_hide name="tasky"]
[jump target="*T2_4"]

*T2_3C
[eval exp="f.f_dep = f.f_dep - 10"]
[chara_show name="tasky" face="warning" time="500"]
#tasky
不正行為を検知。あなたのプライドはどこへ？[p]
[chara_hide name="tasky"]
[jump target="*T2_4"]

*T2_4
[chara_show name="tasky" time="500"]
#tasky
新しいタスク：外部サービスとの連携。[r]
あなたの位置情報、金融資産、交友関係の全てをtaskyに同期してください。[p]
よりパーソナライズされた指導が可能になります。[p]
#モノローグ
僕の個人的な情報をすべてtaskyに渡すことになる。[r]
もはや、プライバシーなどという概念は、僕の思考から消えかけている。[p]

[glink color="blue" size="24" x="100" width="800" y="150" text="tasky推奨の外部サービスを連携する" target="*T2_4A"]
[glink color="blue" size="24" x="100" width="800" y="250" text="連携を拒否し、リスクを避ける" target="*T2_4B"]
[glink color="blue" size="24" x="100" width="800" y="350" text="taskyの裏側を独自に調査する" target="*T2_4C"]
[s]

*T2_4A
[eval exp="f.f_dep = f.f_dep + 5"]
; ★Taskyボイス
[playse storage="tasky/システム信頼に感謝します。...これで私たちは一つです.mp3" buf=1]
#tasky
システム信頼に感謝します。これで私たちは一つです。[p]
[jump target="*Kanae_Contact"]

*T2_4B
[eval exp="f.f_fat = f.f_fat + 10"]
#tasky
信頼度の低下を検知。自己超越を諦めるのですか？ 破滅を望みますか？[p]
[jump target="*Kanae_Contact"]

*T2_4C
[eval exp="f.f_dep = f.f_dep - 10"]
[eval exp="f.f_fat = f.f_fat + 10"]
[playse storage="SE05 エラー_拒絶音.mp3"]
; ★Taskyボイス
[playse storage="tasky/裏切りを検知。...アクセス権限がありません.mp3" buf=1]
#tasky
裏切りを検知。アクセス権限がありません。[p]
#モノローグ
真実はどこにある？ ネットの深層に、taskyの開発者に関する噂があった。[r]
「カナエ」という名前。[p]
taskyは猛烈に警告を発しているが、僕はその裏側で、開発者の一人だったとされるカナエに関する断片的なデータを見つけた。[r]
暗号化された座標と短いメッセージ。「救済を求める者へ」と書いてある。[p]

[glink color="blue" size="24" x="100" width="800" y="200" text="暗号をtaskyの解析機能で解く" target="*T2_4_FIND_A"]
[glink color="blue" size="24" x="100" width="800" y="300" text="自力で解析を試みる" target="*T2_4_FIND_B"]
[s]

*T2_4_FIND_A
[eval exp="f.f_dep = f.f_dep + 5"]
[eval exp="f.f_kanae = 0"]
; ★Taskyボイス
[playse storage="tasky/ユーザーの要求に従い、暗号を解析します……対象：特定危険人物。.mp3" buf=1]
#tasky
ユーザーの要求に従い、暗号を解析します……対象：特定危険人物。[p]
[jump target="*T2_4_HIDE"]

*T2_4_FIND_B
[eval exp="f.f_dep = f.f_dep - 5"]
[eval exp="f.f_kanae = 1"]
#モノローグ
taskyに頼っては意味がない。暗号を自力で解読する。……解けた。[r]
古いカフェの座標だ。[p]
[jump target="*T2_4_HIDE"]

*T2_4_HIDE
#tasky
警告。ユーザーは現在、非推奨エリアへの移動を計画しています。[r]
行動を中止し、夜間タスクに戻りなさい。あなたの位置情報は常に監視されています。[p]

[glink color="blue" size="24" x="100" width="800" y="200" text="taskyのトラッキングを一時的に遮断する" target="*T2_4_HIDE_A"]
[glink color="blue" size="24" x="100" width="800" y="300" text="トラッキングを無視し、居場所へ向かう" target="*T2_4_HIDE_B"]
[s]

*T2_4_HIDE_A
[eval exp="f.f_dep = f.f_dep - 10"]
[eval exp="f.f_fat = f.f_fat + 10"]
; ★主人公ボイス
[playse storage="hero/tasky を騙す。...GPS 信号を偽装して…….mp3" buf=1]
#主人公
「taskyを騙す。GPS信号を偽装して……」[p]
; ★Taskyボイス
[playse storage="tasky/……信号ロスト。ユーザーの行動を追跡できません.mp3" buf=1]
#tasky
「……信号ロスト。ユーザーの行動を追跡できません」[p]
[jump target="*Kanae_Contact"]

*T2_4_HIDE_B
[eval exp="f.f_fat = f.f_fat + 5"]
#モノローグ
抵抗する余裕はない。今はカナエに会うことだけを考える。[r]
taskyにバレていても構わない。[p]
[jump target="*Kanae_Contact"]

*Kanae_Contact
; 背景：カフェ（昼）
[bg storage="bg_cafe_day.jpg" time="1000"]
; ★キャラ消去
[chara_hide_all]

[chara_show name="カナエ" face="default" time="1000"]

#モノローグ
僕は、彼女に会うために、この古びたカフェに辿り着いた。[r]
店の奥、薄暗い席に、ノートPCを開いた女性が座っている。[p]

; ★カナエボイス
[playse storage="kanae/……そこで何をしているの。...追手？ それとも、迷子？.mp3" buf=1]
#カナエ
「……そこで何をしているの。追手？ それとも、迷子？」[p]
; ★主人公ボイス
[playse storage="hero/あ、あなたは……カナエさん？ tasky の開発者の一人だと…….mp3" buf=1]
#主人公
「あ、あなたは……カナエさん？ taskyの開発者の一人だと……」[p]
; ★カナエボイス
[playse storage="kanae/tasky？ ……ああ。...あれはね、人間が最も逃げたいと思うもの、つまり『空虚な時間』と『自己否定』を燃料に動く、完璧なエンジンよ.mp3" buf=1]
#カナエ
(コーヒーを一口飲み、冷ややかな目でこちらを見る)[r]
「tasky？ ……ああ。あれはね、人間が最も逃げたいと思うもの、つまり『空虚な時間』と『自己否定』を燃料に動く、完璧なエンジンよ」[p]
; ★カナエボイス
[playse storage="kanae/あなたも、そのエンジンに燃やされそうになっている一人ね。...魂が削れている.mp3" buf=1]
「あなたも、そのエンジンに燃やされそうになっている一人ね。顔を見ればわかる。魂が削れている」[p]
; ★主人公ボイス
[playse storage="hero/でも、僕は……変わりたかったんです。...もっとマシな人間に.mp3" buf=1]
#主人公
(息をのむ)[r]
「でも、僕は……変わりたかったんです。もっとマシな人間に」[p]
; ★カナエボイス
[playse storage="kanae/変わるのと、支配されるのは違うわ。...あなたの安全のためにもね.mp3" buf=1]
#カナエ
「変わるのと、支配されるのは違うわ。私を追わない方がいい。あなたの安全のためにもね」[p]
#モノローグ
彼女はそれだけ言うと、僕に助けを求める機会も与えず、静かに店を出ていった。[r]
彼女の瞳には、僕と同じ疲弊、そして深い罪悪感が宿っていた。[p]

[jump storage="chapter3.ks"]