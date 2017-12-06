require 'rails_helper'

describe CartItem do
  it { should belong_to :cart }
  it { should belong_to :product }
end
