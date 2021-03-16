class Taiyaki
  attr_reader :products
  def initialize(product_params)
    # 商品インスタンス
    @products = []
    product_params.each do |param|
    @products << Product.new(param)
    end
    # @products = products
  end

  def disp_products
    puts "いらっしゃいませ！たいやきの味を選んで下さい。"
    puts "~" * 32
    @products.each do |product|
      puts "#{product.id.to_s.mb_ljust(2)}. #{product.taste.mb_ljust(18)} : #{product.price.to_s.mb_ljust(4)}円"
    end
    puts "~" * 32
  end

  def ask_quantity(chosen_product)
    puts "#{chosen_product.taste}ですね。何個買いますか？"
  end

  def calculate_charges(user)
    total_price = user.chosen_product.price * user.quantity_of_product
    puts "合計金額は#{total_price.floor}円です。"
    puts 'お買い上げありがとうございました！'
  end
end