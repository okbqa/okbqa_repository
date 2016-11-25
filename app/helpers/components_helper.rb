module ComponentsHelper

	def link_to_category(category)
		path = case category
			when 'Template generation' then 'http://doc.okbqa.org/query-generation-module/v1/'
			when 'Disambiguation' then 'http://doc.okbqa.org/disambiguation-module/v1/'
			when 'Query generation' then 'http://doc.okbqa.org/query-generation-module/v1/'
			when 'Answer generation' then 'http://doc.okbqa.org/answer-generation-module/v1/'
			when 'Controller' then 'http://doc.okbqa.org/control-module/v2/'
			when 'Evaluation' then 'http://doc.okbqa.org/evaluation-module/v1/'
		end

		if category == 'other'
			category
		else
			"<a href='#{path}'>#{category}</a> "
		end
	end

end
