class Product
  attr_reader :id, :taste, :price
  @@count = 0
  def initialize(product_params)
    @id = @@count += 1
    @taste = product_params[:taste]
    @price = product_params[:price]
  end
end
