require 'rails_helper'

RSpec.describe 'routing to home pages' do
  it 'routes / to home_pages#index' do
    expect(get: '/').to route_to(
      controller: 'home_pages',
      action: 'index'
    )
  end
end
