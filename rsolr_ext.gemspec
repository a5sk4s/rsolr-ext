Gem::Specification.new do |s|
	s.name = "rsolr_ext"
	s.version = "0.1.0"
	s.date = "2009-03-12"
	s.summary = "An extension lib for RSolr"
	s.email = "goodieboy@gmail.com"
	s.homepage = "http://github.com/mwmitchell/rsolr_ext"
	s.description = "An extension lib for RSolr"
	s.has_rdoc = true
	s.authors = ["Matt Mitchell"]
	s.files = [
	"lib/rsolr_ext.rb",
	"lib/rsolr_ext/params",
	"lib/rsolr_ext/response",
	"lib/rsolr_ext/response/base",
	"lib/rsolr_ext/response/luke",
	"lib/rsolr_ext/response/select",
	"lib/rsolr_ext/response/update",
	"LICENSE",
	"README.rdoc",
	"rsolr_ext.gemspec"
	]
	s.test_files = ['test/rsolr_ext_standard_test.rb', 'test/rsolr_ext_test.rb', 'test/test_unit_test_case.rb']
	s.extra_rdoc_files = %w(LICENSE README.rdoc)
end