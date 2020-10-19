require 'rails_helper'

RSpec.describe Store, type: :model do
  before do
    @store = FactoryBot.build(:store)
  end

    describe 'お店の情報登録' do
      context "お店情報登録がうまくいく時" do
        it "必須項目が全て存在すれば登録できる" do
          expect(@store).to be_valid
        end
      end

      context "お店情報登録がうまくいかない時" do
        it "addressが空だった場合、登録できない" do
          @store.address = nil
          @store.valid?
          expect(@store.errors.full_messages).to include("Address can't be blank")
        end

        it "hourが空だった場合、登録できない" do
          @store.hour = nil
          @store.valid?
          expect(@store.errors.full_messages).to include("Hour can't be blank")
        end

        it "tel_numberが空だった場合、登録できない" do
          @store.tel_number = nil
          @store.valid?
          expect(@store.errors.full_messages).to include("Tel number can't be blank")
        end

        it "genreが空だった場合、登録できない" do
          @store.genre = nil
          @store.valid?
          expect(@store.errors.full_messages).to include("Genre can't be blank")
        end

        it "budgetが空だった場合、登録できない" do
          @store.budget = nil
          @store.valid?
          expect(@store.errors.full_messages).to include("Budget can't be blank")
        end

        it "画像がうまく設定されていない場合、登録できない" do
          @store.image = nil
          @store.valid?
          expect(@store.errors.full_messages).to include("Image can't be blank")
        end
      end

    end
end
