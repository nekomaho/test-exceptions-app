require "application_system_test_case"

class NotFoundTest < ApplicationSystemTestCase
  setup do
    @show_detailed_exceptions = Rails.application.env_config['action_dispatch.show_detailed_exceptions']
    @show_exceptions          = Rails.application.env_config['action_dispatch.show_exceptions']

    Rails.application.env_config['action_dispatch.show_detailed_exceptions'] = false
    Rails.application.env_config['action_dispatch.show_exceptions']          = true
  end

  test "visiting the index" do
     visit 'hoge'
  
     assert_text '404 Not Found'
  end

  teardown do
    Rails.application.env_config['action_dispatch.show_detailed_exceptions'] = @show_detailed_exceptions
    Rails.application.env_config['action_dispatch.show_exceptions']          = @show_exceptions
  end

end
