Pod::Spec.new do |spec|
    spec.platform = :ios
    spec.ios.deployment_target = '13.0'
    spec.name = "EnjiatoCore"
    spec.version = "1.0.0"
    spec.summary = "A short description of EnjiatoCore."
    spec.homepage = "http://enjiato.com"
    spec.license = { :type => "MIT", :file => "LICENSE" }
    spec.author = { "Jurek Herwig" => "jurek.herwig@gmail.com" }
    spec.source = { :git => "https://github.com/JurekHerwig/EnjiatoCore.git", :tag => "#{spec.version}" }
    spec.source_files  = "EnjiatoCore/**/*.{swift}"
    spec.swift_version = "5"
  end
  