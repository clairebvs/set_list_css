=begin
As a visitor
When I visit the home page of the app
Then I should see a welcome message
=end

RSpec.describe 'a visitor' do
  context 'visiting /' do
    it 'should see a welcome message' do
      # capybara command below
      visit '/'

      within("#greeting") do
        expect(page).to have_content("Welcome!")
      end
    end
  end
end

=begin
As a registered user
when I visit the home page
Then I should see a login box
And able to enter my information in the box
And click the submit button (database retrieve information
Then I see my user acount
=end

RSpec.describe 'a registered visitor' do
  context 'visiting/' do
    it 'should see a login box' do
      visit '/'

      save_and_open_page

      within ("#greeting") do
        expect(page).to have_content("Login")

      click_button("Login")
        expect(current_path).to eq('/')
      end
    end
  end
end
