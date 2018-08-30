class StaticPage < ApplicationRecord
  enum page: { shipping: 0, payment: 1, return: 2, about_us: 3, terms: 4, contacts: 5 }
end
