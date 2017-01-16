require 'ass_tests/minitest'


module ShowdownjsOnesExampleTest
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

  module Runtimes
    module Thin
      is_ole_runtime :thin

      run IB
    end
  end
end

require 'ass_tests/minitest/autorun'
