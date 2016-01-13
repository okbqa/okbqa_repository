module ComponentsHelper

	def link_to_category(category)
		label = category.gsub(' ', '').downcase
		"<a href='http://35.okbqa.org/development/architecture/#{label}'>#{category}</a> "
	end

end
