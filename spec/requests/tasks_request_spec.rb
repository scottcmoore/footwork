# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Tasks', type: :request do
  it 'responds to GET for an individual test' do
    task = Task.create!(title: 'Test task', description: 'Test task description')
    get task_path(task.id)
    expect(response).to be_successful
    expect(response.body).to include('Test task', 'Test task description')
  end

  it 'responds to GET for all tasks' do
  end
end
