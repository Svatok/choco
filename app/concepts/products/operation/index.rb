class Products::Index < Trailblazer::Operation
  step Contract::Build(constant: Products::Contract::Index)
  step Contract::Validate()
  success Lib::Step::Paginator

  step :model!
  step :url_params!

  def model!(options, page:, per:, **)
    options['model'] = Product.all.page(page).per(per)
  end

  def url_params!(options, **)
    options['url_params'] = options['contract.default'].to_nested_hash
  end
end
