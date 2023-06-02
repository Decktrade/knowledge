# mermaid

### ER 図

```mermaid
erDiagram
	User ||--o{ Tweet : posts
	User ||--o{ Follows : follows
	User {
		int user_id PK
		string name
		string handle
		string bio
		date joined
		string location
		string website
		string profile_picture
	}
	Tweet {
		int tweet_id PK
		string content
		date timestamp
		int likes
		int retweets
	}
```

### シークエンスダイアグラム

#### 開始～マッチング成立まで
```mermaid
sequenceDiagram
	Actor User_A as UserA
	Actor User_B as UserB
	participant GroupChat as GroupChat
	participant BOT as BOT
	participant Database as Database

User_A->>GroupChat: 起動コマンド
GroupChat->>BOT: BOT起動
BOT-->>Database: ユーザー照会
Database-->>BOT: ユーザー情報
BOT->>GroupChat: マッチング待機
User_B->>GroupChat: 起動コマンド
GroupChat->>BOT: BOT起動
BOT-->>Database: ユーザー照会
Database-->>BOT: ユーザー情報
BOT->>GroupChat: マッチング成立
BOT->>User_A: デッキ構築ウィザード
BOT->>User_B: デッキ構築ウィザード
```

### デッキ構築ウィザード
```mermaid
sequenceDiagram
	participant User as User
	participant GroupChat as GroupChat
	participant BOT as BOT
	participant Database as Database

BOT->>User: 起動メッセージ
loop 3回
	BOT->>Database: ランダムなカードリクエスト
	Database-->>BOT: ランダムなカードレスポンス
	BOT-->>User: ランダムなカード提示
	User->>BOT: カード選択
	BOT-->>User: カード選択確認
	User->>BOT: カード選択確認レスポンス
	BOT->>BOT: カード選択結果保存
end
BOT-->>User: デッキ表示
```

#### キャラピック用SQL
~~~SQL
SELECT
*
FROM
M_CARDS
WHERE
CARD_ID in (RN1,RN2,RN3)
~~~
RN: Random Number

#### キャラピック用乱数生成

~~~Python
from random import randint 

# max:乱数の最大値(int)
# exclude_list: 除外する値のリスト(各要素はint)
def Random_Pick(max, exclude_list){
	n = randint(0,max)
	# 無限ループ対策
	if(max <= len(exclude_list)) {
		return -1
	}
	# 生成した乱数が除外リストに含まれていた場合、やりなおし
	if (n in exclude_list) {
		return Random_Pick(max, exclide_list)
	} else {
		return n
	}
}
~~~

#### pythonでSQL実行
~~~python
import mysql.connector

# データベースに接続
connection = mysql.connector.connect(host='localhost',
                                     user='root',
                                     password='MySQLのパスワード',
                                     database='myDB')

sql = "SELECT `id`, `password` FROM `users`"
with connection.cursor() as cursor:
        # データ読み込み
        cursor.execute(sql)
        result = cursor.fetchall()
        print(result)
				# result
				'''
				[
					{‘id’: 1, ‘password’: ‘very-secret1’}, 
					{‘id’: 2, ‘password’: ‘very-secret2’}, 
					{‘id’: 3, ‘password’: ‘very-secret3’}, 
					{‘id’: 4, ‘password’: ‘very-secret4’}, 
					{‘id’: 5, ‘password’: ‘very-secret5’}
				]
				'''
 
# 終了処理
cursor.close()
~~~