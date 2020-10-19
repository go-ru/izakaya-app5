require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

    describe 'ユーザー登録' do
      context "ユーザー登録がうまくいく時" do
        it "すべての項目が存在すれば登録できる" do
          expect(@user).to be_valid
        end

        it "passwordが６文字以上かつ半角英数字であれば登録できる" do
          @user.password = 'aaa000'
          @user.password_confirmation = 'aaa000'
          expect(@user).to be_valid
        end
      end

      context "ユーザー登録がうまくいかない時" do
        it "store_nameが空の場合、登録できない" do
          @user.store_name = nil
          @user.valid?
          expect(@user.errors.full_messages).to include("Store name can't be blank")
        end

        it "emailが空の場合、登録できない" do
          @user.email = nil
          @user.valid?
          expect(@user.errors.full_messages).to include("Email can't be blank")
        end

        it "重複したemailが存在する場合は登録できない" do
          @user.save
          another_user = FactoryBot.build(:user, email: @user.email)
          another_user.valid?
          expect(another_user.errors.full_messages).to include('Email has already been taken')
        end

        it "passwordが空の場合、登録できない" do
          @user.password = nil
          @user.valid?
          expect(@user.errors.full_messages).to include("Password can't be blank")
        end

        it "Passwordが５文字以下なら登録できない" do
          @user.password = '000aa'
          @user.valid?
          expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
        end

        it "passwordが存在してもpassword_confirmationが空では登録できない" do
          @user.password = 'aaa000'
          @user.password_confirmation = ''
          @user.valid?
          expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
        end

        it "Passwordが半角英数字混合でなければ登録できない" do
          @user.password = 'aaaaaa'
          @user.password = '000000'
          @user.valid?
          expect(@user.errors.full_messages).to include("Password is invalid")
        end
      end

      
    end
end
