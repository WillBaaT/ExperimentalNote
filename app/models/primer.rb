class Primer < ActiveRecord::Base
	has_many :primer_pcrships
  	has_many :pcrs, :through => :primer_pcrship
end
