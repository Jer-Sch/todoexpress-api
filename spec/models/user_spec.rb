require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with first name, last name, email, and password' do
    bob = User.create(first_name: 'Bob',
                      last_name:  'Ross',
                      email:      'happytree47@gmail.com',
                      password:   'password')

    expect(bob).to be_valid
  end
end
