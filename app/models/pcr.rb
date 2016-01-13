class Pcr < ActiveRecord::Base
	belongs_to :gene
	has_many :primer_pcrships
  	has_many :primers, :through => :primer_pcrship
end
