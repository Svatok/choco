class TypesQuery
  def self.call(relation = ActsAsTaggableOn::Tag.all)
    relation.joins(:taggings).where(taggings: { context: 'types' }).group(:id).order(:name)
  end
end
