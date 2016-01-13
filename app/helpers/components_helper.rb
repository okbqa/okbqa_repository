module ComponentsHelper

	def link_to_category(category)
		label = category.gsub(' ', '').downcase
		if label == 'other'
			category
		else
			"<a href='http://35.okbqa.org/development/architecture/#{label}'>#{category}</a> "
		end
	end

end
