// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sinosoft.model;

import com.sinosoft.enumerator.VirtualMachineDomainStatusEnum;
import com.sinosoft.model.VirtualMachineDomain;
import java.util.Date;

privileged aspect VirtualMachineDomain_Roo_JavaBean {
    
    public String VirtualMachineDomain.getDomainId() {
        return this.domainId;
    }
    
    public void VirtualMachineDomain.setDomainId(String domainId) {
        this.domainId = domainId;
    }
    
    public String VirtualMachineDomain.getDomainName() {
        return this.domainName;
    }
    
    public void VirtualMachineDomain.setDomainName(String domainName) {
        this.domainName = domainName;
    }
    
    public String VirtualMachineDomain.getDescription() {
        return this.description;
    }
    
    public void VirtualMachineDomain.setDescription(String description) {
        this.description = description;
    }
    
    public String VirtualMachineDomain.getCreator() {
        return this.creator;
    }
    
    public void VirtualMachineDomain.setCreator(String creator) {
        this.creator = creator;
    }
    
    public Date VirtualMachineDomain.getCreateTime() {
        return this.createTime;
    }
    
    public void VirtualMachineDomain.setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
    
    public int VirtualMachineDomain.getCpu() {
        return this.cpu;
    }
    
    public void VirtualMachineDomain.setCpu(int cpu) {
        this.cpu = cpu;
    }
    
    public int VirtualMachineDomain.getMemory() {
        return this.memory;
    }
    
    public void VirtualMachineDomain.setMemory(int memory) {
        this.memory = memory;
    }
    
    public int VirtualMachineDomain.getDisk() {
        return this.disk;
    }
    
    public void VirtualMachineDomain.setDisk(int disk) {
        this.disk = disk;
    }
    
    public int VirtualMachineDomain.getInstances() {
        return this.instances;
    }
    
    public void VirtualMachineDomain.setInstances(int instances) {
        this.instances = instances;
    }
    
    public VirtualMachineDomainStatusEnum VirtualMachineDomain.getStatus() {
        return this.status;
    }
    
    public void VirtualMachineDomain.setStatus(VirtualMachineDomainStatusEnum status) {
        this.status = status;
    }
    
    public Date VirtualMachineDomain.getDeleteTime() {
        return this.deleteTime;
    }
    
    public void VirtualMachineDomain.setDeleteTime(Date deleteTime) {
        this.deleteTime = deleteTime;
    }
    
}