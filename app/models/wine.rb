class Wine < ApplicationRecord
    has_many :wines_strains, dependent: :destroy
    has_many :strains, through: :wines_strains

    accepts_nested_attributes_for :wines_strains, reject_if: :all_blank, allow_destroy: true

    def addStrainPercent(percents)
        percents.each do |strain_id, percent|
            if percent != ""
                temp_strain = self.wines_strains.where(strain_id: strain_id.to_i).first
                temp_strain.percent = percent.to_i
                temp_strain.save
            end
        end
    end

    def getPercentByStrainId(strain_id)
        if self.wines_strains.where(strain_id: strain_id.to_i).first
            self.wines_strains.where(strain_id: strain_id.to_i).first.percent
        end
    end
end
