class Racional
  
  include Comparable
  include Enumerable
  
  def initialize(numerador, denominador)
    max = mcd(numerador, denominador)
    @numerador, @denominador = numerador/max, denominador/max
  end
  
  attr_reader :numerador, :denominador


  def mcd(a,b) #codigo en http://fromgus.blogspot.com.es/2009/05/maximo-comun-divisor.html
	d = a.abs, b.abs
	while d.min != 0
	  d = d.min, d.max % d.min
	end
	return d.max
  end

  def num
    	@numerador
  end
  
  def denom
    	@denominador
  end
 
  def fraccion
    	return "#{self.num()} / #{self.denom()}"
  end

  def flotante
	return self.num().to_f / self.denom().to_f
  end

  def ==(other)
	if ((other.num() == self.num()) && (other.denom() == self.denom()))
		return true
	else
		return false
	end
  end

  def -@ 
	return "-#{self.num()} / #{self.denom()}"	
  end
  
  def abs
	if self.num() < 0
		return Racional.new(-self.num(), self.denom())
	elsif self.denom() < 0
		return Racional.new(self.num(), -self.denom())
	else
		return Racional.new(self.num(), self.denom())
  end

  def reciprocal
	return "#{self.denom()} / #{self.num()}"    	
  end

  def +(other)
    	return Racional.new(self.num() * other.denom() + other.num() * self.denom(), self.denom() * other.denom()).fraccion
  end

  def -(other)
    	return Racional.new(self.num() * other.denom() - other.num() * self.denom(), self.denom() * other.denom()).fraccion
  end
  
  def *(other)
    	return Racional.new(self.num() * other.num(), self.denom() * other.denom()).fraccion
  end
  
  def /(other)
    	return Racional.new(self.num() * other.denom(), self.denom() * other.num()).fraccion
  end

  def %(other)
    	return Racional.new(self.num() % self.denom(), other.num() % other.denom()).fraccion
  end

  def <=>(other)

	return nil unless other.instance_of? Racional
	slf = self.num().to_f / self.denom().to_f
	othr = other.num().to_f / other.denom().to_f
	slf <=> othr

  end
end
