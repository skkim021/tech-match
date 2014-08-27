require 'rails_helper'

describe 'User' do

	before :each do
		@valid_attributes = {
			name: "Angela",
			email: "angelal4@uci.edu",
			password: "Lots and lots of text.",
		}
	end

	describe 'when all attributes are valid' do
	    it 'is valid' do
			user = User.new(@valid_attributes)
			expect(user).to be_valid
	    end
  	end

	describe 'validations: ' do

		# Names
		context 'when name is missing' do
			it 'it is not valid' do
				user = User.new(@valid_attributes.merge(name: nil))
				expect(user).not_to be_valid
			end
		end

		# Emails
		context 'when email is missing' do
			it 'it is not valid' do
				user = User.new(@valid_attributes.merge(email: nil))
				expect(user).not_to be_valid
			end
		end

		context 'when email is badly formatted' do
			it 'it is not valid' do
				user = User.new(@valid_attributes.merge(email: "angela"))
				expect(user).not_to be_valid
			end
			it 'it is not valid' do
				user = User.new(@valid_attributes.merge(email: "angela@angela"))
				expect(user).not_to be_valid
			end
		end

		context 'when email is not unique' do
			it 'it is not valid' do
				user1 = User.create(@valid_attributes)
				user2 = User.new(@valid_attributes.merge(email: "angelal4@uci.edu"))
				expect(user2).not_to be_valid
			end
		end

		context 'when email is not unique' do
			it 'it is not valid' do
				user1 = User.create(@valid_attributes)
				user2 = User.new(@valid_attributes.merge(email: "angelal4@uci.edu"))
				expect(user2).not_to be_valid
			end
		end

		# Passwords
		context 'when password is missing' do
			it 'it is not valid' do
				user = User.new(@valid_attributes.merge(password: nil))
				expect(user).not_to be_valid
			end
		end

		context 'when password is less than 6 characters long' do
			it 'it is not valid' do
				user = User.new(@valid_attributes.merge(password: "12345"))
				expect(user).not_to be_valid
			end
		end
	end
end