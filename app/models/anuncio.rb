class Anuncio < ActiveRecord::Base
   validates :titulo, :presence => true, :uniqueness => true
   validates :texto, :presence => true, :uniqueness => true
   validates :numero, :presence => true, :uniqueness => true
end
