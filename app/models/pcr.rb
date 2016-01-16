class Pcr < ActiveRecord::Base
	belongs_to :gene
	validates_presence_of :fragment_name
		accepts_nested_attributes_for :gene, :allow_destroy => true, :reject_if => :all_blank
	
end
