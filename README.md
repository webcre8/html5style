# html5style

Web サイトのスタイルを作るに当たってテンプレートとなるものです。

## 目的

Web サイトを作るにあたって、設計段階では見落としていたりあるはずなのに思いつかなかった要素のスタイルを確認し、スタイルの制作漏れを防ぐためのドキュメントです。

最終的にはスタイルガイドを作る際の HTML を生成するサービスになることを目指します。

## モジュールのルール

モジュールでは、よくある Web サイトのモジュールを作っていきます。ブランチを切ってモジュールごとにプルリクする形でモジュールを追加していく感じです。

## 現在求めているモジュール

以下の通りにディレクトリを作成します。ディレクトリ名はここで定義したものを使ってください。

あと、頻繁に修正(追加)が加わる気がするのでこれは GitHub ページ上で編集するべきかもと思っています。

最初は element から埋めていきましょう、その間に module についてちょっと議論したいです。

- element
  - block(Sections と Grouping content のうち、抽象度の低いもの)
    - h1(見出し、h2〜h6 も同じページで扱う)
    - p(段落)
    - hr(水平線)
    - pre(整形テキスト)
    - blockquote(引用ブロック、cite を含む)
    - address(連絡先情報)
    - ol(序列リスト、li を含む)
    - ul(非序列リスト、li を含む)
    - dl(対応リスト、dt、dd を含む)
    - figure(補足コンテンツ、figcaption を含む)
    - table(テーブル、tr、th、td、thead、tfoot、tbody、caption、col、colgroup を含む)
  - phrase(Text-level semantics)
    - b(役割の異なるフレーズ)
    - i(意味の異なるフレーズ)
    - a(ハイパーリンク)
    - em(語気を強めるフレーズ)
    - strong(重要性の高いフレーズ)
    - small(注釈)
    - s(打ち消し線のフレーズ)
    - cite(題名のフレーズ)
    - q(引用のフレーズ)
    - dfn(定義のフレーズ)
    - abbr(略称のフレーズ)
    - time(時刻のフレーズ)
    - code(コードのフレーズ)
    - var(変数のフレーズ)
    - samp(出力結果のフレーズ)
    - kbd(キーボード入力のフレーズ)
    - sup(上付き文字のフレーズ)
    - sub(下付き文字のフレーズ)
    - u(スペルミスや特殊な扱いのフレーズ)
    - mark(目印のついたフレーズ)
    - ruby(ルビ付きのフレーズ、rb、rp、rt、rtc を含む)
    - bdo(文書方向に関するフレーズ、bdi も同じページで扱う)
    - img(画像)
  - edits(Edits)
    - ins(挿入コンテンツ)
    - del(削除コンテンツ)
  - form(Forms)
    - fieldset(フォームのグルーピング、legend を含む)
    - input(入力項目、label、datalist を含む)
    - select(選択入力、optgroup、option を含む)
    - button(ボタン)
    - textarea(文章入力)
    - keygen(暗号選択入力)
    - output(出力情報)
    - progress(進捗状況)
    - meter(割合を表す)
- module(複数の要素を複合したよくあるパターン)
  - interface(Web サイトの機能的な UI)
    - logo(サイトロゴ)
    - globalnavi(グローバルナビゲーション)
    - pager(ページャ)
    - topicpath(パンくずリスト)
    - socialbutton(ソーシャルボタン)
    - comment(コメント)
    - tooltip(ツールチップ)
    - listmenu(リストメニュー)
    - button(ボタン)
    - tab(タブナビゲーション)
    - search(検索フォーム)
    - login(ログインフォーム)
    - signup(登録フォーム)
    - drawer(ドロワー)
    - header(サイトヘッダー)
    - footer(サイトフッター)
    - splash(スプラッシュページ)
    - toolbar(ツールバー)
    - carrousel(カルーセル)
    - calendar(カレンダー)
  - contents(Web サイトのコンテンツの表現)
    - timeline(タイムライン)
    - personalicon(人物のアイコン)
    - summary(サムネイル付きブロック)
    - enumerate(羅列されたリスト)
    - dialogue(会話文)
    - ad(広告)
    - section-header(ヘッダー情報ブロック)
    - section-footer(フッター情報ブロック)

## 意識すること

- できる限り構造化データ(Microdata/schema.org)とか WAI-ARIA とか盛り込む
- 複数の構文パターンを用意する
- モジュール内の構文パターンにはそれぞれ名前を付け、それをクラス名にする

## 意識しないこと

- 現状 Web Components は意識しない、というかこれがコンポーネントの素材になるかも
