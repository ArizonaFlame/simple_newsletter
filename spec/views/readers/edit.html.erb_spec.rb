require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/readers/edit.html.erb" do
  include ReadersHelper
  
  before(:each) do
    assigns[:reader] = @reader = stub_model(Reader,
      :new_record? => false,
      :name => "value for name",
      :email => "value for email",
      :identity_code => "value for identity_code"
    )
  end

  it "should render edit form" do
    render "/readers/edit.html.erb"
    
    response.should have_tag("form[action=#{reader_path(@reader)}][method=post]") do
      with_tag('input#reader_name[name=?]', "reader[name]")
      with_tag('input#reader_email[name=?]', "reader[email]")
      with_tag('input#reader_identity_code[name=?]', "reader[identity_code]")
    end
  end
end


