class Device < ApplicationRecord
	belongs_to :room

	attr_accessor :name, :type, :external_id
end
