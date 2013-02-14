class Implate < ActiveRecord::Base
      validates_presence_of :quantidade, :tanque
      belongs_to :cliente, :foreign_key => :cliente_id
      has_many :detales
end
