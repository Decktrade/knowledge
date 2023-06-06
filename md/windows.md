# Windows コマンド・Office 関連

### ES(ファイルのハッシュ取得用アプリ)

[ダウンロード](https://www.voidtools.com/support/everything/command_line_interface/)
※実行ファイルをダウンロードして Path を通す必要あり

## Office

### Excel
多機能アドイン
[詳細](https://confrage.jp/excel%E3%82%92%E8%B6%85%E4%BE%BF%E5%88%A9%E3%81%AB%E3%81%99%E3%82%8Brelaxtools-addin%E3%81%AE%E4%BD%BF%E3%81%84%E6%96%B9/)

[ExcelでDFD作成テンプレート](https://plus-pm.jp/blog/work-flow-excel-horizontal-swim-lane/#google_vignette)



#### CSV読込
[参考](https://global-wing.com/activity/csv_character_code.html)

1. CSVファイルを「外部データの取り込み」-「テキストファイル」から開く
2. 「 テキストファイルウィザード 1/3」で文字コードを選択する(プレビューを見ながらやると簡単)
3. 以降のウィザードでカンマ区切りなど所定の条件を設定し、最後に「完了」クリック

#### Sharepointローカルにコピー

[参考](https://d-spport.jp/memorandum/sharepoint001/)

@import ".\external\windows.md\Sharepoint_01.png"

## コマンド

### net useコマンド
ネットワークドライブを割り当てたり、削除したり
ドライブレターを指定しなくても動きます(資格情報の登録のみ)
割り当ての設定を削除してもキャッシュが残り、接続できるままです。
ログオフするとキャッシュが消えます。
→ログオフしないとキャッシュが消えません！

### PowerShell

特定拡張子のファイルパス一覧(カレントディレクトリ以下)

```
Get-ChildItem -Recurse -Name -File -Filter *.ini > ls.ini.txt
```

実行履歴ファイルのパス取得

```
(Get-PSReadlineOption).HistorySavePath
```

ping TTL指定オプション
ping -i [TTL] 送り先
※Linuxは -m [TTL]


### ハードディスクのパーティション作成

(windows11)
`コントロール パネル\すべてのコントロール パネル項目\Windows ツール`

コンピュータの管理
@import ".\external\windows.md\partition01.png"

ディスクの管理
@import ".\external\windows.md\partition02.png"

分割したいドライブを右クリックし、「ボリュームの縮小」を選択

@import ".\external\windows.md\partition03.png"

利用可能な縮小領域のボリュームを照会中(時間がちょっとかかる)

@import ".\external\windows.md\partition04.png"

縮小領域(分割するパーティション)のサイズ指定

@import ".\external\windows.md\partition05.png"

分割した領域にドライブを割り当て
割り当てた領域を右クリック → 「新しいシンプル ボリューム」

@import ".\external\windows.md\partition06.png"

ボリューム割り当てウィザード①

@import ".\external\windows.md\partition_W01.png"

ボリューム割り当てウィザード②

@import ".\external\windows.md\partition_W02.png"

ボリューム割り当てウィザード③

@import ".\external\windows.md\partition_W03.png"

ボリューム割り当てウィザード④

@import ".\external\windows.md\partition_W04.png"

ボリューム割り当てウィザード⑤

@import ".\external\windows.md\partition_W05.png"

