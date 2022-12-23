# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ServerHelper do
  describe 'check result function' do

    it 'correct' do
      expect(ServerHelper.result_array(10)).to eq([[1, 3, 5, 7, 9], [1, 11, 101, 111, 1001]])
    end

    it 'invalud value' do
      expect(ServerHelper.result_array(-21)).to eq([[], []])
    end
  end
end
