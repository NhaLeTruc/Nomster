FactoryGirl.define do 
	factory :user do
		sequence :email do |n|
			 "lala#{n}@la.com"
		end
		password "lalalalalalala22"
		password_confirmation "lalalalalalala22"
	end
	factory :place do
		name "Bongo"
		description "LAOAOAOAO"
		address "123 DD re"
		association :user
	end
	factory :comment do
		message "BIKE"
		rating "3_star"
	    association :user
    	association :place
	end
end