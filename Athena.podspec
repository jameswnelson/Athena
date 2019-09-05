#
# Be sure to run `pod lib lint Athena.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = 'Athena'
s.version          = '0.1.0'
s.summary          = 'Athena is goddess of wisdom, mathematics, crafts, and skill.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

s.description      = <<-DESC
Athena is goddess of wisdom, courage, inspiration, civilization, law and justice, strategic warfare, mathematics, strength, strategy, the arts, crafts, and skill.
DESC

s.homepage         = 'https://github.com/jameswnelson/Athena'
s.license          = { :type => 'MIT', :file => 'LICENSE' }

s.author           = { 'James Nelson' => 'jameswnelson@me.com' }
s.source           = { :git => 'https://github.com/jameswnelson/Athena.git', :tag => s.version.to_s }
s.social_media_url   = 'https://github.com/jameswnelson'

s.swift_version = '5.0'
s.ios.deployment_target = '10.0'

s.source_files = 'Athena/Classes/**/*'

end
