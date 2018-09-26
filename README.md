# packer-Win10

## What is packer-Win10 ?

packer-Win10 is a set of configuration files used to build automated Windows 10 virtual machine images using [Packer](https://www.packer.io/).
This Packer configuration file allows you to build images for VMware Workstation and Oracle VM VirtualBox.

## Prerequisites

* [Packer](https://www.packer.io/downloads.html)
  * <https://www.packer.io/intro/getting-started/install.html>
* A Hypervisor
  * [VMware Workstation](https://www.vmware.com/products/workstation-pro.html)
  * [Oracle VM VirtualBox](https://www.virtualbox.org/)

## How to use Packer

Commands to create an automated VM image:

To create a Windows 10 VM image using VMware Workstation use the following commands:

```sh
cd c:\packer-Win10
packer build -only=vmware-iso win10.json
```

To create a Windows 10 VM image using Oracle VM VirtualBox use the following commands:

```sh
cd c:\packer-Win10
packer build -only=virtualbox-iso win10.json
```

*If you omit the keyword "-only=" images for both Workstation and Virtualbox will be created.*

By default the .iso of Windows 10 is pulled from <https://software-download.microsoft.com/pr/Win10_1803_French_x64.iso?t=380427eb-8eb4-49c9-9afd-48e326285c4f&e=1538038982&h=cc9a13f58840b011552299747b07110f>

You can change the URL to one closer to your build server. To do so change the **"iso_url"** parameter in the **"variables"** section of the debian9.json file.

```json
{
  "variables": {
      "iso_url": "https://software-download.microsoft.com/pr/Win10_1803_French_x64.iso?t=380427eb-8eb4-49c9-9afd-48e326285c4f&e=1538038982&h=cc9a13f58840b011552299747b07110f"
}
```

## Default credentials

The default credentials for this VM image are:

|Username|Password|
|--------|--------|
|packer|packer|
|administrator|packer|