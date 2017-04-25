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

RSpec.describe SpacesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Space. As you add validations to Space, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SpacesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    xit "assigns all spaces as @spaces" do
      space = Space.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:spaces)).to eq([space])
    end
  end

  describe "GET #show" do
    xit "assigns the requested space as @space" do
      space = Space.create! valid_attributes
      get :show, params: {id: space.to_param}, session: valid_session
      expect(assigns(:space)).to eq(space)
    end
  end

  describe "GET #new" do
    xit "assigns a new space as @space" do
      get :new, params: {}, session: valid_session
      expect(assigns(:space)).to be_a_new(Space)
    end
  end

  describe "GET #edit" do
    xit "assigns the requested space as @space" do
      space = Space.create! valid_attributes
      get :edit, params: {id: space.to_param}, session: valid_session
      expect(assigns(:space)).to eq(space)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      xit "creates a new Space" do
        expect {
          post :create, params: {space: valid_attributes}, session: valid_session
        }.to change(Space, :count).by(1)
      end

      xit "assigns a newly created space as @space" do
        post :create, params: {space: valid_attributes}, session: valid_session
        expect(assigns(:space)).to be_a(Space)
        expect(assigns(:space)).to be_persisted
      end

      xit "redirects to the created space" do
        post :create, params: {space: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Space.last)
      end
    end

    context "with invalid params" do
      xit "assigns a newly created but unsaved space as @space" do
        post :create, params: {space: invalid_attributes}, session: valid_session
        expect(assigns(:space)).to be_a_new(Space)
      end

      xit "re-renders the 'new' template" do
        post :create, params: {space: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      xit "updates the requested space" do
        space = Space.create! valid_attributes
        put :update, params: {id: space.to_param, space: new_attributes}, session: valid_session
        space.reload
        skip("Add assertions for updated state")
      end

      xit "assigns the requested space as @space" do
        space = Space.create! valid_attributes
        put :update, params: {id: space.to_param, space: valid_attributes}, session: valid_session
        expect(assigns(:space)).to eq(space)
      end

      xit "redirects to the space" do
        space = Space.create! valid_attributes
        put :update, params: {id: space.to_param, space: valid_attributes}, session: valid_session
        expect(response).to redirect_to(space)
      end
    end

    context "with invalid params" do
      xit "assigns the space as @space" do
        space = Space.create! valid_attributes
        put :update, params: {id: space.to_param, space: invalid_attributes}, session: valid_session
        expect(assigns(:space)).to eq(space)
      end

      xit "re-renders the 'edit' template" do
        space = Space.create! valid_attributes
        put :update, params: {id: space.to_param, space: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    xit "destroys the requested space" do
      space = Space.create! valid_attributes
      expect {
        delete :destroy, params: {id: space.to_param}, session: valid_session
      }.to change(Space, :count).by(-1)
    end

    xit "redirects to the spaces list" do
      space = Space.create! valid_attributes
      delete :destroy, params: {id: space.to_param}, session: valid_session
      expect(response).to redirect_to(spaces_url)
    end
  end

end
