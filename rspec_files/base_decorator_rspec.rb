require './base_decorator'

describe Decorator do
  context 'Instance of base decorator' do
    before :each do
      @base_decorator = Decorator.new('Peet')
    end
    it 'return a new base decorator' do
      expect(@base_decorator).to be_instance_of Decorator
    end
  end
end
