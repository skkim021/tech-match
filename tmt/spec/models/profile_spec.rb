require 'rails_helper'

describe 'Profile' do

	before :each do
		@valid_attributes = {
			name: "Product Manager",
			description: "Lots and lots of text.",
			salary: "50,000 - 60,000",
		}
	end

	describe 'when all attributes are valid' do
	    it 'is valid' do
			profile = Profile.new(@valid_attributes)
			expect(profile).to be_valid
	    end
  	end

	describe 'validations: ' do

		context 'when name is missing' do
			it 'it is not valid' do
				profile = Profile.new(@valid_attributes.merge(name: nil))
				expect(profile).not_to be_valid
			end
		end

		context 'when description is missing' do
			it 'it is not valid' do
				profile = Profile.new(@valid_attributes.merge(description: nil))
				expect(profile).not_to be_valid
			end
		end

		context 'when salary is missing' do
			it 'it is not valid' do
				profile = Profile.new(@valid_attributes.merge(salary: nil))
				expect(profile).not_to be_valid
			end
		end
	end
end