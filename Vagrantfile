ANSIBLE_GROUPS = {
    "master" => ["devnode1"],
    "nodes" => ["devnode2"],
    "all_groups:children" => ["master", "nodes"]
}

Vagrant.configure(2) do |config|
    config.vm.box = "bento/centos-7.1"

    config.hostmanager.enabled = true
    config.hostmanager.manage_host = true

    config.vm.define "devnode1" do |devnode1|
        devnode1.vm.network "private_network", ip: "192.168.31.10"
        # Use NFS for shared folders for better performance
        devnode1.vm.synced_folder '.', '/vagrant', nfs: true
        # devnode1.vm.synced_folder 'var/lib/docker/', '/var/lib/docker/', nfs: true, create: true
        devnode1.vm.hostname = "devnode1"
        devnode1.vm.provider "virtualbox" do |v|
            v.customize ["modifyvm", :id, "--cpus", "2", "--memory", "4096"]
        end
        devnode1.vm.provision "ansible" do |ansible|
            ansible.playbook = "playbook.yml"
            ansible.groups = ANSIBLE_GROUPS
        end
    end

    config.vm.define "devnode2" do |devnode2|
        devnode2.vm.network "private_network", ip: "192.168.31.11"
        # Use NFS for shared folders for better performance
        devnode2.vm.synced_folder '.', '/vagrant', nfs: true
        # devnode2.vm.synced_folder 'var/lib/docker/', '/var/lib/docker/', nfs: true, create: true
        devnode2.vm.hostname = "devnode2"
        devnode2.vm.provider "virtualbox" do |v|
            v.customize ["modifyvm", :id, "--cpus", "2", "--memory", "4096"]
        end
        devnode2.vm.provision "ansible" do |ansible|
            ansible.playbook = "playbook.yml"
            ansible.groups = ANSIBLE_GROUPS
        end
    end
end
