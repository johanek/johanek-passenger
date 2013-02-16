require 'spec_helper'

describe 'passenger', :type => :class do

  context 'no parameters' do
     it { should create_class('passenger::config')}
     it { should create_class('passenger::install')}

     it { should contain_file('/etc/httpd/conf.d/passenger.conf').with_content(/# File Managed by Puppet/)}
  end
  
end