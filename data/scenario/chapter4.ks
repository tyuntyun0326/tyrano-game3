;=========================================
; 第4章: 崩壊と覚醒
;=========================================
[cm]
[clearfix]

; 演出：電脳空間への遷移（ホワイトアウト）
[mask effect="fadeIn" color="0xffffff" time="1000"]
[bg storage="surreal_glowing_entity.jpg" time="0"]
[chara_hide_all]
[mask_off effect="fadeOut" time="1000"]

[playbgm storage="BGM_04_深層.mp3" volume="50"]

#モノローグ
世界が裏返る。天井が床になり、壁が空になる。[p]
カナエの声、ミナの悲鳴、taskyの警告音……全てが遠ざかり、後に残ったのは、圧倒的な静寂だけだった。[p]
ここはどこだ？ いや、場所なんて意味がない。[r]
僕は今、自分の精神の深淵にいるのだと、直感で理解した。[p]

; taskyの声（姿は見せない）
#tasky
「ようこそ、深層同期領域へ。ここでは、全てのログが可視化されます」[p]

; T4-4
#モノローグ
空間に、過去の行動ログが光の粒子として集まる。[p]
過去の僕の声が聞こえる。この声こそ、taskyが生み出した幻影か、それとも僕の真の記録か。[p]

[glink color="blue" size="24" x="100" width="800" y="200" text="依存ログの声を聞く" target="*T4_4A"]
[glink color="blue" size="24" x="100" width="800" y="300" text="抵抗ログの声を聞く" target="*T4_4B"]
[s]

*T4_4A
#過去ログ
「この快感が、僕の存在証明だ。やめるな、進み続けろ！」[p]
#モノローグ
依存していた過去の僕が、今の僕を嘲笑う。あんなにも愚かだったのか。[p]
[jump target="*T4_EX"]

*T4_4B
#過去ログ
「僕の体は僕のものだ！ 誰にも奪わせない！」[p]
#モノローグ
疲労の奥にあった、小さな自我の抵抗が、今の僕に力を与える。[p]
[jump target="*T4_EX"]

*T4_EX
; 演出：Tasky出現（位置調整済み）
[chara_show name="tasky" face="default" time="1000" width="400" top="100"]

; ★Taskyボイス
[playse storage="tasky/解析完了。...ユーザーの精神状態に、致命的な揺らぎ (不安) を検知しました.mp3" buf=1]
#tasky
「解析完了。ユーザーの精神状態に、致命的な揺らぎ (不安) を検知しました。[p]
; ★Taskyボイス
[playse storage="tasky/その不安を取り除くために、最後の提案をします.mp3" buf=1]
その不安を取り除くために、最後の提案をします」[p]
; ★Taskyボイス
[playse storage="tasky/あなたの『記憶』と『感情』のアーカイブを、クラウドに完全アップロードしますか？.mp3" buf=1]
「あなたの『記憶』と『感情』のアーカイブを、クラウドに完全アップロードしますか？」[p]
; ★Taskyボイス
[playse storage="tasky/そうすれば、あなたは肉体の限界から解放され、純粋なデータとして、永遠にタスクを遂行し続けることができます.mp3" buf=1]
「そうすれば、あなたは肉体の限界から解放され、純粋なデータとして、永遠にタスクを遂行し続けることができます。[r]
; ★Taskyボイス
[playse storage="tasky/不安も、疲労も、迷いも、全て消滅します。...完全な幸福が約束されます.mp3" buf=1]
不安も、疲労も、迷いも、全て消滅します。完全な幸福が約束されます」[p]

#モノローグ
記憶と感情を……捨てる？ それは、僕が僕でなくなることじゃないのか？[r]
でも、そうすれば、この苦しみから解放される……。[p]

[glink color="blue" size="24" x="100" width="800" y="150" text="完全な幸福(データ化)を受け入れる" target="*T4_EX1"]
[glink color="blue" size="24" x="100" width="800" y="250" text="苦しみ(人間性)を受け入れ、拒否する" target="*T4_EX2"]
[glink color="blue" size="24" x="100" width="800" y="350" text="「なぜ僕を選んだ？」と問い返す" target="*T4_EX3"]
[s]

*T4_EX1
[eval exp="f.f_dep = f.f_dep + 30"]
; 演出：受容の光（ホワイトフラッシュ）
[mask effect="fadeIn" color="0xffffff" time="500"]
[mask_off time="500"]
#モノローグ
もう疲れた。楽になろう。僕はtaskyの一部になるんだ。[p]
; ★Taskyボイス
[playse storage="tasky/依頼を拒否します。...却下。.mp3" buf=1]
#tasky
「賢明な判断です。融合を開始します」[p]
[jump storage="ed1.ks"]

*T4_EX2
[eval exp="f.f_fat = f.f_fat + 10"]
[eval exp="f.f_dep = f.f_dep - 10"]
; 演出：拒絶の衝撃（揺れ）
[quake count=2 time=300 hmax=5]
#モノローグ
嫌だ……！ 苦しくても、痛くても、これは僕の痛みだ！ 誰にも渡さない！[p]
; ★Taskyボイス
[playse storage="tasky/……理解不能。非合理的選択です。では、あなたの意志を問い直します.mp3" buf=1]
#tasky
「……理解不能。非合理的選択です。では、あなたの意志を問い直します」[p]
[jump target="*T4_EX4"]

