require 'rails_helper'


feature "a user navigates to the New York Jets page", %q(
As a user
I want visit the New York Jets page
So that I can see information about the Jets

Acceptance Criteria
[x] I must be able to see the name of the team
) do

  scenario "user sucessfully navigates to the Jets page" do

    visit conferences_path

    click_link "AFC"
    click_link "AFC East"
    click_link "New York Jets"

    expect(page).to have_content("New York Jets")
  end
end
