Pod::Spec.new do |s|
  s.name         = "Vinger"
  s.version      = "0.1.0"
  s.license      = "MIT"

  s.summary      = "A simple library which shows your fingers on the screen, be gone questions like 'wait where did you tap just now?' \o/"

  s.description  = <<-DESC
                    A simple library which shows your fingers on the screen, helps with demo's and presentations so people actually have a clue where you are tapping.

                    Be gone questions like 'wait where did you tap just now?' \o/
                   DESC

  s.authors           = { "Benjamin de Jager" => "me@m0rph3v5.com" }
  s.social_media_url  = "https://twitter.com/m0rph3v5"
  s.homepage          = "https://github.com/m0rph3v5/Vinger"

  s.ios.deployment_target = '8.0'

  s.source          = { :git => "https://github.com/m0rph3v5/Vinger.git", :tag => s.version }
  s.requires_arc    = true
  s.default_subspec = "Core"

  s.subspec "Core" do |ss|
    ss.source_files  = "src/Vinger"
  end
end
