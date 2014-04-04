require 'spec_helper'

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

describe ContestsController do

  # This should return the minimal set of attributes required to create a valid
  # Contest. As you add validations to Contest, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "title" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ContestsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all contests as @contests" do
      contest = Contest.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:contests)).to eq([contest])
    end
  end

  describe "GET show" do
    it "assigns the requested contest as @contest" do
      contest = Contest.create! valid_attributes
      get :show, {:id => contest.to_param}, valid_session
      expect(assigns(:contest)).to eq(contest)
    end
  end

  describe "GET new" do
    it "assigns a new contest as @contest" do
      get :new, {}, valid_session
      expect(assigns(:contest)).to be_a_new(Contest)
    end
  end

  describe "GET edit" do
    it "assigns the requested contest as @contest" do
      contest = Contest.create! valid_attributes
      get :edit, {:id => contest.to_param}, valid_session
      expect(assigns(:contest)).to eq(contest)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Contest" do
        expect {
          post :create, {:contest => valid_attributes}, valid_session
        }.to change(Contest, :count).by(1)
      end

      it "assigns a newly created contest as @contest" do
        post :create, {:contest => valid_attributes}, valid_session
        expect(assigns(:contest)).to be_a(Contest)
        expect(assigns(:contest)).to be_persisted
      end

      it "redirects to the created contest" do
        post :create, {:contest => valid_attributes}, valid_session
        expect(response).to redirect_to(Contest.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved contest as @contest" do
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Contest).to receive(:save).and_return(false)
        post :create, {:contest => { "title" => "invalid value" }}, valid_session
        expect(assigns(:contest)).to be_a_new(Contest)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Contest).to receive(:save).and_return(false)
        post :create, {:contest => { "title" => "invalid value" }}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested contest" do
        contest = Contest.create! valid_attributes
        # Assuming there are no other contests in the database, this
        # specifies that the Contest created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        expect_any_instance_of(Contest).to receive(:update).with({ "title" => "MyString" })
        put :update, {:id => contest.to_param, :contest => { "title" => "MyString" }}, valid_session
      end

      it "assigns the requested contest as @contest" do
        contest = Contest.create! valid_attributes
        put :update, {:id => contest.to_param, :contest => valid_attributes}, valid_session
        expect(assigns(:contest)).to eq(contest)
      end

      it "redirects to the contest" do
        contest = Contest.create! valid_attributes
        put :update, {:id => contest.to_param, :contest => valid_attributes}, valid_session
        expect(response).to redirect_to(contest)
      end
    end

    describe "with invalid params" do
      it "assigns the contest as @contest" do
        contest = Contest.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Contest).to receive(:save).and_return(false)
        put :update, {:id => contest.to_param, :contest => { "title" => "invalid value" }}, valid_session
        expect(assigns(:contest)).to eq(contest)
      end

      it "re-renders the 'edit' template" do
        contest = Contest.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Contest).to receive(:save).and_return(false)
        put :update, {:id => contest.to_param, :contest => { "title" => "invalid value" }}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested contest" do
      contest = Contest.create! valid_attributes
      expect {
        delete :destroy, {:id => contest.to_param}, valid_session
      }.to change(Contest, :count).by(-1)
    end

    it "redirects to the contests list" do
      contest = Contest.create! valid_attributes
      delete :destroy, {:id => contest.to_param}, valid_session
      expect(response).to redirect_to(contests_url)
    end
  end

end
