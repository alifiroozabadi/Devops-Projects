#====================#
# vCenter connection #
#====================#

variable "vsphere_user" {
  default = "administrator@abricomp.local"
}

variable "vsphere_password" {
}

variable "vsphere_vcenter" {
  default = "vcenter.abricomp.ir"
}

variable "vsphere_unverified_ssl" {
    default = "true"
}

variable "vsphere_datacenter" {
  default = "AbriComp-SDDC"
}

variable "vsphere_cluster" {
  description = "vSphere cluster"
  default     = "vSAN-Cluster"
}

#=========================#
# vSphere virtual machine #
#=========================#

variable "vm_datastore" {
  description = "Datastore used for the vSphere virtual machines"
  default     = "vSAN-DS"
}

variable "vm_network" {
  description = "Network used for the vSphere virtual machines"
  default     = "Mgmt-VM-Private"
}

variable "vm_template" {
  description = "Template used to create the vSphere virtual machines"
  default     = "Ubuntu" 
}

variable "vm_linked_clone" {
  description = "Use linked clone to create the vSphere virtual machine from the template (true/false). If you would like to use the linked clone feature, your template need to have one and only one snapshot"
  default     = "false"
}

variable "vm_ip" {
  description = "Ip used for the vSpgere virtual machine"
  default  = "172.22.1.92"
}

variable "vm_netmask" {
  description = "Netmask used for the vSphere virtual machine (example: 24)"
  default = "24"
}

variable "vm_gateway" {
  description = "Gateway for the vSphere virtual machine"
  default  = "172.22.1.254"
}

variable "vm_dns" {
  description = "DNS for the vSphere virtual machine"
  default  = "4.2.2.4"
}

variable "vm_domain" {
  description = "Domain for the vSphere virtual machine"
  default = "aryacloud.ir"
}

variable "vm_cpu" {
  description = "Number of vCPU for the vSphere virtual machines"
  default     = "2"
}

variable "vm_ram" {
  description = "Amount of RAM for the vSphere virtual machines (example: 2048)"
  default     = "1024"
}

variable "vm_name" {
  description = "The name of the vSphere virtual machines and the hostname of the machine"
  default  = "devops-project"
}
