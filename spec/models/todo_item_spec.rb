require 'rails_helper'

RSpec.describe TodoItem, type: :model do
  it 'has content' do
    first_todo = TodoItem.new(content: "Walk the dog")

    expect(first_todo).to be_valid
  end
end
