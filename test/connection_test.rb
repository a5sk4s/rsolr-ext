require 'test_unit_test_case'
require File.join(File.dirname(__FILE__), '..', 'lib', 'rsolr-ext')
require 'helper'

class RSolrExtConnectionTest < Test::Unit::TestCase
  
  test 'the #connect method' do
    connection = RSolr::Ext.connect
    assert connection.respond_to?(:find)
  end
  
  test 'the #find method' do
    connection = RSolr::Ext.connect
    response = connection.find 3, 10, :q=>'*:*'#, :page=>1, :per_page=>10
    assert response.kind_of?(Mash)
    #r = connection.find 3, 5, :q=>'*:*', :phrase_queries=>'rose'
    #assert ! r.header[:params].include?(:phrase_queries)
  end
  
  test 'the #find method with a custom request handler' do
    connection = RSolr::Ext.connect
    response = connection.find '/select', :q=>'*:*'
    assert response.raw[:path]=~/\/select/
  end
  
  test 'the response' do
    connection = RSolr::Ext.connect
    response = connection.find :q=>'*:*'
    assert response.respond_to?(:ok?)
    assert response.ok?
    assert_equal response.docs[0][:id], response.docs[0].id
  end
  
  test 'the #luke method' do
    info = RSolr::Ext.connect.luke
    assert info.kind_of?(Mash)
    assert info.key?('fields')
    assert info.key?('index')
    assert info.key?('info')
  end
  
end