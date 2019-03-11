require 'rails_helper'

RSpec.describe TaskItem, type: :model do
  it 'has correct column and attributes' do
    is_expected.to have_db_column :content
    is_expected.to have_db_column :completed_at
  end

  it 'has relation' do
    is_expected.to belong_to :task
  end

  it 'has validation' do
    is_expected.to validate_presence_of :content
  end
end
