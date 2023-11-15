# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Customer do
  # pending "add some examples to (or delete) #{__FILE__}"
  #
  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  end
end
