require 'ass_tests'


class ShowdownjsOnesExampleTest
  module Fixt
    TMP_DIR = File.expand_path('../../tmp', __FILE__)
    FileUtils.mkdir_p TMP_DIR
    APP_CF = File.expand_path('../../showdownjs_ones_example.cf', __FILE__)
  end

  AssTests::InfoBases.describe do
    file :showdownjs_ones_example do
      platform_require '~> 8.3.9.0'
      template ShowdownjsOnesExampleTest::Fixt::APP_CF
      directory ShowdownjsOnesExampleTest::Fixt::TMP_DIR
    end
  end

  IB = AssTests::InfoBases[:showdownjs_ones_example]

  IB.rebuild! :yes

  def wait
    print 'Press Ctrl-C or close designer for exit from example. '
    designer.run.wait
  end

  def self.enterprise
    @enterprise ||= IB.enterprise :thin do
      dEbug
      debuggerUrl 'tcp://localhost'
    end
  end

  def self.designer
    @designer ||= IB.designer
  end

  def designer
    self.class.designer
  end

  def enterprise
    self.class.enterprise
  end

  def thread
    @thread ||= Thread.current
  end

  trap 'SIGINT' do
    puts 'Bye ;)'
    exit!
  end

  at_exit do
    puts 'Bye ;)'
  end

  def run
    thread
    designer.run
    enterprise.run
    wait
    enterprise.process_holder.kill
  end
end
