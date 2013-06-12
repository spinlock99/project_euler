require 'spec_helper'

describe StaticPagesController do
  describe 'problem1' do
    it 'should get the right multiples' do
      get :problem1, :max => 10
      assigns( :multiples ).should eq( [3, 5, 6, 9] )
    end
    it 'should calculate the right answer' do
      get :problem1, :max => 10
      assigns( :answer ).should eq( 23 )
    end
  end
  describe 'problem2' do
    it 'should calculate the right sum' do
      get :problem2, :max => 10
      assigns( :answer ).should eq( 10 )
    end
  end
  describe 'problem3' do
    it 'should get the largest prime factor' do
      get :problem3, :max => 13195
      assigns( :answer ).should eq( 29 )
    end
  end
  describe 'problem4' do
    it 'should return the largest palindrome' do
      get :problem4, max: 99
      assigns( :answer ).should eq( 9009 )
    end
  end
end
