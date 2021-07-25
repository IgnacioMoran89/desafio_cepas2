require 'rails_helper'

RSpec.describe "Wines", type: :request do

  before :each do
        @user = User.create(email: "peter@gmail.com", password: "123456", password_confirmation: "123456", admin: true)
        login_as(@user)
  end

  context "GET index (show wines)" do
        it "assign @wines" do
            wine = Wine.create({
                name: "Casillero",

                created_at: DateTime.now,
                updated_at: DateTime.now
            })
            get wines_path
            expect(assigns(:wines)).to eq([wine])
        end

        # La vista index y show renderizan el template correcto
        it "renders the index template" do
            get wines_path
            expect(response).to render_template("index")
        end
  end
	
	describe "GET show" do
        it "renders the template" do
            wine = Wine.create({
                name: "Casillero",

                created_at: DateTime.now,
                updated_at: DateTime.now
            })
            get wine_path( wine.id )
            expect(response).to render_template :show
        end
  end
end
