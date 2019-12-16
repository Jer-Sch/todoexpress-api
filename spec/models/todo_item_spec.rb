require 'rails_helper'

RSpec.describe TodoItem, type: :model do
  graham = User.create!(first_name: 'Graham', 
                        last_name:  'Parsons',
                        email:      'gparsons@gmail.com',
                        password:   'password')

  todo = graham.todo_items.create!(content: 'Walk the dog')

  it 'has content' do
   expect(todo).to be_valid
  end

  it 'belongs to a user' do
    expect(todo.user_id).to eq(graham.id)
  end

  it 'can be completed' do
    expect(todo.completed).to eq(false)

    todo.completed = true

    expect(todo.completed).to eq(true)
  end

  graham.todo_items.destroy
  graham.destroy
end
