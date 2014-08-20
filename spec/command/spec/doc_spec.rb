require File.expand_path('../../../spec_helper', __FILE__)

module Pod
  describe Command::Spec::Doc do
    describe 'CLAide' do
      it 'registers it self' do
        Command.parse(%w(spec doc)).should.be.instance_of Command::Spec::Doc
      end
    end
  end
end
