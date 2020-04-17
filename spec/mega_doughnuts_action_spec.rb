describe Fastlane::Actions::MegaDoughnutsAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The mega_doughnuts plugin is working!")

      Fastlane::Actions::MegaDoughnutsAction.run(nil)
    end
  end
end
