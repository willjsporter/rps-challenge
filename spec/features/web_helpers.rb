def set_up_spec
  visit '/'
	fill_in('player1', with: 'Will')
	click_button('Submit')
end
