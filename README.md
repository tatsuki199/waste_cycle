# README

# テーブル設計

## users テーブル

|Column            |Type   |Options    |
|------------------|-------|-----------|
|name              |string |null:false |
|email             |string |null:false, unique: true |
|encrypted_password|string |null:false |
|birthday          |date   |null:false |

### Association

- has_many :posts
- has_many :comments
- has_many :favorites
- has_many :follows
- has_many :purchases

## posts テーブル

|Column          |Type   |Options     |
|----------------|-------|------------|
|title           |string |null: false |
|text            |text   |null: false |
|category_id     |integer|null: false |
|selling_price   |integer|null: false |
|expiration_date |string |null: false |
|region_id       |integer|null: false |
|user            |references|null:false, foreign_key: true |

### Association

- belongs_to :user
- has_one :purchase
## comments テーブル

|Column|Type      |Options                       |
|------|----------|------------------------------|
|text  |text      |null: false |
|user  |references|null:false, foreign_key: true |
|post  |references|null:false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :post

## favorites テーブル

|Column|Type      |Options                       |
|------|----------|------------------------------|
|user  |references|null:false, foreign_key: true |
|post  |references|null:false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item

## follows テーブル

|Column|Type      |Options                       |
|------|----------|------------------------------|
|follower_id|||
|followee_id|||
|user  |references|null:false, foreign_key: true |


### Association

- belongs_to :user


## purchases テーブル

|Column|Type      |Options                       |
|------|----------|------------------------------|
|user  |references|null:false, foreign_key: true |
|post  |references|null:false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :post

## shipping_addresses テーブル

|Column |Type      |Options                      |
|----------------|----------|-----------------------------|
|post_code       |string    |null:false                   |
|region_id       |integer   |null:false                   |
|municipalities  |string    |null:false                   |
|street_address  |string    |null:false                   |
|building_name   |string    |                             |
|telephone_number|string    |null:false                   |
|purchase        |references|null:false,foreign_key: true |

### Association

- belongs_to :purchase

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

<!-- |card_number   |string    |null:false                    |
|date_of_expiry|string    |null:false                    |
|security_code |string    |null:false                    | -->