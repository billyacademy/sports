require 'rails_helper'


feature "a user navigates to the AFC page", %q(
As a user
I want visit the AFC page
So that I can see a list of all of the AFC teams

Acceptance Criteria
[x] I must be able to see team names from the AFC
) do

  scenario "user sucessfully navigates to the AFC page" do

    visit conferences_path

    click_link "AFC"

    expect(page).to have_content("AFC East")
    expect(page).to have_content("AFC South")
    expect(page).to have_content("AFC West")
    expect(page).to have_content("AFC North")
  end
end
