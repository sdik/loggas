class Detale < ActiveRecord::Base
     belongs_to :implate
     belongs_to :produto
     before_save :calcula_total
     def calcula_total
      self.total = self.unitario * self.quantidade
     end;
end
