require 'rails_helper'

RSpec.describe Task, type: :model do
  it 'has correct column and attribute' do
    is_expected.to have_db_column :title
    is_expected.to have_db_column :description
  end

  it 'has relation' do
    is_expected.to have_many :task_items
  end

  it 'has validation' do
    is_expected.to validate_presence_of :title
    is_expected.to validate_presence_of :description
  end
end
