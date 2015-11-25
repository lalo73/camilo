require 'spec_helper'
require 'date'

describe Rating do
    it 'should assign user account' do
      user= Account.new
      rating= Rating.new
      rating.account= user

      rating.account.should be user
    end
end
