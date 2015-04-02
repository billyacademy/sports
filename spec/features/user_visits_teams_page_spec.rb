require 'rails_helper'


feature "a user navigates to the teams page", %q(
As a user
I want visit the teams page
So that I can see information about all teams

Acceptance Criteria
[x] I must be able to see team names
[x] I must be able to see division names
) do

  scenario "user sucessfully navigates to a concert page" do

    visit teams_path

    expect(page).to have_content("Welcome to SPORTS")
  end
end
