html5style
==========

HTML5のスタイルを作るに当たってテンプレートとなるもの


***

## nodebrewでGrunt環境構築

0. nodebrewを入れる前に
1. nodebrewのインストール
2. nodeをインストールする
3. 使うnodeのバージョンに切り替える
4. gruntを使う
5. rvmをインストール
6. rubyのインストール
7. rubyのライブラリをインストールする


### 0.nodebrewを入れる前に
nodejsが既にインストールされている場合は消そう！

#### 自分でコンパイルした場合

```
$ curl -o uninstall-node.sh  https://gist.github.com/nicerobot/2697848/raw/uninstall-node.sh
$ chmod u+x uninstall-node.sh
$ ./uninstall-node.sh
$ rm uninstall-node.sh
$ sudo rm -rf /usr/local/include/node
$ sudo rm -rf /usr/local/lib/dtrace
$ rm -rf ~/.node-gyp
$ rm -rf ~/.npm
$ rm -rf ~/.sourcemint
```

#### homebrewで入れた場合

```
$ brew uninstall node
```

### 1.nodebrewのインストール
nodejsはプロジェクトによって利用するバージョンが違うので切り替えられた方が便利ですが、そのままでは簡単に切り替えを行う事ができません。
そこで nodebrew を使って複数のバージョンのnodejsを使える環境を整えます

#### インストールのコマンドを実行する

```
$ curl -L git.io/nodebrew | perl - setup
```

#### .bashrcを編集する
最後の行に以下の行を追加する

```
export PATH=$HOME/.nodebrew/current/bin:$PATH
```


### 2.nodeをインストールする
コンパイルすると時間かかるしライブラリ足りないとインストールに失敗するのでinstall-binaryを使うとコケずに入りそう

```
$ nodebrew install-binary v0.10.25
```

### 3.nodeのバージョンを切り替える

```
$ nodebrew use v0.10.25
```

### 4.gruntを使う
プロジェクトフォルダに移動し以下のコマンドでプロジェクトフォルダに必要なパッケージをインストールする

```
$ npm install
```

### 5.rvmをインストール
ユーザホームでrvmをインストールします

```
$ cd ~
$ curl -L https://get.rvm.io | bash -s stable --autolibs=enable
```

### 6.rubyのインストール

```
$ rvm install 2.1.1
```

### 7.rubyのライブラリをインストールする
プロジェクトフォルダーに移動してcompassを入れます

```
$ bundle
```

### gruntを起動する

```
$ grunt
```

以上です


### 参考
* [node.jsのversionを管理するためにnodebrewを利用する - Qiita](http://qiita.com/sinmetal/items/154e81823f386279b33c)
* [Web制作で面倒な作業を自動化するビルドツール、Grunt v0.4 入門 | Web Design KOJIKA17](http://kojika17.com/2013/03/grunt.js-memo.html)
