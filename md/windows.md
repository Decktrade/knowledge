# Windows コマンド・Office 関連

### ES(ファイルのハッシュ取得用アプリ)

[ダウンロード](https://www.voidtools.com/support/everything/command_line_interface/)
※実行ファイルをダウンロードして Path を通す必要あり

## Office

###Excel

####CSV 読込
[参考](https://global-wing.com/activity/csv_character_code.html)

1. CSV ファイルを「外部データの取り込み」-「テキストファイル」から開く
2. 「 テキストファイルウィザード 1/3」で文字コードを選択する(プレビューを見ながらやると簡単)
3. 以降のウィザードでカンマ区切りなど所定の条件を設定し、最後に「完了」クリック

#### Sharepoint ローカルにコピー

[参考](https://d-spport.jp/memorandum/sharepoint001/)

@import ".\external\Sharepoint_01.png"

##コマンド

###PowerShell

特定拡張子のファイルパス一覧(カレントディレクトリ以下)

```
Get-ChildItem -Recurse -Name -File -Filter *.ini > ls.ini.txt
```
