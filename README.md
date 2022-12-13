# README
# テーブル設計
 
## users テーブル
 
| Column              | Type   | Options     |
| ------------------- | ------ | ----------- |
| nickname            | string | null: false |
| email               | string | null: false |
| encrypted_password  | string | null: false |
| family_name         | string | null: false |
| first_name          | string | null: false |
| family_name_kana    | string | null: false |
| first_name_kana     | string | null: false |
| date_of_birth       | date   | null: false |
 
### Association
 
- has_many :items
- has_many :orders
 
## items テーブル
 
| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| item_name      | string     | null: false                    |
| item_text      | text       | null: false                    |
| category       | string     | null: false                    |
| condition      | string     | null: false                    |
| delivery_fee   | integer    | null: false                    |
| delivery_erea  | string     | null: false                    |
| delivery_days  | string     | null: false                    |
| price          | integer    | null: false                    |
| margin         | integer    | null: false                    |
| benefit        | integer    | null: false                    |
| user           | references | null: false, foreign_key: true |
 
### Association
 
- belongs_to :user
- has_one :order
 
## orders テーブル
 
| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| post_code     | string     | null: false                    |
| prefecture    | string     | null: false                    |
| city          | string     | null: false                    |
| street_number | string     | null: false                    |
| building      | string     | null: false                    |
| phone_number  | string     | null: false                    |
| user          | references | null: false, foreign_key: true |
| item          | references | null: false, foreign_key: true |
 
### Association
 
- belongs_to :user
- belongs_to :item
