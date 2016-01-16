class Gene < ActiveRecord::Base
	has_many :pcrs
	validates :name, :presence => {:message => "*"}
	accepts_nested_attributes_for :pcrs, :allow_destroy => true, :reject_if => :all_blank
end
