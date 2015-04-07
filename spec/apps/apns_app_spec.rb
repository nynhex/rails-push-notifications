
module RailsPushNotifications
  describe APNSApp, type: :model do
    it 'creates an instance given valid attributes' do
      APNSApp.create! attributes_for :apns_app
    end

    describe 'validations' do

      let(:app) { build :apns_app }

      it 'requires an apns dev cert' do
        app.apns_dev_cert = nil
        expect(app).to_not be_valid
      end

      it 'requires an apns prod cert' do
        app.apns_prod_cert = nil
        expect(app).to_not be_valid
      end
    end
  end
end
