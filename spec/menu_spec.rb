require 'menu'

describe Menu do
  subject(:menu) { described_class.new }

  it 'lets you browse the list of dishes' do
    expect(menu).to respond_to(:browse)
  end

  describe '#browse' do
    it 'outputs each item with price on separate lines' do
      expect { menu.browse }.to output("bolognese: 7.5\ncarbonara: 6.5\nputtanesca: 5.5\narrabiata: 4.5\n").to_stdout
    end
  end

end
