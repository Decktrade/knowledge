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
