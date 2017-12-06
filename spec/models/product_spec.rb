require 'rails_helper'

describe Product do
  it { should have_many :reviews }
  it { should have_many :cart_items }
end
