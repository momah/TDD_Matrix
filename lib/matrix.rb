require "racional"

class Matrix

	def initialize(matriz)
		@matrix = matriz
		@filas = matriz.size
		@columnas = matriz[0].size
		@formato = if matrix[0][0].is_a? Racional then "racional" else "numeric" end
	end
	  
	attr_reader :matrix, :filas, :columnas, :formato
	
	def matrix
		i = 0
		j = 0
	  	puts ""
	  	while i < filas
	    		while j < columnas
			   if formato == numeric then
				print("#{matrix[i][j]} ")
			   elsif formato == racional
		 		print("#{matrix[i][j].fraccion} ")
			   j += 1
			   elsif
				puts"formato matriz no valido!!"
	    		   end
	    		   puts ""
	    		   i += 1
			   j = 0
	  		end
	  		puts ""
	    	end
		puts ""
	end


	def +(other)
		i = 0
		j = 0
		sum = @matrix
		while i < @filas   
		   while j < @columnas
			if formato == "numeric" then
				sum[i][j] += other.matrix[i][j]
			else formato == racional				
				sum[i][j] = sum[i][j].fraccion + other.matrix[i][j].fraccion
			end			
			j += 1
		   end
		   i += 1
		   j = 0
		end
		return sum
	end

 	def *(other)
		i = 0
		j = 0
		mul = @matrix
		while i < @filas
		   while j < @columnas
			mul[i][j] *= other.matrix[i][j]
			j += 1
		   end
		   i += 1
		   j = 0
		end
		return mul
	end
end

