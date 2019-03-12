require File.expand_path('../../spec_helper', __FILE__)

module Pod
  describe Command::Dependencies do
    describe 'CLAide' do
      it 'registers it self' do
        Command.parse(%w{ dependencies }).should.be.instance_of Command::Dependencies
      end
    end
  end
end

