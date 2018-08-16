class Lib::Step::Paginator
  extend Uber::Callable

  def self.call(options, **)
    options['page'] = options['contract.default'].page&.number
    options['per'] = options['contract.default'].page&.size
  end
end
