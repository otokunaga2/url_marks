# -*- encoding: utf-8 -*-
# stub: link_thumbnailer 2.5.1 ruby lib

Gem::Specification.new do |s|
  s.name = "link_thumbnailer"
  s.version = "2.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Pierre-Louis Gottfrois"]
  s.date = "2015-05-01"
  s.description = "Ruby gem generating thumbnail images from a given URL."
  s.email = ["pierrelouis.gottfrois@gmail.com"]
  s.homepage = "https://github.com/gottfrois/link_thumbnailer"
  s.rubygems_version = "2.4.5"
  s.summary = "Ruby gem ranking images from a given URL returning an object containing images and website informations."

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 3.0"])
      s.add_runtime_dependency(%q<json>, [">= 1.7.7", "~> 1.8"])
      s.add_runtime_dependency(%q<rake>, [">= 0.9"])
      s.add_runtime_dependency(%q<nokogiri>, ["~> 1.6"])
      s.add_runtime_dependency(%q<net-http-persistent>, ["~> 2.9"])
      s.add_runtime_dependency(%q<fastimage>, ["~> 1.6"])
      s.add_runtime_dependency(%q<video_info>, ["~> 2.4"])
    else
      s.add_dependency(%q<activesupport>, [">= 3.0"])
      s.add_dependency(%q<json>, [">= 1.7.7", "~> 1.8"])
      s.add_dependency(%q<rake>, [">= 0.9"])
      s.add_dependency(%q<nokogiri>, ["~> 1.6"])
      s.add_dependency(%q<net-http-persistent>, ["~> 2.9"])
      s.add_dependency(%q<fastimage>, ["~> 1.6"])
      s.add_dependency(%q<video_info>, ["~> 2.4"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 3.0"])
    s.add_dependency(%q<json>, [">= 1.7.7", "~> 1.8"])
    s.add_dependency(%q<rake>, [">= 0.9"])
    s.add_dependency(%q<nokogiri>, ["~> 1.6"])
    s.add_dependency(%q<net-http-persistent>, ["~> 2.9"])
    s.add_dependency(%q<fastimage>, ["~> 1.6"])
    s.add_dependency(%q<video_info>, ["~> 2.4"])
  end
end
