# README


# DB 設計

## users table

| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| nickname           |                     |                         |
| e-mail             | string              | unique: true            |
| first-name         | string              | null: false             |
| last-name          | string              | null: false             |
| first-name kana    | string              | null: false             |
| last-name kana     | string              | null: false             |
| year of birth_id   | integer             | null:false              |
| month of birth_id  | integer             | null:false              |
| date of birth_id   | integer             | null:false              |
| encrypted_password | integer             | null:false              |

### Association

* has_many :item



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


## address table

| Column        | Type       | Options           |
|---------------|------------|-------------------|
| postal code   | integer    | null: false       |
| prefecture_id | integer    | null: false       |
| city          | integer    | null: false       |
| address line1 | integer    | null: false       |
| address line2 | integer    | null: false       |
| phone number  | integer    | null: false       |

### Association
- belongs_to : buy


## buy table

|Column         | Type       | Options             |
|---------------|------------|---------------------|
| user          | references | foreign_key: true   |
| item          | references | foreign_key: true   |
| address       | references | foreign_key: true   |

### Association

- has_one : address






