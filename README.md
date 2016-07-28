# Vagrant learn-oo-studio

Vagrant learn-oo-studio creates ready-to-go VM for [HP-OO Studio Community Edition] (http://www8.hp.com/fr/fr/software-solutions/operations-orchestration-it-process-automation/) evaluation/testing

The following is an overview of the ready-to-go VMs:

+ **oo-studio:** Windows 2012R2 Standard VM with below component installed 
 + **Chocolatey:** A Machine Package Manager, like apt-get for Windows.
 + **Git**
 + **WinRar** 
 + **Notepad++** 
 + **HP-OO Studio**

## Requirements

- [VirtualBox](https://www.virtualbox.org/wiki/Downloads). Tested on 5.0.20, but should also work on 5.0.20+ release.
- [Vagrant](http://www.vagrantup.com/downloads.html). Tested on 1.7.4
- Your workstation must have a direct internet connection (not via proxy - if your internet connection is behind a proxy, please check Virtualbox and Vagrant documentation to update Vagrantfile)

**oo-studio** VM provisioned using [opentable/win-2012r2-standard-amd64-nocm] (https://atlas.hashicorp.com/opentable/boxes/win-2012r2-standard-amd64-nocm/) box from Atlas Hashicorp

## VMs details

VM | vCPU/vRAM | IP Address| user/password |  Administrator password |
---|---|---|---|---|
**oo-studio** | 2vCPU/4096 MB | 10.154.128.10 | vagrant | vagrant |

+ **Recommended hardware :** Computer with Multi-core CPU and 8GB+ memory
+ **Note :** If your computer hardware is less than 16GB memory you should decrease vRAM in Vagrantfile, Windows2012R2 standard should work fine with 2048MB but with less performances

## Installation

#### Getting started:

Run the commands below:

	git clone https://github.com/gilleslabs/learn-oo-studio
	cd learn-oo-studio


#### Prepare the installation:

In order to install HP OO Studio you must get it from the HP OO Community Edition Docker [container] (https://hub.docker.com/r/hpsoftware/ooce/)

###### Steps for preparing installation:

1. Copy the **community-installer-win64-studio.exe** you get from the container to **learn-oo-studio/src** folder (**this has to be done only once**)

#### Launching the whole environment:

1. Run the commands below:

	```
	cd learn-oo-studio
	vagrant up
	```

2. The setup will take some time to finish (approximatively 15 minutes depending on your hardware). Sit back and enjoy!

3. When the setup is done you will be able to connect to any of the VMs using your favorite RDP client and credentials provided in [VMs details] (https://github.com/gilleslabs/learn-oo-studio#vms-details) 


## MIT

Copyright (c) 2016 Gilles Tosi

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE