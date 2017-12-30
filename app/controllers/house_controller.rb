class HouseController < ApplicationController
	def show
		@house = House.find(params['id'])
	end
end
