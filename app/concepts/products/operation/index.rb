class Products::Index < Trailblazer::Operation
  step Contract::Build(constant: Products::Contract::Index)
  step Contract::Validate()

  success Lib::Step::Paginator
  step :search_params!

  step :model!
  step :url_params!

  def search_params!(options, **)
    options['search_params'] = { selected_query: options['contract.default'].scope }
  end

  def model!(options, search_params:, page:, per:, **)
    options['model'] = Finder::Product.all.search(search_params).result.page(page).per(per)
  end

  def url_params!(options, **)
    options['url_params'] = options['contract.default'].to_nested_hash
  end
end
