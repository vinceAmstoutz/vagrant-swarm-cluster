# Docker Swarm Cluster with Vagrant

Project to install a ``Docker Swarm cluster`` thanks to ``Vagrant``.

Getting started
---------------

1. Clone this repository using HTTPS or SSH
2. Install [Vagrant](https://www.vagrantup.com/downloads.html) & [VirtualBox](https://www.virtualbox.org/wiki/Downloads).
3. Config the cluster in the [Vagrantfile](Vagrantfile) if you need it:
    ```ruby
    #Vagrantfile
    
    #Config
    BOX_DISTRIBUTION = "ubuntu/jammy64" #Ubuntu distribution(see wiki.ubuntu.com/Releases)
    MEMORY = "1024" #Memory allocated to each machine
    MANAGERS = 1 #Number of managers
    MANAGER_IP = "172.20.20.1" #Manager IP
    WORKERS = 3 #Number of workers
    WORKER_IP = "172.20.20.10" #Workers ip
    CPUS = 2 #Number of CPUs allocated to each machine
    VAGRANTFILE_API_VERSION = "2" #Vagrantfile version
    ```
4. Run the installation with : `make up` or `vagrant up`

:tada: The cluster is now working!

Other commands
--------------
:bulb: You can list all available commands with `make help`.

Otherwise :
- Remove all managers & workers resources : `make remove` or `vagrant destroy`
- Suspend all machines in their current state with `make pause` or `vagrant suspend`

License
-------
See the [LICENSE file](/LICENSE).

Credits
-------
- *Docker Swarm Cluster Setup With Vagrant*, Gaurav Talele, [on medium.com](https://gauravtalele.medium.com/docker-swarm-cluster-setup-with-vagrant-bca5ddb7a672).
- Inspired by [tdi/vagrant-docker-swarm](https://github.com/tdi/vagrant-docker-swarm) (but with less complexity and updated).