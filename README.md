# README
## アプリ名
RUNDOWN

## https://rundowndemo.herokuapp.com/
- Test ID: test02@gmail.com
- Test Pass: kkkkkk

## 概要
学習用のYouTube動画を、メモと一緒に投稿・管理・共有できます。
YouTubeの動画埋め込み機能（iframe）を応用し、URLを貼り付けるだけで簡単に投稿できるようにしました。
投稿時に動画の再生開始時間を設定することが可能です。
 
## 制作背景
私はプログラミング学習にYouTube動画を参考にしていました。復習のため同じ動画を何度も見返すことがありましたが、毎回もう一度見たい部分を探すのは非常に手間でした。そのため、自分の見たい部分から再生できるような機能が欲しいと思いました。
そこでiframeの技術を応用し、YouTube動画のURLを貼り付けるだけで投稿ができ、その際に再生開始時間を設定できるアプリを制作しました。学習効率を高めるため、投稿時に学習メモを格納できる機能や、投稿を他のユーザーと共有する機能も備えています。

## 使用技術
Haml・SCSS ・Ruby・Ruby on Rails・jQuery・SQL・unicorn・nginx・AWS・Git・ GitHub
  
## 必要要件
- Mac OS（推奨）
- 最新のGoogle Chrome
 
## 使い方
1. YouTube動画のURLをコピーして入力フォームに貼り付けます。
- [x] URLの記述形式にご注意ください 例：https://www.youtube.com/watch?v=EXAMPLE
2. 動画の再生開始時間を指定します。
3. メモを記載します。
4. 投稿ボタンを押します。

## 実装予定の内容
- インクリメンタルサーチ
- いいね機能

## DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|e-mail|string|null: false, unique: true, default: ""|
|encrypted_password|string|null: false, default: ""|
## Association
- has_many :posts
- has_many :comments

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|text|string|null: false|
|content|string|null: false|
|start|integer|null: false|
|radio|string|null: false|
|title|string|null: false|
|user_id|references|foreign_key: true, null: false|
## Association
- belongs_to :user
- has_many :comments 

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|string|null: false|
|user_id|references|foreign_key: true, null: false|
|post_id|references|foreign_key: true, null: false|
## Association
- belongs_to :post
- belongs_to :user 
