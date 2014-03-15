#コンフリクトを直そう

優さん、ブランチを develop に変更してください。以下がその手続きです。

	$ git pull 	
	$ git checkout develop
	$ git branch

ここまで叩いて、下記のように表示されることを確認してください。

	* develop
	  master

git branch とはブランチを確認するコマンドです。develop にアスタリスクがついていれば、今優さんのローカルは develop というブランチになっているということになります。

git checkout とは作業ブランチを変更するコマンドです。ここで一旦 index.html を確認してください。中身がずいぶん変わっていると思います。僕がやっておきました。

多くの場合、master ブランチを作業ブランチに取り込むことはしません。なぜなら master とはユーザーが見るもの（＝完成品）であり、そこに作業途中のデータが入ることはおかしいからです。

ですが、すでに master にコミットされてた変更（優さんのコミット）を作業ブランチ（develop）に取り込まないと、以後の作業に整合性がとれなくなりますので develop 上で master を取り込みます。

ここで次の git コマンドを叩いてください。

	$ git merge master

すると以下のメッセージが表示されるはずです。

	CONFLICT (content): Merge conflict in index.html
	Automatic merge failed; fix conflicts and then commit the result.

出ました。これがコンフリクトです。「index.html でコンフリクトしている。自動マージに失敗したのでこれをfixし、それをコミットしろ」とのことです。コンフリクトが起こる仕組みは先日お話したとおりです。

エディタで index.html を見てください。

	<<<<<<< HEAD
これが5行目にすぐ見つけられると思います。さらにファイルの後ろのほうを見ると

	=======
	<title>HTML5 Styles</title>
	</head>
	<body>
    	<h1>HTML5 Style</h1>
	    <a href="#">link</a>
	>>>>>>> master
	</body>
	</html>

となっていますね。「=======」を境に、上が HEAD （develop ブランチのリモートの状態）で下がローカル（今回の場合、master からマージした内容）となります。

コンフリクトを解消するだけなら、「<<<<<<< HEAD」「=======」「>>>>>>> master」の３行を削除すれば済みます。が、title タグや body タグが重複してしまうので、HTML を適当に編集してください。僕が書いたいろいろなやつを消すのもよし、残すのもよし、です。

編集が済んだら、develop へコミットして push しましょう。

	$ git commit -a  ←vimが立ち上がり Merge〜 みたいなメッセージが出ますので、:wq と打って[enter]を押してください。
	$ git push origin develop
	
さて、前述のとおり、master ブランチはユーザーが見る完成品のソースなので、master で随時変更を加えていくみたいなやり方は望ましくありません。現在、develop というブランチで作業をしている状態なので、このまま develop で編集を続けるようにしてください。

ユーザーが見る完成品とまではいかなくても、ある程度公開できる状態になった時に develop を master へマージしていきます。（たぶんそれはもうちょっと先の話です）	