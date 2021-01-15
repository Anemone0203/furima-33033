# README


# DB 設計


## users table

| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| nickname           | string              | null: false             |
| e-mail             | string              | unique: true            |
| first-name         | string              | null: false             |
| last-name          | string              | null: false             |
| first-name kana    | string              | null: false             |
| last-name kana     | string              | null: false             |
| date               | integer             | null:false              |
| encrypted_password | string              | null:false              |

### Association

* has_many :item
* has_many :buy



## buy table

|Column         | Type       | Options             |
|---------------|------------|---------------------|
| user_id       | references | foreign_key: true   |
| item_id       | references | foreign_key: true   |

### Association

* has_one : address
* belongs_to :user
* belongs_to :item


## items table

| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| title                               | string     | null: false       |
| text                                | string     | null: false       |
| category_id                         | integer    | null: false       |
| condition_id                        | integer    | null: false       |
| delivery_id                         | integer    | null: false       |
| area_id                             | integer    | null: false       |
| date_id                             | integer    | null: false       |
| price                               | integer    | null: false       |

### Association

* belongs_to :user
* has_one :buy



## address table

| Column        | Type       | Options           |
|---------------|------------|-------------------|
| postal code   | integer    | null: false       |
| prefecture_id | integer    | null: false       |
| city          | string     | null: false       |
| address line1 | string     | null: false       |
| address line2 | string     | null: false       |
| phone number  | string     | null: false       |

### Association
- belongs_to : buy
