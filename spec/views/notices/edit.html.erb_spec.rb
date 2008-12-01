require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/notices/edit.html.erb" do
  include NoticesHelper
  
  before(:each) do
    assigns[:notice] = @notice = stub_model(Notice,
      :new_record? => false,
      :name => "value for name",
      :subject => "value for subject",
      :body => "value for body"
    )
  end

  it "should render edit form" do
    render "/notices/edit.html.erb"
    
    response.should have_tag("form[action=#{notice_path(@notice)}][method=post]") do
      with_tag('input#notice_name[name=?]', "notice[name]")
      with_tag('input#notice_subject[name=?]', "notice[subject]")
      with_tag('textarea#notice_body[name=?]', "notice[body]")
    end
  end
end


