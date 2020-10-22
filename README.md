#  アプリ名
## IzakayaApp


# 概要
#### この「IzakayaApp」は、居酒屋などのお店同士が食材をシェアし合うためのチャットと、登録しているお店をお客様が閲覧できるWedサイトを合わせたアプリケーションです。



# 制作背景（意図）
#### 世界人口の9人に1人にあたる約8億人の人たちが充分に食事ができず、餓死していいます。その一方で、先進国である日本では消費されずに廃棄となる食品が多く、社会問題となっています。この「食品ロス」の解決に寄与するため、このアプリを作ろうと考えました。
#### まず、私が注目したのが飲食業界です。現在のコロナ禍で、飲食業界はとても打撃を受けています。私自身、飲食店でのアルバイト経験があり、お客様の増減を通した食材管理の難しさや、食材廃棄の量の多さに直面しておりました。さらに、現在のコロナ問題で客足が遠のき、食材の管理はますます困難を極めます。
#### もし、駅周辺にあるお店で余った食材や、足りない食材などをチャットでやりとりをして、食材をシェアし合うことができれば、これらの問題を解決できるのではないかと思いました。さらに、登録しているお店をお客様がWedサイトとして閲覧できるように実装しました。食品ロスの回避率が高いお店を上位を持ってくることで、社会問題である食品ロスの解決を意識したWedサイトを目指しました。


# 本番環境
<https://izakaya-app-29803.herokuapp.com/>

###### ログイン情報

* Eメール: usikizoku@1111
* パスワード: usikizoku1111

 # DEMO
## トップページ
[![Image from Gyazo](https://i.gyazo.com/8f507f9c8bd8f03422bf47a437b8785b.jpg)](https://gyazo.com/8f507f9c8bd8f03422bf47a437b8785b)
 * トップページはログインしていないユーザーも閲覧することができます。
 * 写真をクリックすると詳細ページに遷移します。
 * 並び順は、お店同士で食材のシェアをして、シェアの数が多い順番に並ぶようにしました。
 * ログインしたユーザーはお店情報を登録しないと、トップページにお店情報は表示されません。

## お店情報登録ページ
[![Image from Gyazo](https://i.gyazo.com/c1d42716f593801531bafaa58675c366.png)](https://gyazo.com/c1d42716f593801531bafaa58675c366)
 * 本人ユーザーじゃない限り、登録することができません。
 * すべての項目を記載しないと登録できません。

## 詳細ページ
[![Image from Gyazo](https://i.gyazo.com/dcaa187b6a4264a3799594bba7c6eafe.jpg)](https://gyazo.com/dcaa187b6a4264a3799594bba7c6eafe)
 * ログインしているユーザーと詳細ページのユーザーが一致していれば編集ページに遷移できます。
 * 本人ユーザーじゃない限り、編集をすることができません。
 * すべての項目を記載しないと登録できません。


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
 Wedサイトの並び順を、食品ロスに貢献した数が多い順番に表示されるよう実装したことです。
そのようにすることで、食材を届ける手間がある中でも、お店が積極的に参加したくなるような、お店側にもメリットがある仕組み作りを意識しました。お店側の、面倒だから参加したくないという気持ちを、サイトの上位に載りたいという気持ちにシフトさせることで、結果的に食品ロス問題の改善へつなげていきたいと考えました。

 
 # 今後実装したい機能
 * 駅ごとにグループを作成し、お客様は駅を選択してWedサイトを閲覧できるようにする。
 * トップページの並び順が上位にあるお店はクーポン券などを使えるようにして食品ロスに貢献したお店は有利な条件にする。
 * お店の詳細ページでお店の地図情報とURLは追加する。
 * お店の写真を複数枚投稿できるようにする。
 
 # 課題
 * 今のままでは、お店だけではなく一般のユーザーも登録できてしまうので、新規登録に店名、メールアドレス、パスワードの他に、運営側からの会員番号みたいなものを発行してそれがないと、新規登録できないようにする
 * それぞれのお店が同じ食材を使っていないので、シェアしても味が変わったり、いつもの料理を出すことが困難になる。この問題に対しての解決策として、食材の仕入れを同じ農家や漁師にする統一する。そうすることによって、同じ食材を使っているからさきほどの問題が解決されるし、生産者側からしても、継続的に仕入れてくれるお店があるので安定する。
 * 今の段階では食材を届けたことを証明するものがなく、不正をされることもあるので、届けられた側からもなんらかのリアクションがあるようにしたい
 
 
 # 使用技術（開発環境）
 ## バックエンド
 Ruby, Ruby on Rails
 
 ## フロントエンド
 HTML・CSS, JavaScript
 
 ## データベース
 MySQL
 
 ## Wedサーバー（本番環境）
 
 ## アプリケーションサーバー（本番環境）
 
 ## ソース管理
 GitHub, GitHubDesktop
 
 ## テスト
 RSpec
 
 ## エディタ
 VSCode
 
# ER図
[![Image from Gyazo](https://i.gyazo.com/f7218ea54041cf1092b053efcebcf1ab.png)](https://gyazo.com/f7218ea54041cf1092b053efcebcf1ab)



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
