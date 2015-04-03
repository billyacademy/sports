require 'rails_helper'


feature "a user navigates to a division page", %q(
As a user
I want visit the divisions page
So that I can navigate to any division page

Acceptance Criteria
[x] I must be able to see team names from the specified division
) do

  scenario "user sucessfully navigates to a division page" do

    visit divisions_path

    expect(page).to have_content("AFC East")
    expect(page).to have_content("NFC South")
    expect(page).to have_content("AFC West")
  end
end
