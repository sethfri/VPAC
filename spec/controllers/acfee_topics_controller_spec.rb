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

describe AcfeeTopicsController do

  # This should return the minimal set of attributes required to create a valid
  # AcfeeTopic. As you add validations to AcfeeTopic, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AcfeeTopicsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all acfee_topics as @acfee_topics" do
      acfee_topic = AcfeeTopic.create! valid_attributes
      get :index, {}, valid_session
      assigns(:acfee_topics).should eq([acfee_topic])
    end
  end

  describe "GET show" do
    it "assigns the requested acfee_topic as @acfee_topic" do
      acfee_topic = AcfeeTopic.create! valid_attributes
      get :show, {:id => acfee_topic.to_param}, valid_session
      assigns(:acfee_topic).should eq(acfee_topic)
    end
  end

  describe "GET new" do
    it "assigns a new acfee_topic as @acfee_topic" do
      get :new, {}, valid_session
      assigns(:acfee_topic).should be_a_new(AcfeeTopic)
    end
  end

  describe "GET edit" do
    it "assigns the requested acfee_topic as @acfee_topic" do
      acfee_topic = AcfeeTopic.create! valid_attributes
      get :edit, {:id => acfee_topic.to_param}, valid_session
      assigns(:acfee_topic).should eq(acfee_topic)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new AcfeeTopic" do
        expect {
          post :create, {:acfee_topic => valid_attributes}, valid_session
        }.to change(AcfeeTopic, :count).by(1)
      end

      it "assigns a newly created acfee_topic as @acfee_topic" do
        post :create, {:acfee_topic => valid_attributes}, valid_session
        assigns(:acfee_topic).should be_a(AcfeeTopic)
        assigns(:acfee_topic).should be_persisted
      end

      it "redirects to the created acfee_topic" do
        post :create, {:acfee_topic => valid_attributes}, valid_session
        response.should redirect_to(AcfeeTopic.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved acfee_topic as @acfee_topic" do
        # Trigger the behavior that occurs when invalid params are submitted
        AcfeeTopic.any_instance.stub(:save).and_return(false)
        post :create, {:acfee_topic => { "name" => "invalid value" }}, valid_session
        assigns(:acfee_topic).should be_a_new(AcfeeTopic)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        AcfeeTopic.any_instance.stub(:save).and_return(false)
        post :create, {:acfee_topic => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested acfee_topic" do
        acfee_topic = AcfeeTopic.create! valid_attributes
        # Assuming there are no other acfee_topics in the database, this
        # specifies that the AcfeeTopic created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        AcfeeTopic.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => acfee_topic.to_param, :acfee_topic => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested acfee_topic as @acfee_topic" do
        acfee_topic = AcfeeTopic.create! valid_attributes
        put :update, {:id => acfee_topic.to_param, :acfee_topic => valid_attributes}, valid_session
        assigns(:acfee_topic).should eq(acfee_topic)
      end

      it "redirects to the acfee_topic" do
        acfee_topic = AcfeeTopic.create! valid_attributes
        put :update, {:id => acfee_topic.to_param, :acfee_topic => valid_attributes}, valid_session
        response.should redirect_to(acfee_topic)
      end
    end

    describe "with invalid params" do
      it "assigns the acfee_topic as @acfee_topic" do
        acfee_topic = AcfeeTopic.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        AcfeeTopic.any_instance.stub(:save).and_return(false)
        put :update, {:id => acfee_topic.to_param, :acfee_topic => { "name" => "invalid value" }}, valid_session
        assigns(:acfee_topic).should eq(acfee_topic)
      end

      it "re-renders the 'edit' template" do
        acfee_topic = AcfeeTopic.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        AcfeeTopic.any_instance.stub(:save).and_return(false)
        put :update, {:id => acfee_topic.to_param, :acfee_topic => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested acfee_topic" do
      acfee_topic = AcfeeTopic.create! valid_attributes
      expect {
        delete :destroy, {:id => acfee_topic.to_param}, valid_session
      }.to change(AcfeeTopic, :count).by(-1)
    end

    it "redirects to the acfee_topics list" do
      acfee_topic = AcfeeTopic.create! valid_attributes
      delete :destroy, {:id => acfee_topic.to_param}, valid_session
      response.should redirect_to(acfee_topics_url)
    end
  end

end
