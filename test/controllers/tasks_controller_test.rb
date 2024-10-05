require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  test "render all tasks" do
    get tasks_path

    assert_response :success
  end
end
