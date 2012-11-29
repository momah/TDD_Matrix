require "rspec"
require "matrix"
require "racional"

describe Matrix do
  before :each do
    @matrixnumeric_1 = Matrix.new([[1,1],[2,2]])
    @matrixnumeric_2 = Matrix.new([[0,1],[1,1]])

  end

  it "Se debe poder sumar dos matrices de enteros" do
    (@matrixnumeric_1 + @matrixnumeric_2).matrix.inspect.should == "[[1, 2], [3, 3]]"
  end

end
