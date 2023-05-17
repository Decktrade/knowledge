#Git

###ローカルにリポジトリ作成

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
