require 'rails_helper'

describe Cart do
  it { should have_many :cart_items }
  it { should belong_to :account }
end
