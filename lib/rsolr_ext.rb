module RSolrExt
  
  autoload :Helpers, 'rsolr_ext/helpers.rb'
  autoload :ToSolrable, 'rsolr_ext/to_solrable.rb'
  autoload :Response, 'rsolr_ext/response'
  autoload :Request, 'rsolr_ext/request'
  
end # end RSolrExt

include RSolrExt::Request::Select