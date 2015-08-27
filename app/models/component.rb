class Component < ActiveRecord::Base
  belongs_to :user
  attr_accessible :category, :description, :home_url, :sample_curl_command, :sample_input, :sample_output, :sc_url, :title, :ws_url

  def editable?(current_user)
    if current_user.present?
      self.user == current_user
    else
      false
    end
  end

  def test
  	begin
	    RestClient.post ws_url, sample_input.to_json, :content_type => :json, :accept => :json
  	  raise IOError, "Bad gateway" unless response.code == 200
	    result = JSON.parse response, :symbolize_names => true

	    true
	  rescue => error
	  	puts error.message
	  	puts "-----"
	  	false
	  end
	end

end
