require_relative "my_solution"

describe "make_address" do
  it 'is defined as a method' do
    expect(defined?(make_address)).to eq 'method'
  end

  it 'accepts four parameters' do
    expect(method(:make_address).arity).to eq 4
  end

  it 'returns the properly formatted address string' do
    output_string = "You live at 780 Cragmont Avenue, in the beautiful city of Berkeley, CA. Your zip is 94708."
    expect(make_address("780 Cragmont Avenue","Berkeley","CA","94708")).to eq output_string
  end
end
