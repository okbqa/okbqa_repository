module ComponentsHelper

	def link_to_category(category)
		label = category.gsub(' ', '-').downcase
		if label == 'other'
			category
		else
			"<a href='http://www.okbqa.org/architecture/#{label}'>#{category}</a> "
		end
	end

end
