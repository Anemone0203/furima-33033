# README


# DB 設計


## users table

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| nickname           | string              | null: false, unique: true |
| email              | string              | null: false, unique: true |
| first_name         | string              | null: false               |
| last_name          | string              | null: false               |
| first_name kana    | string              | null: false               |
| last_name kana     | string              | null: false               |
| birth              | date                | null: false               |
| encrypted_password | string              | null: false               |

### Association

* has_many :items
* has_many :buys



## buy table

|Column         | Type       | Options             |
|---------------|------------|---------------------|
| user          | references | foreign_key: true   |
| item          | references | foreign_key: true   |
| address       | references | foreign_key: true   |

### Association

* has_one : address
* belongs_to :user
* belongs_to :item


## items table

| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| title                               | string     | null: false       |
| text                                | text       | null: false       |
| category_id                         | integer    | null: false       |
| condition_id                        | integer    | null: false       |
| delivery_id                         | integer    | null: false       |
| area_id                             | integer    | null: false       |
| date_id                             | integer    | null: false       |
| price                               | integer    | null: false       |
| users                               | references | foreign_key: true |

### Association

* belongs_to :user
* has_one :buy



## address table

| Column        | Type       | Options           |
|---------------|------------|-------------------|
| postal code   | string     | null: false       |
| prefecture_id | integer    | null: false       |
| city          | string     | null: false       |
| address_line1 | string     | null: false       |
| address_line2 | string     |                   |
| phone_number  | string     | null: false       |
| buy           | references | foreign_key :true |

### Association
- belongs_to : buy
