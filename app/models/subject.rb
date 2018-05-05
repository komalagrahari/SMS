class Subject < ApplicationRecord
	has_many :subjectclass
	has_many :s_class, :through => :subjectclass
end
