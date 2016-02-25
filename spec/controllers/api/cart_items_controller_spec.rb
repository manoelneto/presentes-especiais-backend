require 'rails_helper'
require 'super_awesome_print'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe Api::CartItemsController, type: :controller do

  let!(:user) { create(:spree_user) }

  let!(:user_per) { create(:user_per, spree_user: user) }
  let!(:spree_product) { create(:spree_product) }

  let!(:user_token) {
    user.generate_spree_api_key!
    user.spree_api_key
  }

  let!(:other_user_token) {
    other_user = create(:spree_user)
    other_user.generate_spree_api_key!
    other_user.spree_api_key
  }

  let!(:cart) {
    create(:cart, spree_user: user)
  }

  let!(:cart_item) {
    create(:cart_item, cart: cart)
  }


  # This should return the minimal set of attributes required to create a valid
  # UserPer. As you add validations to UserPer, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {
      spree_product_id: spree_product.id,
      quantity: 10,
      price: 10000,
      user_per_id: user_per.id,
    }
  }

  let(:invalid_attributes) {
    {}
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # UserPersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  render_views

  before do
    request.headers['X-Spree-Token'] = user_token
  end

  describe "GET #count" do
    subject { get :count, {format: :json}, valid_session }

    context "with items cart" do
      it "assigns count to @count" do
        subject
        expect(assigns(:count)).to be_eql(1)
      end
    end

    context "with user that hasn`t items cart" do
      before do
        request.headers['X-Spree-Token'] = other_user_token
      end

      it "assigns count to @count" do
        subject
        expect(assigns(:count)).to be_eql(0)
      end
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new CartItem" do
        expect {
          response = post :create, {:cart_item => valid_attributes, format: :json}, valid_session
        }.to change(CartItem, :count).by(1)
      end

      # it "creates a new UserPerPer" do
      #   expect {
      #     post :create, {:user_per => valid_attributes, format: :json}, valid_session
      #   }.to change(UserPerPer, :count).by(1)
      # end
      #
      # it "creates a new UserAreaPer" do
      #   expect {
      #     post :create, {:user_per => valid_attributes, format: :json}, valid_session
      #   }.to change(UserAreaPer, :count).by(1)
      # end

      it "assigns a newly created cart as @cart" do
        post :create, {:cart_item => valid_attributes, format: :json}, valid_session
        expect(assigns(:cart_item)).to be_a(CartItem)
        expect(assigns(:cart_item)).to be_persisted
        expect(assigns(:cart_item).cart.spree_user).to eq(user)
      end
    end
  end

  describe "DELETE #destroy" do

    subject {
      delete :destroy, {:id => cart_item.to_param, format: :json}, valid_session
    }

    it { expect(subject.status).to be(204) }
    it { expect { subject }.to change(CartItem, :count).by(-1) }

    context "when delete an cart id from other user" do
      before do
        request.headers['X-Spree-Token'] = other_user_token
      end

      it { expect(subject).to be_not_found }
      it { expect { subject }.not_to change(CartItem, :count) }
    end
  end

  describe "PUT #update" do

    let(:other_product) {
      create(:spree_product)
    }

    let(:update_attributes) {
      { spree_product_id: other_product.id }
    }

    subject {
      put :update, {
        :id => cart_item.to_param,
        cart_item: update_attributes,
        format: :json
      }, valid_session
    }

    it { expect(subject).to be_ok }
    it "changes products from cart item" do
      subject
      cart_item.reload
      expect(cart_item.spree_product).to eql(other_product)
    end

    # context "when delete an cart id from other user" do
    #   before do
    #     request.headers['X-Spree-Token'] = other_user_token
    #   end
    #
    #   it { expect(subject).to be_not_found }
    #   it { expect { subject }.not_to change(CartItem, :count) }
    # end
  end

end
