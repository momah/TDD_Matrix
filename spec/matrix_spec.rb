require "rspec"
require "matrix"
require "racional"

describe Matrix do
  before :each do
    @matrixnumeric_1 = Matrix.new([[1,1],[2,2]])
    @matrixnumeric_2 = Matrix.new([[0,1],[1,1]])

    medio = Racional.new(1,2)
    tercio = Racional.new(1,3)
    cuarto = Racional.new(1,4)
    quinto = Racional.new(1,5)

    
    dosmedio = Racional.new(2,2)
    dostercios = Racional.new(2,3)
    doscuartos = Racional.new(2,4)
    dosquintos = Racional.new(2,5)

    @matrixracional_1 = Matrix.new([[medio,tercio],[[cuarto,quinto]])
    @matrixracional_2 = Matrix.new([[dosmedio,dostercios],[[doscuartos,dosquintos]])

  end

  it "Se debe poder sumar dos matrices de enteros" do
    (@matrixnumeric_1 + @matrixnumeric_2).matrix.inspect.should == "[[1, 2], [3, 3]]"
  end

   it "Se debe poder multiplicar una matriz de Enteros" do
    (@matrixnumeric_1 + @matrixnumeric_2).matrix.inspect.should == "[[0, 1], [2, 2]]"
  end

  it "Se debe poder sumar dos matrices de racionales" do
    (@matrixracional_1 + @matrixracional_2).racional.should == "[[3/2, 1/1], [3/4, 3/5]]"
  end

  it "Se debe poder multiplicar dos matrices de Racionales" do
    (@matrix_racional_1 * @matrix_racional_2).racional.should == "[[1/2, 2/9], [1/4, 2/25]]"
  end
end
