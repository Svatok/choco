class Products::Index < Trailblazer::Operation
  step Contract::Build(constant: Products::Contract::Index)
  step Contract::Validate()

  success :update_view_type!

  success Lib::Step::Paginator
  step :search_params!

  step :model!
  step :url_params!

  step :cell_options!

  def update_view_type!(options, cookies:, **)
    options['view_type'] = cookies[:view_type]

    contract = options['contract.default']
    if contract.view_type.present? && contract.view_type != options['view_type']
      options['view_type'] = contract.view_type
    end

    return if Constants::Products::VIEW_TYPES.include?(options['view_type'])
    options['view_type'] = Constants::Products::VIEW_TYPES.first
  end

  def search_params!(options, **)
    options['search_params'] = { selected_query: options['contract.default'].scope }
  end

  def model!(options, search_params:, page:, per:, **)
    options['model'] = Finder::Product.all.search(search_params).result.page(page).per(per)
  end

  def url_params!(options, **)
    options['url_params'] = options['contract.default'].to_nested_hash.except('view_type')
  end

  def cell_options!(options, url_params:, view_type:, **)
    options['cell_options'] = {
      url_params: url_params,
      view_type: view_type
    }
  end
end
