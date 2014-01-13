module StatusesHelper



	def first_name
		User.find(@status.user_id)
	end
end
