require 'fastlane/action'
require_relative '../helper/mega_doughnuts_helper'
require 'open_weather'

module Fastlane
  module Actions
    class MegaDoughnutsAction < Action
      def self.run(params)
        UI.message("The mega_doughnuts plugin is working!")
        options = { units: "metric", APPID: "17cfcdc32adbe2e13c85d7f42967c78e" }
        weather = OpenWeather::Current.city("Amsterdam, NL", options)
        puts  weather["weather"][0]["description"]
      end

      def self.description
        "Testing stuff"
      end

      def self.authors
        ["Jan Trutzschler"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "From a workshop"
      end

      def self.available_options
        [
          # FastlaneCore::ConfigItem.new(key: :your_option,
          #                         env_name: "MEGA_DOUGHNUTS_YOUR_OPTION",
          #                      description: "A description of your option",
          #                         optional: false,
          #                             type: String)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://docs.fastlane.tools/advanced/#control-configuration-by-lane-and-by-platform
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
