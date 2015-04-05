require 'rails_helper'


feature "a user navigates to the AFC East page", %q(
As a user
I want visit the AFC East page
So that I can see a list of all of the AFC East teams

Acceptance Criteria
[x] I must be able to see team names from the AFC
) do

  scenario "user sucessfully navigates to the AFC East page" do

    visit conferences_path

    click_link "AFC"
    click_link "AFC East"

    expect(page).to have_content("New York Jets")
    expect(page).to have_content("Miami Dolphins")
    expect(page).to have_content("Buffalo Bills")
    expect(page).to have_content("New England Patriots")
  end
end
