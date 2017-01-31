class Contact < ActiveRecord::Base
	validates_presence_of :nombre

	belongs_to :simplefile
	has_many :details
end
