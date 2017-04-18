require 'rails_helper'

RSpec.describe "profiles/show", type: :view do
  before(:each) do
    @profile = create(:profile)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Bio/)
    expect(rendered).to match(/Avatar/)
    expect(rendered).to match(/User/)
  end
end
