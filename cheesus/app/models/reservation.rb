class Reservation < ActiveRecord::Base
	# validates :availability

	belongs_to :c_user
	belongs_to :restaurant



	private
	def availability
		unless restaurant.available?(party_size, arrive, date)
			errors.add(:base, "Restaurant is full")
		end
	end
end
