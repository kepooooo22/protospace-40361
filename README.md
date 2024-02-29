#テーブル設計

## usersテーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| email              | string     | not null, unique: true         |
| encrypted_password | string     | not null                       |
| name               | string     | not null                       |
| profile            | text       | not null                       |
| occupation         | text       | not null                       |
| position           | text       | not null                       |

### Association
- has_many :prototypes
- has_many :comments

## prototypesテーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| title       | string     | not null                       |
| catch_copy  | text       | not null                       |
| concept     | text       | not null                       |
| user        | references | not null, foreign_key: true    |

### Association
- belongs_to :user
- has_many :comments

## commentsテーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| content     | text       | not null                       |
| prototype   | references | not null, foreign_key: true    |
| user        | references | not null, foreign_key: true    |

### Association
- belongs_to :user
- belongs_to :prototype

