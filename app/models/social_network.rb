class SocialNetwork < ApplicationRecord
  enum name: %i[facebook twitter instagram pinterest google youtube]
end
