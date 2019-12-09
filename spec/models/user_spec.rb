require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with first name, last name, email, and password' do
    bob = User.create(first_name: 'Bob',
                      last_name:  'Ross',
                      email:      'happytree47@gmail.com',
                      password:   'password')

    expect(bob).to be_valid
    
    bob.delete
  end

  it 'is invalid without a first name' do
    bob = User.create(first_name: '',
                      last_name:  'Ross',
                      email:      'happytree47@gmail.com',
                      password:   'password')

    expect(bob).to be_invalid

    bob.delete
  end

  it 'is invalid without a last name' do
    bob = User.create(first_name: 'Bob',
                      last_name:  '',
                      email:      'happytree47@gmail.com',
                      password:   'password')

    expect(bob).to be_invalid

    bob.delete
  end

  it 'is invalid without an email address' do
    bob = User.create(first_name: 'Bob',
                      last_name:  'Ross',
                      email:      '',
                      password:   'password')

    expect(bob).to be_invalid

    bob.delete
  end

  it 'is invalid without a password' do
    bob = User.create(first_name: 'Bob',
                      last_name:  'Ross',
                      email:      'happytree47@gmail.com',
                      password:   '')

    expect(bob).to be_invalid

    bob.delete
  end

  it 'is invalid with a password shorter than 8 characters' do
    bob = User.create(first_name: 'Bob',
                      last_name:  'Ross',
                      email:      'happytree47@gmail.com',
                      password:   'word')

    expect(bob).to be_invalid

    bob.delete
  end


end
