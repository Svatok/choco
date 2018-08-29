class Products::Show < Trailblazer::Operation
  step Model(Product, :find)
end
