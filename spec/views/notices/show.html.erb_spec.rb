require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/notices/show.html.erb" do
  include NoticesHelper
  
  before(:each) do
    assigns[:notice] = @notice = stub_model(Notice,
      :name => "value for name",
      :subject => "value for subject",
      :body => "value for body"
    )
  end

  it "should render attributes in <p>" do
    render "/notices/show.html.erb"
    response.should have_text(/value\ for\ name/)
    response.should have_text(/value\ for\ subject/)
    response.should have_text(/value\ for\ body/)
  end
end

