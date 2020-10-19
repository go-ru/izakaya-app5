require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @comment = FactoryBot.build(:comment)
  end

  describe 'コメント返信' do 
    context "コメントがうまくできるとき" do
      it "textが存在すればコメントできる" do
        expect(@comment).to be_valid
      end
    end

    context "コメントがうまくできない時" do
      it "textが存在しなければコメントできない" do
        @comment.text = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include("Text can't be blank")
      end
    end
  end
end
