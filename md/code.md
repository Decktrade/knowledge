# VSCode あれこれ

## 拡張機能

### 拡張機能一覧のエクスポート

普通に
`code --list-extensions`

インポートできる形で

```ps1
$c = code --list-extensions; 
$c -replace '^(.+)$', 'code --install-extension $1' > code.txt; 
Start-Process .
```

## ショートカット

| コマンド      | 説明                              |
| :------------ | :-------------------------------- |
| Ctrl+D        | マルチカーソル                    |
| Ctrl+N        | ファイルの新規作成                |
| Ctrl+P        | ファイルを検索                    |
| Ctrl+Shift+F  | フォルダ/ワークスペース全体を検索 |
| Ctrl+Shift+H  | フォルダ/ワークスペース全体を置換 |
| Alt+↑/↓       | 行移動                            |
| Alt+Shift+↑/↓ | 行複製                            |
| Ctrl+B        | サイドバーの開閉                  |
| Ctrl+J        | ターミナルの開閉                  |
| Ctrl+,        | 設定ウィンドウの開閉              |

## ワークスペース

[参考 1](https://zenn.dev/one_dock/articles/b151b113515945)

####ワークスペースごとの設定
ワークスペースを作成すると、[ワークスペース名].code-workspace という名前のファイルが生成される。

**現在の設定 ↓**
@import "..\knowledge.code-workspace.original"

**1. folders タグ**
ワークスペースに含まれるフォルダを設定する。
name 要素を設定することで、vscode 内の表示名を編集できる。

**2. settings タグ**
ワークスペース用の*Setting.json*。

**3. extensions タグ**
ワークスペース内で推奨する拡張機能を設定する。

1.  recommendations 要素
    ユーザーがワークスペースを読み込んだ際に、ここに設定した拡張機能をインストールするダイアログが表示される。
