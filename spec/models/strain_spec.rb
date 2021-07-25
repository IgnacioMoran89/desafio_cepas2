require 'rails_helper'

RSpec.describe Strain, type: :model do

  # Que las cepas no pueden tener el mismo nombre
  it "validates uniqueness name of a strain" do
    should validate_uniqueness_of(:name)
  end

#Una cepa no puede tener un nombre vacío, probar 3 casos:
#nombre = nil
  it "is invalid without no name" do
    strain = Strain.new(name: nil)
    expect(strain).to be_invalid
  end

#nombre = ""
  it "is invalid with a blank name" do
    strain = Strain.new(name: "")
    expect(strain).to be_invalid
  end

  #nombre “Carmenere”
  it "is valid with a name" do
    strain = Strain.new(name: "Carmenere")
    expect(strain).to be_valid
  end
end
