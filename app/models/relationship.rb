class Relationship < ApplicationRecord
	belongs_to :user #This is the current user that initiates the follow
	belongs_to :friend, class_name: "User" #This is the user being followed
end
