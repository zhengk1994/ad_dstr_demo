# 第１正規形（1NF)

下記のテーブルを0NFから1NFにしてください。

二つの方法があるので、下のアプリに実用できる設計を当てはめてください。

* 個人招待状を作るため、手紙に名前と会社情報を一人ずつ記入するソフト。
* 会社情報で、電話番号と三名の取締役の名前を保存するソフト。

| comp_name | comp_tel      | exec_name              |
| --------- | --------      | --------               |
| ログリー  | 012-2222-4444 | 吉永,池永,岸本         |
| グーグル  | 023-3333-5555 | ページ,ブリン,ピチャイ |


# 第２正規形（2NF）

下記のテーブルを1NFから2NFにしてください。

下の条件で、テーブルの分け方を考えてください。

* メンバーの役目はチームによって変わります。
* メンバーの役目はどんなチームに入っても変わりません。

| team_id | team_name | role       | member_id    | member_name  |
| ------- | --------- | ---------- | ------------ | ------------ |
| 1       | UI        | manager    | 1            | 井口         |
| 1       | UI        | leader     | 2            | 落合         |
| 1       | UI        | member     | 3            | 細野         |
| 2       | Data      | manager    | 1            | 井口         |
