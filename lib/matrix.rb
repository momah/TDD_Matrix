require "racional"

class Matrix

	def initialize(matriz)
		@matrix = matriz
		@filas = matriz.size
		@columnas = matriz[0].size

	end
	  
	attr_reader :matrix, :filas, :columnas

end

