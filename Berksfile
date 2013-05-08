site :opscode

metadata

group :test do
  # use master commits like we do in chef-cookbooks
  cookbook 'apt', :git =>  'https://github.com/opscode-cookbooks/apt.git'
  cookbook 'yum', :git =>  'https://github.com/opscode-cookbooks/yum.git'

  # use out local test cookbooks
  cookbook 'monit_test', :path => './test/cookbooks/monit_test'

  # use specific version until minitest file discovery is fixed
  cookbook 'minitest-handler', '0.1.7'
end
