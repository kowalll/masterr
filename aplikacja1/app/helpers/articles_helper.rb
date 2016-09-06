module ArticlesHelper

	# @param {show_active: "true"}
	def link_builder( main_path = '/', param = {})
		params.delete_if {|k,v| k=="controller" || k=="action" }
		logger.info params.inspect
		params.merge!(param) 
		
		main_path + params.to_query
	end
end
