# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ystock}
  s.version = "0.2.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Greg Winn"]
  s.date = %q{2012-05-18}
  s.description = %q{Get stock information from Yahoo Finance}
  s.email = %q{greg@winn.ws}
  s.extra_rdoc_files = ["README.rdoc", "lib/ystock.rb"]
  s.files = ["Manifest", "README.rdoc", "Rakefile", "init.rb", "lib/ystock.rb", "ystock.gemspec"]
  s.homepage = %q{http://github.com/gregwinn/ystock}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Ystock", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{ystock}
  s.rubygems_version = %q{1.5.0}
  s.summary = %q{Get stock information from Yahoo Finance}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
