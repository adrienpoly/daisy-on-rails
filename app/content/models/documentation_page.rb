class DocumentationPage < Sitepress::Model
  collection glob: "documentations/*.html*"
  data :title, :description, :tags, :category, :date

  def self.for_category(category)
    return self unless category

    all.select { |post| post.data.category == category }
  end

  def self.for_tag(tag)
    return all unless tag

    all.select { |post| post.data.tags.include?(tag) }
  end
end
