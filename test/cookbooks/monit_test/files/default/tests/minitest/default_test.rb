require_relative './support/helpers'

describe_recipe 'monit_test::default' do
  include MonitTestHelpers

  describe 'creates a monit configuration file' do
    let(:config) { file(::File.join(node['monit']['config_file'])) }

    it { config.must_exist }
  end

  describe 'runs the application as a service' do
    it { service('monit').must_be_enabled }
    it { service('monit').must_be_running }
  end
end
