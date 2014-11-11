module BoothsHelper

	def has_booth?(user_id)
  		Booth.exists?(user_id: user_id)
	end 

end 




