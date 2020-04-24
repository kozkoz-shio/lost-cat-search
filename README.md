# README

## 迷子猫検索用アプリ
主要機能（予定含）
* 画像投稿機能
* GoogleMap API利用による地図の範囲指定機能
* ポスター簡易作成機能 

##  開発環境
* Ruby
* VScode


# lost cat search DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false, unique: true, index: true|
|password|string|null: false|
### Association
- has_many :maigos

## maigoテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|image|string|null: false|
|age|integer|null: false|
|sex|string|null: false|
|address|string|null: false|
|content|string|null: false|
|user_id|integer|null: false|
### Association
- belongs_to :user

## commentテーブル
|Column|Type|Options|
|------|----|-------|
|text|string|null: false|
|user_id|integer|null: false|
|maigo_id|integer|null: false|
### Association
- belongs_to :user
- belongs_to :maigo