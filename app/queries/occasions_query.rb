class OccasionsQuery
  def self.call(relation = ActsAsTaggableOn::Tag.all)
    relation.joins(:taggings).where(taggings: { context: 'occasions' }).group(:id).order(:name)
  end
end
