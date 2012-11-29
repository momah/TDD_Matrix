require "racional"

class Matrix

	def initialize(matriz)
		@matrix = matriz
		@filas = matriz.size
		@columnas = matriz[0].size
	end
	  
	attr_reader :matrix, :filas, :columnas
	
	def matrix
	   formato = numeric
	   if matrix[0][0].is_a? Racional then
	   	formato = racional
	   end	
		i = 0
		j = 0
	  	puts ""
	  	while i < filas
	    	   while j < columnas
			print("#{matrix[i][j]} ")
			j += 1
	  		puts ""
	    	   end
		   i += 1
		   j = 0
		   puts ""
		end
	
	end

	def +(other)
    	return Racional.new(self.num() * other.denom() + other.num() * self.denom(), self.denom() * other.denom()).fraccion
  	end



	 def +(other)
		i = 0
		j = 0		
		Matrix.new(sum)
		sum = @matrix
		while i < @filas   
		   while j < @columnas
			sum[i][j] += other.matrix[i][j]
			j += 1
		   end
		   i += 1
		   j = 0
		end
		return sum
	end
end

