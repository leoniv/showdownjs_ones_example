require 'test_helper'

module ShowdownjsOnesExampleTest
  describe 'Run example' do
    like_ole_runtime Runtimes::Thin

    def wait
      print "Close designer for exit from example"
      designer.run.wait
      puts 'By ;)'
    end

    def designer_get
      IB.designer
    end

    def designer
      @designer ||= IB.designer
    end

    it 'run' do
      designer.run
      sleep 2
      getForm("Обработка.Example.Form.Form").Open
      wait
    end
  end
end
