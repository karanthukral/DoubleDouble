FactoryGirl.define do
  	factory :user do
    	sequence(:first_name)  { |n| "Person #{n}" }
    	sequence(:last_name)  { |n| "Person" }
    	sequence(:email) { |n| "person_#{n}@example.com"}
    	password "12345678"
    	password_confirmation "12345678"
	end 

	factory :drink do
		sequence(:user) {|n| User.all.first}
		sequence(:size) {|n| ["small", "medium", "large", "other"].sample}
		sequence(:location) {|n| ["tims", "starbucks", "williams", "other"].sample}
		sequence(:created_at) {|n| Faker::Time.between(7.days.ago, Time.now, :all) }
	end
end