require 'spec_helper'

describe StaticPagesController do
  describe 'GET problem1' do
    it 'should get the right multiples' do
      get :problem1, :max => 10
      assigns( :multiples ).should eq( [3, 5, 6, 9] )
    end
    it 'should calculate the right answer' do
      get :problem1, :max => 10
      assigns( :answer ).should eq( 23 )
    end
  end
end
