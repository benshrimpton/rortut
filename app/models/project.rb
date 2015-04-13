class Project < ActiveRecord::Base
	validates :title, :presence => true, :length => { :minimum => 3}, :exclusion => { :in => ["Title", "title"] }
	validates :description, :length => { :minimum => 10 }
	has_many :comments
end
