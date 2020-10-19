# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# テーブル設計

## users テーブル

| Column     | Type    | Options     |
| -----------| ------- | ----------- |
| store_name | string  | null: false |
| email      | string  | null: false |
| password   | string  | null: false |



### Association

- has_many :messages
- has_many :delivers
- has_many :comments
- has_one :store

## messages テーブル

| Column  | Type        | Options     |
| --------| ----------- | ----------- |
| request | text        | null: false |
|  user   | references  | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments
- has_one :deliver

## delivers テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
|store_name |  string    | null: false                    |
| product   |  string    | null: false                    |
|  image    |  integer   | null: false                    |
|  user     | references | null: false, foreign_key: true |
| message   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :message


## comments テーブル

| Column  | Type       | Options                        |
| --------| ---------- | ------------------------------ |
|  text   |  text      | null: false                    |
|  user   | references | null: false, foreign_key: true |
| message | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :message

## store テーブル

| Column     | Type    | Options     |
| ---------- | --------| ------------|
| address    | string  | null: false |
| tel_number | string  | null: false |
| genre      | integer | null: false |
| hour       | integer | null: false |
| budget     | integer | null: false |
| user    | references | null: false, foreign_key: true |


### Association

- belongs_to :user