describe Holiday do
  describe '.all' do
    subject(:holidays) { Holiday.all }

    it 'returns all holidays' do
      expect(holidays.count).to eq(12)
    end
  end

  describe '.find' do
    subject(:holiday) { Holiday.find(region) }

    let(:region) { 'Zante' }

    it { is_expected.to eq('region' => 'Zante', 'price' => 1400) }

    context 'when it is not found' do
      let(:region) { 'Timbuktu' }

      it { is_expected.to be_nil }
    end
  end
end
