# mermaid

### 普通のグラフ

```mermaid
graph TD
  Mermaid --> Diagram
```

### シークエンスダイアグラム

```mermaid
sequenceDiagram
	participant A as User
	participant B as Server
	participant C as Database

A->>B: リクエスト送信
B->>C: データベース問い合わせ
C-->>B: 応答返却
B-->>A: レスポンス返却
```

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

### フローチャート

```mermaid
flowchart TD
    A[Christmas] -->|Get money| B(Go shopping)
    B --> C{Let me think}
		subgraph subgraph
    C -->|One| D["Laptop: Thinkpad\nTablet: iPad"]
    style D text-align:left
    C -->|Two| E[iPhone]
    C -->|Three| F[fa:fa-car Car]
		end
```

```mermaid

flowchart TD
    A --> B["Laptop: Thinkpad\nTablet&Tab;: iPad"] %% use TAB same as `&#9;`
    C --> D["Laptop: Thinkpad\nTablet : iPad"]     %% use space
    style B text-align:left
    style D text-align:left
```
