require 'rails_helper'

RSpec.describe Deliver, type: :model do
  before do
    @deliver = FactoryBot.build(:deliver)
  end

    describe '商品を届ける' do
      context "デリバリーがうまくいく時" do
        it "すべての項目が存在すれば登録できる" do
          expect(@deliver).to be_valid
        end
      end

      context "デリバリーがうまくいかない時" do
        it "store_nameが空の場合、デリバリーできない" do
          @deliver.store_name = nil
          @deliver.valid?
          expect(@deliver.errors.full_messages).to include("Store name can't be blank")
        end

        it "productが空の場合、デリバリーできない" do
          @deliver.product = nil
          @deliver.valid?
          expect(@deliver.errors.full_messages).to include("Product can't be blank")
        end

        it "iamgeが空の場合、デリバリーできない" do
          @deliver.image = nil
          @deliver.valid?
          expect(@deliver.errors.full_messages).to include("Image can't be blank")
        end
      end

    end
end
