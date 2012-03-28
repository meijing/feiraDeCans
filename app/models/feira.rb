class Feira < ActiveRecord::Base
  def to_param
    self.nome
  end
end
