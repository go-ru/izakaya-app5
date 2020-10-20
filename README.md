#  アプリ名
## IzakayaApp


# 概要
#### このアプリはお店同士が食材をシェアし合うためのチャットアプリと、お店を利用するお客側が一つのサイトでまとめてお店の情報を見ることができるWedサイトを合わせたアプリです。


# 制作背景（意図）
#### 世界人口の9人に1人にあたる約8億2100万人の人たちが充分に食事ができず、餓死しています。一方、先進国である日本では消費されずに廃棄となる食品が多く、社会問題になっています。この「食品ロス」を解決できるアプリはないか考えた時に、このアプリを作ろうと思いました。
#### 私が注目したのが、飲食業界です。日本の食品ロスのほとんどが家庭で起きていますが、今コロナ不況で、飲食業界はとても打撃を受けています。私自身、飲食店でアルバイトをやった経験があり、食材の管理が非常に難しいということと、休日や、祝日でも客の動員が悪い時があり、食品が余ったりすることがあります。さらに、今はコロナで客足が遠のいて、食材の管理が非常に難しいと思います。
#### なので、駅周辺にあるお店などで余った食材や、足りない食材などをチャットでやりとりをして、食材をシェアし合えばこれらの問題を解決できると思いました。そして、お店視点だけではなく、お客視点にも立った時にお店情報を一つのサイトにまとめて見れるWedサイトもあったら便利だと思い、この２つを合わせました。

# 本番環境
<https://izakaya-app-29803.herokuapp.com/>

###### ログイン情報

* Eメール: usikizoku@0000
* パスワード: usikizoku0000

 # DEMO
## トップページ
[![Image from Gyazo](https://i.gyazo.com/8f507f9c8bd8f03422bf47a437b8785b.jpg)](https://gyazo.com/8f507f9c8bd8f03422bf47a437b8785b)
 * トップページはログインしていないユーザーも閲覧することができます。
 * 写真をクリックすると詳細ページに遷移します。
 * 並び順は、お店同士で食材のシェアをして、シェアの数が多い順番に並ぶようにしました。
 * ログインしたユーザーはお店情報を登録しないと、トップページにお店情報は表示されません。
#### 

## お店情報登録ページ
[![Image from Gyazo](https://i.gyazo.com/c1d42716f593801531bafaa58675c366.png)](https://gyazo.com/c1d42716f593801531bafaa58675c366)
 * 本人ユーザーじゃない限り、登録することができません。
 * すべての項目を記載しないと登録できません。
#### 

## 詳細ページ
[![Image from Gyazo](https://i.gyazo.com/dcaa187b6a4264a3799594bba7c6eafe.jpg)](https://gyazo.com/dcaa187b6a4264a3799594bba7c6eafe)
 * ログインしているユーザーと詳細ページのユーザーが一致していれば編集ページに遷移できます。
 * 本人ユーザーじゃない限り、編集をすることができません。
 * すべての項目を記載しないと登録できません。
#### 

## メッセージページ
[![Image from Gyazo](https://i.gyazo.com/9132c55ed3371063b755ecc5338b1a02.png)](https://gyazo.com/9132c55ed3371063b755ecc5338b1a02)
 * チャットページはログインしているユーザーしか見ることができません。
 * 左上がcurrent_userの名前で、その下にあるのが登録しているユーザー一覧になります。
 * ユーザーは届けて欲しい食材などをチャットページにて、メッセージで伝えます。
 * メッセージをクリックすると、コメントページに遷移することができます。
 * 食材が届けられたメッセージには「解決しました！」が表示されます。 

## コメントページ
[![Image from Gyazo](https://i.gyazo.com/b0d59e7aee4ed81233354a48558dfc31.png)](https://gyazo.com/b0d59e7aee4ed81233354a48558dfc31)
 * 遷移したページでメッセージに対してコメントすることができます。
 * 右上にある「商品を届ける」とクリックするとデリバリーページに遷移することができます。
 * 商品が届けられたコメントページには「商品を届ける」は表示されません。


## デリバリーページ
[![Image from Gyazo](https://i.gyazo.com/77e99658a3a1193156110fa8ebebf91e.png)](https://gyazo.com/77e99658a3a1193156110fa8ebebf91e)
 * 商品を届けるユーザーは届ける店名と食材と食材の写真を貼り付けて送信する。
 * すべての項目を記載しないと登録できません。
 
 # 工夫したポイント
 
 # 使用技術（開発環境）
 ## バックエンド
 Ruby,Ruby on Rails
 
 ## フロントエンド
 HTML・CSS,JavaScript
 
 ## データベース
 MySQL

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
