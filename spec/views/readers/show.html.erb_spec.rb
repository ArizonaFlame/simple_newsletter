require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/readers/show.html.erb" do
  include ReadersHelper
  
  before(:each) do
    assigns[:reader] = @reader = stub_model(Reader,
      :name => "value for name",
      :email => "value for email",
      :identity_code => "value for identity_code"
    )
  end

  it "should render attributes in <p>" do
    render "/readers/show.html.erb"
    response.should have_text(/value\ for\ name/)
    response.should have_text(/value\ for\ email/)
    response.should have_text(/value\ for\ identity_code/)
  end
end

