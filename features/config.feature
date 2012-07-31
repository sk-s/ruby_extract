# language: ja
機能: 設定情報を取得する

  設定ファイルからSVNへのアクセス情報を取得する。
  引数でリビジョンとユーザの指定を受け取る。

  シナリオ:  設定ファイルを読み取る
    サンプル 設定ファイル
    前提 存在する
    もし SVN設定が正しい
    ならば SVN_URLがfile:///testである
    かつ SVN_ACCOUNTがtestである
    かつ SVN_PASSWORDがtestである

