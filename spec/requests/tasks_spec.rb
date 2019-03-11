require 'rails_helper'

RSpec.describe "Tasks", type: :request do
  describe "GET /tasks" do
    it "has 'ToDo List' text in body" do
      get tasks_path
      expect(response).to have_http_status(200)
      expect(response.body).to include("ToDo List")
    end

    it "shoud render list of tasks template" do
      get tasks_path
      expect(response).to render_template("tasks/index")
    end
  end
end
