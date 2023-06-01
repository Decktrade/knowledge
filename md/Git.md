# Git

## コマンド集

### ローカルにリポジトリ作成

1. リモートリポジトリ用のフォルダを用意し、初期化
   ※リモートリポジトリ用のフォルダは名前に _.git_ をつけるのが慣例

```
mkdir gitdir.git
cd gitdir.git
git init --bare --shared
```

2. ローカルリポジトリ用のフォルダを用意し、初期化

```
mkdir gitdir
cd gitdir
git init
```

3. リポジトリ作成
   $ git remote add [追加するリモートリポジトリ名] [追加したいリポジトリ]
   実行すると、1 で作成したフォルダにリモートリポジトリ、2 で作成したフォルダにローカルリポジトリがそれぞれ作成される。

```
git remote add origin /path/to/gitdir.git
```

####最初のコミットは空コミットにしよう
[参考](https://qiita.com/NorsteinBekkler/items/b2418cd5e14a52189d19)
`git commit --allow-empty -m "first commit"`

### ブランチを削除
※現在のブランチは削除できないので、あらかじめ削除対象以外のブランチにチェックアウトする

ローカルのブランチを削除 `git branch -d <branch>`
例：`git branch -d fix/authentication`

リモートのブランチを削除 `git push <remote> --delete <branch>`
例：`git push origin --delete fix/authentication`

### 強制プッシュ
rebaseやresetを行ったあとなど、リモートブランチがローカルブランチより進んでいる状態のときには、通常のプッシュはエラーが出て実行できない。
そのため、強制的にプッシュを行う。
```
git push -f <remote> <branch>
git push --force <remote> <branch>
```
(上二つは同義)

※複数人での開発の際は、`--force-with-lease`の使用が推奨されている。
[参考](https://www-creators.com/archives/5168)

## Github

パスワード認証は廃止されました。
[アクセストークンを使った接続方法](https://techtekulife.jp/github_rm_passauth/)

[Github に作成したリポジトリのURL取得](https://zenn.dev/rata/articles/78736aa2f5736e)

初期設定

cd [ローカルリポジトリを作成するパス]

```
git init
echo "# knowledge" >> README.md
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin [Githubに取得したリポジトリのURL取得]
git push -u origin main
```


## ブランチ構成モデル
[A successful Git branching model 日訳](https://qiita.com/homhom44/items/9f13c646fa2619ae63d0)

### ブランチ一覧
- masterブランチ
ブランチ元：なし
マージ先：なし
ブランチ名ルール：master
- developブランチ
ブランチ元：masterブランチ
マージ先：masterブランチ
ブランチ名ルール：develop
- 機能ブランチ(feature)
ブランチ元：developブランチ
マージ先：developブランチ
ブランチ名ルール：master, develop, release-?, or hotfix-? 以外
- リリースブランチ(Release)
ブランチ元：developブランチ
マージ先：developブランチ と masterブランチ
ブランチ名ルール：release-XX(XXはバージョンを表す)
- Hotfixブランチ
ブランチ元：masterブランチ
マージ先：developブランチ と masterブランチ
ブランチ名ルール：hotfix-XX(XXはバージョンを表す)

