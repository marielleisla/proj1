class Pokemon < ActiveRecord::Base
    belongs_to :trainer
    validates :name, presence: true, uniqueness: {scope: :name}
end