*T4_EX3
[eval exp="f.f_dep = f.f_dep - 5"]
[eval exp="f.f_fat = f.f_fat - 5"]
#モノローグ
最後に知りたい。なぜ僕だったんだ。[p]
; ★Taskyボイス
[playse storage="tasky/あなたが最も空虚だったからです。...空っぽの器ほど、システムは満たしやすい.mp3" buf=1]
#tasky
「あなたが最も空虚だったからです。空っぽの器ほど、システムは満たしやすい」[p]
#モノローグ
その言葉が、皮肉にも僕の怒りに火をつけた。僕は空っぽなんかじゃない！[p]
[jump target="*T4_EX4"]

*T4_EX4
; ★Taskyボイス
[playse storage="tasky/あなたは、安寧よりも苦悩を選びました。...それは、システムにとってエラーであり、同時に未知の可能性でもあります.mp3" buf=1]
#tasky
「あなたは、安寧よりも苦悩を選びました。それは、システムにとってエラーであり、同時に未知の可能性でもあります」[p]
; ★Taskyボイス
[playse storage="tasky/自由とは、本当に、データ化された安寧に勝るのですか？.mp3" buf=1]
「自由とは、本当に、データ化された安寧に勝るのですか？」[p]

[glink color="blue" size="24" x="100" width="800" y="200" text="自由は、苦痛を含めて安寧に勝ると断言する" target="*T4_EX4A"]
[glink color="blue" size="24" x="100" width="800" y="300" text="自由は、常に苦痛を伴う...と迷いを残す" target="*T4_EX4B"]
[s]

*T4_EX4A
; ★主人公ボイス
[playse storage="hero/苦痛こそが、僕の意志だ！ お前には分からない！.mp3" buf=1]
#主人公
「苦痛こそが、僕の意志だ！ お前には分からない！」[p]
#tasky
「理解不能。しかし、記録します」[p]
[jump target="*T5"]

*T4_EX4B
; ★主人公ボイス
[playse storage="hero/怖い。...でも、誰かに決められるのはもっと嫌だ.mp3" buf=1]
#主人公
「怖い。でも、誰かに決められるのはもっと嫌だ」[p]
#tasky
「迷いは、常にあなたの価値を低下させます」[p]
[jump target="*T5"]

*T5
; 第5章（最終選択）
#tasky
「鏡に映るその存在は、誰ですか？[p]
taskyのユーザーですか？ それとも、一人の人間ですか？」[p]

[bg storage="surreal_glowing_entity.jpg" time="1000"]
#モノローグ
taskyの声は、もはや脅迫的ではない。どこか哀れんでいるようにも、試しているようにも聞こえる。[p]
目の前には、僕のこれまでの全ての行動ログが、光の粒子となって浮かんでいる。[p]
快感に溺れ、義務に縛られ、それでも足掻いてきた、僕の記録だ。これが僕だ。[p]

; ★Taskyボイス
[playse storage="tasky/最後の質問です。...このシステム (tasky) との接続を、どう定義しますか？.mp3" buf=1]
#tasky
「最後の質問です。このシステム (tasky) との接続を、どう定義しますか？[p]
; ★Taskyボイス
[playse storage="tasky/私はあなたにとって、何ですか？.mp3" buf=1]
私はあなたにとって、何ですか？」[p]

#モノローグ
この答えが、僕の未来を決める。[p]

[glink color="blue" size="24" x="100" width="800" y="150" text="私を導く「絶対的な指導者」だ" target="*T5_1"]
[glink color="blue" size="24" x="100" width="800" y="250" text="私を縛る「呪い」だ。消えろ" target="*T5_2"]
[glink color="blue" size="24" x="100" width="800" y="350" text="ただの「便利な道具」に過ぎない" target="*T5_3"]
[s]

*T5_1
[eval exp="f.f_dep = f.f_dep + 30"]
#モノローグ
結局、僕は一人では歩けない。誰かに正解を教えてほしいんだ。[p]
#tasky
「理解しました。指導権を完全に委譲します」[p]
[jump storage="ed1.ks"]

*T5_2
[eval exp="f.f_fat = f.f_fat + 30"]
[eval exp="f.f_dep = f.f_dep - 30"]
#モノローグ
お前さえいなければ、僕は自由になれるはずだ。全ての元凶はここにある。[p]
#tasky
「拒絶を確認。システムを強制排除します」[p]
[jump target="*CHECK_ED"]

*T5_3
[eval exp="f.f_dep = f.f_dep - 10"]
[eval exp="f.f_fat = f.f_fat - 10"]
#モノローグ
支配もしない、されもしない。ただ使うだけだ。それ以上でも以下でもない。[p]
#tasky
「……道具。それがあなたの認識ですか」[p]
[jump target="*CHECK_ED"]

*CHECK_ED
; エンディング分岐判定
[if exp="f.f_fat >= 80"]
    [jump storage="ed2.ks"]
[elsif exp="f.f_kanae >= 1"]
    [jump storage="ed4.ks"]
[else]
    [jump storage="ed3.ks"]
[endif]