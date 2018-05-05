class SClass < ApplicationRecord
	has_many :subjectclass
	has_many :subject, :through => :subjectclass
end
