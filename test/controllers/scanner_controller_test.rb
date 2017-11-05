require 'test_helper'

class ScannerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get scanner_index_url
    assert_response :success
  end

  test "should get report" do
    get scanner_report_url
    assert_response :success
  end

end
