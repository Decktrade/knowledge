- [Markdown 記法一覧](#markdown-記法一覧)
  - [外部 CSS](#外部-css)
    - [箇条書き](#箇条書き)
    - [罫線](#罫線)
    - [修飾あれこれ](#修飾あれこれ)
    - [リンク](#リンク)
    - [ソースコード ①](#ソースコード-)
    - [ソースコード ② 言語を指定](#ソースコード--言語を指定)
    - [ソースコード ③ インデント](#ソースコード--インデント)
    - [表](#表)
    - [画像](#画像)
    - [外部ファイルのインポート](#外部ファイルのインポート)

# Markdown 記法一覧

## 外部 CSS

@import ".\external\test.md\test.css"

### 箇条書き

2. あ 3. い
3. あ
4. あ

   class Hoge
   def hoge
   print 'hoge'
   end
   end

### 罫線

---

### 修飾あれこれ

インストールコマンドは `gem install hoge` です

normal _italic_ normal
normal _italic_ normal

normal **bold** normal
normal **bold** normal

normal **_bold_** normal
normal **_bold_** normal

~~取り消し線~~

### リンク

[Google 先生](https://www.google.co.jp/)

[google]: https://www.google.co.jp/

[こっちから google][google]
その他の文章
[こっちからも google][google]

https://www.google.co.jp/

### ソースコード ①

```
　class Hoge
　  def hoge
　    print 'hoge'
　  end
　end
```

### ソースコード ② 言語を指定

```ruby {cmd}
class Hoge
  def hoge
    print 'hoge'
  end
end
```

### ソースコード ③ インデント

    class Hoge
      def hoge
        print 'hoge'
      end
    end

### 表

| header1    |     header2 |   header3    |
| :--------- | ----------: | :----------: |
| align left | align right | align center |
| a          |           b |      c       |

### 画像

![エビフライトライアングル](http://i.imgur.com/Jjwsc.jpg "サンプル")

※ローカルファイルはだめっぽい
→ 外部ファイルのインポート を使用
![エビフライトライアングル](.\external\test.md\ebihurai.png "サンプル")

### 外部ファイルのインポート

画像ファイル
@import ".\external\test.md\ebihurai.png"

---

csv ファイル
@import ".\external\test.md\test.csv"

---

html ファイル
@import ".\external\test.md\test.html"

---

jsonファイル
@import ".\external\test.md\test.json"

---

md ファイル
@import ".\external\test.md\test.md"

---

ソースコード(js)
※プレビューされない
@import ".\external\test.md\test.js"

---

ソースコード(Python)
※プレビューされる
@import ".\external\test.md\test.py" {cmd}
