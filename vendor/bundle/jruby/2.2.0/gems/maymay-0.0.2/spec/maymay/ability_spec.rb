require 'spec_helper'

module MayMay
  describe Ability do
  
    subject { Ability.new(nil) }
    
    describe 'checking abilities' do
      context 'unexisted' do
        it 'should raise an error' do
          expect { subject.may?(:foo, :bar) }.to raise_error(UndefinedAbility)
        end
      end
      
      context 'defined with block' do
        before do
          subject.may(:foo, :bar) { |user, object| object }
          subject.maynot(:boo, :moo) { |user, object| object }
        end
        
        it { subject.may?(:foo, :bar, true).should be_true }
        it { subject.may?(:foo, :bar, false).should be_false }
        
        it { subject.may?(:boo, :moo, true).should be_false }
        it { subject.may?(:boo, :moo, false).should be_true }
      end
      
      context 'defined without block' do
        before do
          subject.may :foo, :bar
          subject.maynot :boo, :moo
        end
        
        it { subject.may?(:foo, :bar).should be_true }
        it { subject.may?(:boo, :moo).should be_false }
      end
    end
    
    describe '#authorize!' do
      before do
        subject.maynot :foo, :bar
      end
      
      it 'should raise an error' do
        expect { subject.authorize! :foo, :bar }.to raise_error(Unauthorized)
      end
    end
  end
end
