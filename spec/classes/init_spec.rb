require 'spec_helper'
describe 'defaults' do

  context 'with defaults for all parameters' do
    it { should contain_class('defaults') }
  end
end
