feature 'Adding a post' do
  scenario 'can add a post' do
    visit '/'
    click_link 'Add Post'
    attach_file('Image', 'spec/files/images/dog.jpg')
    fill_in 'Title', with: 'poochy ma pooch'
    click_button 'Add Post'
    expect(page).to have_content('poochy ma pooch')
    expect(page).to have_css("img[src*='dog.jpg']")
  end
end
