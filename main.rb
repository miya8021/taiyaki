require "./string.rb"
require "./product.rb"
require './taiyaki.rb'
require  "./user.rb"

product_params = [
  {taste: "あんこ", price: 100},
  {taste: "白あん", price: 120},
  {taste: "カスタード", price: 150},
  {taste: "チョコレート", price: 150},
  {taste: "抹茶クリーム＆白玉", price: 200}
]

#商品インスタンス
# products = []
# product_params.each do |param|
#   products << Product.new(param)
# end
# taiyakiクラスのインスタンス
taiyaki = Taiyaki.new(product_params)
user = User.new
#たい焼きの種類を表示
taiyaki.disp_products
# #種類を選択
user.choose_product(taiyaki.products)
# #個数を質問
taiyaki.ask_quantity(user.chosen_product)
# #個数を決定
user.decide_quantity
# #合計金額を計算する
taiyaki.calculate_charges(user)