# language: ja
機能: 設定情報を取得する

  設定ファイルからSVNへのアクセス情報を取得する。
  引数でリビジョンとユーザの指定を受け取る。

  シナリオアウトライン:  正しい設定ファイルを読み取る
    前提 設定ファイルが存在すること
    もし SVN設定が正しい
    ならば SVN_URLが<URL>である
    かつ SVN_ACCOUNTが<ACCOUNT>である
    かつ SVN_PASSWORDが<PASSWORD>である

  サンプル: 設定ファイルが正しい時
    | URL | ACCOUNT | PASSWORD |
    | file:///aaa/svn/ | test | test |

  シナリオアウトライン:  不正な設定ファイルを読み取る
    前提 設定ファイルが存在すること
    もし SVN設定が正しくない
    ならば SVN_URLが<URL>である
    かつ SVN_ACCOUNTが<ACCOUNT>である
    かつ SVN_PASSWORDが<PASSWORD>である

  サンプル: 設定ファイルが正しい時
    | URL | ACCOUNT | PASSWORD |
    |  |  |  |
    |  | test | test |
    | file:///aaa/svn/ |  | test |
    | file:///aaa/svn/ | test |  |


  シナリオ: 設定ファイルが存在しない場合にエラーを表示する
    前提 設定ファイルが存在しないこと
    もし Configuireが設定ファイルを読む
    ならば エラーを表示する

