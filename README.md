# README
# テーブル設計
 
## users テーブル
 
| Column              | Type   | Options                  |
| ------------------- | ------ | ------------------------ |
| nickname            | string | null: false              |
| email               | string | null: false, unique:true |
| encrypted_password  | string | null: false              |
| family_name         | string | null: false              | 
| first_name          | string | null: false              |
| family_name_kana    | string | null: false              |
| first_name_kana     | string | null: false              |
| date_of_birth       | date   | null: false              |
 
### Association
 
- has_many :items
- has_many :orders

## orders テーブル
 
| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| user          | references | null: false, foreign_key: true |
| item          | references | null: false, foreign_key: true |

### Association
 
- belongs_to :user
- belongs_to :item
- has_one :address
 
## items テーブル
 
| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| item_name        | string     | null: false                    |
| item_text        | text       | null: false                    |
| category_id      | integer    | null: false                    |
| condition_id     | integer    | null: false                    |
| fee_id           | integer    | null: false                    |
| prefecture_id    | integer    | null: false                    |
| scheduled_day_id | integer    | null: false                    |
| price            | integer    | null: false                    |
| user             | references | null: false, foreign_key: true |
 
### Association
 
- belongs_to :user
- has_one :order

 
## addresses テーブル
 
| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| post_code     | string     | null: false                    |
| prefecture_id | integer    | null: false                    |
| city          | string     | null: false                    |
| street_number | string     | null: false                    |
| building      | string     |                                |
| phone_number  | integer    | null: false                    |
| order         | references | null: false, foreign_key: true |

 
### Association

- belongs_to :order
 