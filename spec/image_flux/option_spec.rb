# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ImageFlux::Option do
  subject(:option) { described_class.new(width: 100, o: false, f: 'png', a: :crop, ig: :top_left, ic: [0, 0, 100, 100]) }

  describe '#to_query' do
    subject(:to_query) { option.to_query }

    it { is_expected.to eq('w=100,o=0,f=png,a=2,ig=1,ic=0:0:100:100') }
  end
end
