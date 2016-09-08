module AttachmentsHelper

	# <i class="fa fa-check" aria-hidden="true">
	def is_active_ico(object)
		# content_tag object.active? ? "true" : "false"
		fa_icon "fa-check"

	end


	def links( attachments )
		html = ''

		attachments.each do |a|
			html += link_to(a.name, a.url)
		end


		html
	end
    #form_tag(url_for_options = {}, options = {}, &block) ⇒ Object

	# 	if object.active?
	# 		image_tag image_path, size: "#{actual_size}"
	# 	else
	# 	end

	#   if size == "large"
	#     actual_size = "20x20"
	#   elsif size == "medium"
	#     acutual_size = "100x100"
	#   else
	#     actual_size = "50x50"
	#   end
	#   image_tag image_path, size: "#{actual_size}"
	# end

end
