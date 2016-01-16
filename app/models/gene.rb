class Gene < ActiveRecord::Base
	has_many :pcrs
	validates_presence_of :name
	accepts_nested_attributes_for :pcrs, :allow_destroy => true, :reject_if => :all_blank
end
