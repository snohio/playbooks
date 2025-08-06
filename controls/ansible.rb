control 'ansible-installed' do
  impact 1.0
  title 'Check if Ansible is installed'
  desc 'Ensures that the Ansible executable is available on the system'

  describe package('ansible') do
    it { should be_installed }
  end

  describe file('/usr/bin/ansible-playbook') do
    it { should exist }
    it { should be_executable }
  end
end
