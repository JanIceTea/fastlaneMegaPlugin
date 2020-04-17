require 'fastlane_core/ui/ui'

module Fastlane
  UI = FastlaneCore::UI unless Fastlane.const_defined?("UI")

  module Helper
    class MegaDoughnutsHelper
      # class methods that you define here become available in your action
      # as `Helper::MegaDoughnutsHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the mega_doughnuts plugin helper!")
      end
    end
  end
end
