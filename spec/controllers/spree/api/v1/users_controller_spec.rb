require 'rails_helper'

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

RSpec.describe Spree::Api::V1::UsersController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # User. As you add validations to User, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {
      email: Faker::Internet::email,
      password: 'somepassword',
      identities_attributes: [
        {
          uid: 'uid',
          provider: 'provider',
        }
      ]
    }
  }

  let(:invalid_attributes) {
    {email: nil}
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # UsersController. Be sure to keep this updated too.
  let(:valid_session) {
    {}
  }

  describe "POST sign_in" do
    context "with valid params" do

      before do
        @user = create(:spree_user, valid_attributes)
      end

      it "assigns the requested user as @user" do
        post :sign_in, {user: valid_attributes}
        expect(assigns(:user)).to eq(@user)
      end

      it "succeds" do
        post :sign_in, {user: valid_attributes}
        expect(response).to be_success
      end

      context "render views" do
        render_views

        it "responds with spree_api_key" do
          post :sign_in, {user: valid_attributes}
          expect(JSON.parse(response.body)['spree_api_key']).not_to be_nil
        end
      end

    end

    context "with invalid params" do
      it "is unprocessable" do
        post :create, {user: invalid_attributes}
        expect(response).to be_unprocessable
      end
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Spree.user_class" do
        expect {
          post :create, {:user => valid_attributes}
        }.to change(Spree.user_class, :count).by(1)
      end

      it "creates a new Identity class" do
        expect {
          post :create, {:user => valid_attributes}
        }.to change(Identity, :count).by(1)
      end

      it "assigns a newly created user as @user" do
        post :create, {:user => valid_attributes}
        expect(assigns(:user)).to be_a(Spree.user_class)
        expect(assigns(:user)).to be_persisted
      end

      it "succeds" do
        post :create, {user: valid_attributes}
        expect(response).to be_success
      end

      context "render views" do
        render_views

        it "responds with spree_api_key" do
          post :create, {user: valid_attributes}
          expect(JSON.parse(response.body)['spree_api_key']).not_to be_nil
        end
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved user as @user" do
        post :create, {:user => invalid_attributes}
        expect(assigns(:user)).to be_a_new(Spree.user_class)
      end

      it "sets erros in @user" do
        post :create, {:user => invalid_attributes}
        expect(assigns(:user).errors).not_to be_nil
      end

      it "is unprocessable" do
        post :create, {user: invalid_attributes}
        expect(response).to be_unprocessable
      end
    end
  end

  describe "GET #has_email" do
    before do
      @user = create(:spree_user, valid_attributes)
    end

    context "with valid params" do

      it "succeds" do
        get :has_email, {email: valid_attributes[:email]}
        expect(response).to be_success
      end

      it "returns true" do
        get :has_email, {email: valid_attributes[:email]}
        expect(response.body).to eq("true")
      end
    end

    context "with invalid params" do

      it "succeds" do
        get :has_email, {email: invalid_attributes[:email]}
        expect(response).to be_success
      end

      it "returns false" do
        get :has_email, {email: invalid_attributes[:email]}
        expect(response.body).to eq("false")
      end
    end
  end

end