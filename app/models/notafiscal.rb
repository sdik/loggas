class Notafiscal < ActiveRecord::Base
   validates_presence_of :numero, :valor
   validates_uniqueness_of :numero
   belongs_to :cliente, :foreign_key => :cliente_id
end