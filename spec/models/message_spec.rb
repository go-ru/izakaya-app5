require 'rails_helper'

RSpec.describe Message, type: :model do
  before do
    @message = FactoryBot.build(:message)
  end

    describe 'メッセージ送信' do
      context "メッセージ送信がうまくいく時" do
        it "requestが存在すれば送信できる" do
          expect(@message).to be_valid
        end
      end

        context "メッセージ送信がうまくいかない時" do
          it "requestが空の場合、送信できない" do
            @message.request = nil
            @message.valid?
            expect(@message.errors.full_messages).to include("Request can't be blank")
          end
        end
    end
end
