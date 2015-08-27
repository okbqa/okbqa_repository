class Component < ActiveRecord::Base
  attr_accessible :category, :description, :home_url, :sample_curl_command, :sample_input, :sample_output, :sc_url, :title, :ws_url
end
