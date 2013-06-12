require 'spec_helper'

describe StaticPage do
  describe 'palendrome' do
    it 'should be true for palindromes' do
      StaticPage.palindrome( 99 ).should eq( true )
    end
    it 'should be flase for non palindromes' do
      StaticPage.palindrome( 10 ).should eq( false )
    end
  end
end
