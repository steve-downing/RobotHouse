class House < ApplicationRecord
	has_many :rooms

	attr_accessor :name
end
