# -*- coding: utf-8 -*-


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#Title.create(:name => '観察日記', :sales_date => '2011-11-14', :price => 1000)
#Title.create(:name => 'Simple Life', :sales_date => '2012-02-08', :price => 2300)
#Title.create(:name => 'メガネ入門', :sales_date => '2011-10-25', :price => 800)


User.create(:user_id => '1', :name=> 'yamada', :link => 'http://www.facebook.com/yamada', :univ => 'KyotoUniversity')
User.create(:user_id => '2', :name=> 'ishida', :link => 'http://www.facebook.com/ishida', :univ => 'TokyoUniversity')
User.create(:user_id => '3', :name=> 'nakano', :link => 'http://www.facebook.com/nakano', :univ => 'KyotoUniversity')
User.create(:user_id => '4', :name=> 'matsuno', :link => 'http://www.facebook.com/matsuno', :univ => 'KyotoUniversity')
User.create(:user_id => '5', :name=> 'okuno', :link => 'http://www.facebook.com/okuno', :univ => 'KyotoUniversity')

Text.create(:user_id => '1', :textinfo_id => '1', :lecture_name => '微分積分学A', :textbook_name => '微分積分学の入門A', :price => '200', :comment => 'ちょっと汚れてます', :status => '1', :univ => 'KyotoUniversity', :teacher => '加藤先生')
Text.create(:user_id => '1', :textinfo_id => '2', :lecture_name => '微分積分学B', :textbook_name => '微分積分学の入門B', :price => '100', :comment => '新品同然です', :status => '1', :univ => 'KyotoUniversity', :teacher => '丸山先生')
Text.create(:user_id => '2', :textinfo_id => '3', :lecture_name => '線形代数A', :textbook_name => '線形代数の基礎A', :price => '100', :comment => '書き込み多数です', :status => '1', :univ => 'TokyoUniversity', :teacher => '樋口先生')
Text.create(:user_id => '2', :textinfo_id => '4', :lecture_name => '電磁気学', :textbook_name => '電磁気学の微分方程式', :price => '500', :comment => '誰か買ってくれませんか', :status => '1', :univ => 'TokyoUniversity', :teacher => '山田先生')
Text.create(:user_id => '3', :textinfo_id => '5', :lecture_name => '労使関係論', :textbook_name => '労使関係論', :price => '500', :comment => '誰か買ってくれませんか', :status => '1', :univ => 'KyotoUniversity', :teacher => '中原先生')
Text.create(:user_id => '3', :textinfo_id => '6', :lecture_name => 'ビックデータの計算科学', :textbook_name => 'ビックデータ', :price => '300', :comment => '少し汚れてます', :status => '1', :univ => 'KyotoUniversity', :teacher => '草野先生')
Text.create(:user_id => '4', :textinfo_id => '7', :lecture_name => 'システム設計論1', :textbook_name => 'システム設計論の基礎', :price => '700', :comment => '是非買って下さい', :status => '1', :univ => 'KyotoUniversity', :teacher => '石原先生')
Text.create(:user_id => '5', :textinfo_id => '8', :lecture_name => 'システム設計論2', :textbook_name => 'システム設計論の応用', :price => '300', :comment => 'お買い得です', :status => '2', :univ => 'KyotoUniversity', :teacher => '長谷川先生')