## Concept_izawaの概要
当日発注、翌朝出荷の現場で  
concept(生産側)は当日の必要生産分が一目でわかる  
井澤金属(発注側)は製品の在庫状況が一目でわかる,concept側への生産指示も入力するだけ

## URL
https://concept-izawa.herokuapp.com/

## Basic認証
ID:admin  
pass:2222

## 利用方法
#### concept(生産側)
1.CONCEPTページで当日の必要生産分を確認  
2.生産数を入力、達成されたらリストから品番が消える
#### 井澤金属(発注側)
1.客先からの注文数を入力

## アプリケーションを作成した背景
電話とFAX、作業員がPC利用をほとんどできない環境で  
毎朝、井澤金属さんと在庫の確認、生産の可否を電話でやりとりしていました。  
データが記録に残らない電話での毎朝のやりとり時間を無くしたく作成しました。

## 要件定義

## データベース設計

https://gyazo.com/da1438a63daf4f65298b040b175d8bf8

### wiresテーブル
| Column    | Type    | Options                             |
| ----------| --------| ------------------------------------|
| hinban    | string  | null: false                         |
| chumon    | integer | null: false, default: 0             |
| zaiko     | integer | null: false, default: 0             |
| chumonlog | integer | null: false, default: 0             |
| zaikolog  | integer | null: false, default: 0             |
| kei_id    | integer | null: false                         |
| iro_id    | integer | null: false                         |
| nagasa    | integer | null: false, precision: 6, scale: 2 |
| tanka     | float   | null: false, precision: 6, scale: 2 |

## 画面遷移図

https://gyazo.com/b55d2b75e9848431b87f174b11b6ec14

## 開発環境
- フロントエンド  
HTML,CSS,JavaScript  
- バックエンド  
Ruby on Rails(Ruby)  
- インフラ  
Heroku  
- OS  
Mac/Linux  
- データベース  
MySQL/MariaDB  
- タスク管理  
Github  