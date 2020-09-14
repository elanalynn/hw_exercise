require 'rails_helper'

RSpec.describe "/carriers", type: :request do
  # Carrier. As you add validations to Carrier, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {{
    company_name: FFaker::Company.name,
    address_1: FFaker:: AddressUS.street_address,
    address_2: FFaker:: AddressUS.secondary_address,
    city: FFaker:: AddressUS.city,
    state: FFaker:: AddressUS.state,
    postal_code: FFaker:: AddressUS.zip_code
  }}

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Carrier.create! valid_attributes
      get carriers_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      carrier = Carrier.create! valid_attributes
      get carrier_url(carrier)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_carrier_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      carrier = Carrier.create! valid_attributes
      get edit_carrier_url(carrier)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Carrier" do
        expect {
          post carriers_url, params: { carrier: valid_attributes }
        }.to change(Carrier, :count).by(1)
      end

      it "redirects to the created carrier" do
        post carriers_url, params: { carrier: valid_attributes }
        expect(response).to redirect_to(carrier_url(Carrier.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Carrier" do
        expect {
          post carriers_url, params: { carrier: invalid_attributes }
        }.to change(Carrier, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post carriers_url, params: { carrier: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested carrier" do
        carrier = Carrier.create! valid_attributes
        patch carrier_url(carrier), params: { carrier: new_attributes }
        carrier.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the carrier" do
        carrier = Carrier.create! valid_attributes
        patch carrier_url(carrier), params: { carrier: new_attributes }
        carrier.reload
        expect(response).to redirect_to(carrier_url(carrier))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        carrier = Carrier.create! valid_attributes
        patch carrier_url(carrier), params: { carrier: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested carrier" do
      carrier = Carrier.create! valid_attributes
      expect {
        delete carrier_url(carrier)
      }.to change(Carrier, :count).by(-1)
    end

    it "redirects to the carriers list" do
      carrier = Carrier.create! valid_attributes
      delete carrier_url(carrier)
      expect(response).to redirect_to(carriers_url)
    end
  end
end
