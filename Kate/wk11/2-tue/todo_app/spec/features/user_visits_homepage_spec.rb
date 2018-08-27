feature 'User visits homepage' do
  scenario 'sucessfully' do
    visit '/'
    expect(page).to have_css 'h1', text: 'Todos'
  end
end