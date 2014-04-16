#encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Trade.destroy_all

5.times do |i|
  trade = Trade.create! name: "Trade#{i}"

  3.times do |j|
    Idea.create body: "Idea#{j}", trade_id: trade.id
  end

  3.times do |j|
    shop = Shop.create! name: "Shop#{i*j}", phone:"Shop#{i*j} phone", lower_price: j,
      higher_price: (j+50), rating:(j%6), notes:"Shop#{i*j} notes", trade_id: trade.id

    2.times do |k|
      Material.create! name: "Material#{i*j*k}", lower_price: i*j*k, higher_price: (i*j*k+100), rating: (i*j*k%6),
        notes: "Material#{i*j*k} notes", shop_id: shop.id, trade_id: trade.id

      Worker.create! name: "Worker#{i*j*k}", phone: "Worker#{i*j*k} phone", lower_price: i*j*k,
        higher_price: (i*j*k+100), rating: (i*j*k%6), notes: "Worker#{i*j*k} notes", shop_id: shop.id,
        trade_id: trade.id
    end
  end
end
