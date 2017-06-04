require 'rails_helper'

RSpec.describe Api::V1::BreweriesController, type: :controller do
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }


  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all breweries as @breweries" do
      brewery = Brewery.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:breweries)).to eq([brewery])
    end
  end

  describe "GET #show" do
    it "assigns the requested brewery as @brewery" do
      brewery = Brewery.create! valid_attributes
      get :show, params: {id: brewery.to_param}, session: valid_session
      expect(assigns(:brewery)).to eq(brewery)
    end
  end

  describe "GET #edit" do
    it "assigns the requested brewery as @brewery" do
      brewery = Brewery.create! valid_attributes
      get :edit, params: {id: brewery.to_param}, session: valid_session
      expect(assigns(:brewery)).to eq(brewery)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Brewery" do
        expect {
          post :create, params: {brewery: valid_attributes}, session: valid_session
        }.to change(Brewery, :count).by(1)
      end

      it "assigns a newly created brewery as @brewery" do
        post :create, params: {brewery: valid_attributes}, session: valid_session
        expect(assigns(:brewery)).to be_a(Brewery)
        expect(assigns(:brewery)).to be_persisted
      end

      it "redirects to the created brewery" do
        post :create, params: {brewery: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Brewery.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved brewery as @brewery" do
        post :create, params: {brewery: invalid_attributes}, session: valid_session
        expect(assigns(:brewery)).to be_a_new(Brewery)
      end

      it "re-renders the 'new' template" do
        post :create, params: {brewery: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested brewery" do
        brewery = Brewery.create! valid_attributes
        put :update, params: {id: brewery.to_param, brewery: new_attributes}, session: valid_session
        brewery.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested brewery as @brewery" do
        brewery = Brewery.create! valid_attributes
        put :update, params: {id: brewery.to_param, brewery: valid_attributes}, session: valid_session
        expect(assigns(:brewery)).to eq(brewery)
      end

      it "redirects to the brewery" do
        brewery = Brewery.create! valid_attributes
        put :update, params: {id: brewery.to_param, brewery: valid_attributes}, session: valid_session
        expect(response).to redirect_to(brewery)
      end
    end

    context "with invalid params" do
      it "assigns the brewery as @brewery" do
        brewery = Brewery.create! valid_attributes
        put :update, params: {id: brewery.to_param, brewery: invalid_attributes}, session: valid_session
        expect(assigns(:brewery)).to eq(brewery)
      end

      it "re-renders the 'edit' template" do
        brewery = Brewery.create! valid_attributes
        put :update, params: {id: brewery.to_param, brewery: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested brewery" do
      brewery = Brewery.create! valid_attributes
      expect {
        delete :destroy, params: {id: brewery.to_param}, session: valid_session
      }.to change(Brewery, :count).by(-1)
    end

    it "redirects to the breweries list" do
      brewery = Brewery.create! valid_attributes
      delete :destroy, params: {id: brewery.to_param}, session: valid_session
      expect(response).to redirect_to(breweries_url)
    end
  end

end
