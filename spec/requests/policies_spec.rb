require 'rails_helper'

RSpec.describe "/policies", type: :request do
  # Policy. As you add validations to Policy, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {{
    carrier_id: create(:carrier).id,
    client_id: create(:client).id,
    effective_date: FFaker::Time.datetime,
    expiration_date: FFaker::Time.datetime,
    written_premium: 100.0,
    carrier_policy_number: 1234
  }}

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Policy.create! valid_attributes
      get policies_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      policy = Policy.create! valid_attributes
      get policy_url(policy)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_policy_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      policy = Policy.create! valid_attributes
      get edit_policy_url(policy)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Policy" do
        expect {
          post policies_url, params: { policy: valid_attributes }
        }.to change(Policy, :count).by(1)
      end

      it "redirects to the created policy" do
        post policies_url, params: { policy: valid_attributes }
        expect(response).to redirect_to(policy_url(Policy.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Policy" do
        expect {
          post policies_url, params: { policy: invalid_attributes }
        }.to change(Policy, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post policies_url, params: { policy: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested policy" do
        policy = Policy.create! valid_attributes
        patch policy_url(policy), params: { policy: new_attributes }
        policy.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the policy" do
        policy = Policy.create! valid_attributes
        patch policy_url(policy), params: { policy: new_attributes }
        policy.reload
        expect(response).to redirect_to(policy_url(policy))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        policy = Policy.create! valid_attributes
        patch policy_url(policy), params: { policy: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested policy" do
      policy = Policy.create! valid_attributes
      expect {
        delete policy_url(policy)
      }.to change(Policy, :count).by(-1)
    end

    it "redirects to the policies list" do
      policy = Policy.create! valid_attributes
      delete policy_url(policy)
      expect(response).to redirect_to(policies_url)
    end
  end
end
