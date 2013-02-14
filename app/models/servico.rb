class Servico < ActiveRecord::Base
  belongs_to :cliente, :foreign_key => :cliente_id
  belongs_to :tecnico, :foreign_key => :tecnico_id
  belongs_to :consultor, :foreign_key => :consultor_id
end
