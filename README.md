# README
# テーブル設計
 
## users テーブル
 
<<<<<<< Updated upstream
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
=======
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
>>>>>>> Stashed changes
 
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
<<<<<<< Updated upstream
- has_one :address
=======
>>>>>>> Stashed changes
 
## items テーブル
 
| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| item_name     | string     | null: false                    |
| item_text     | text       | null: false                    |
| category_id   | integer    | null: false                    |
| condition_id  | integer    | null: false                    |
| fee_id        | integer    | null: false                    |
| prefecture_id | integer    | null: false                    |
| day_id        | integer    | null: false                    |
| price         | integer    | null: false                    |
| user          | references | null: false, foreign_key: true |
 
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
| phone_number  | string     | null: false                    |
<<<<<<< Updated upstream
| order         | references | null: false, foreign_key: true |

 
### Association

- belongs_to :order
 
=======
| item          | references | null: false, foreign_key: true |

 
### Association
 
- belongs_to :item
>>>>>>> Stashed changes
