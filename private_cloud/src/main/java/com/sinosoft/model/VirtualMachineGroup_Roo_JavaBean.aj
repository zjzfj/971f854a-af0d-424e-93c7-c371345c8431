// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sinosoft.model;

import com.sinosoft.enumerator.VirtualMachineGroupStatusEnum;
import com.sinosoft.model.VirtualMachineGroup;
import java.util.Date;

privileged aspect VirtualMachineGroup_Roo_JavaBean {
    
    public String VirtualMachineGroup.getGroupId() {
        return this.groupId;
    }
    
    public void VirtualMachineGroup.setGroupId(String groupId) {
        this.groupId = groupId;
    }
    
    public String VirtualMachineGroup.getGroupName() {
        return this.groupName;
    }
    
    public void VirtualMachineGroup.setGroupName(String groupName) {
        this.groupName = groupName;
    }
    
    public String VirtualMachineGroup.getDescription() {
        return this.description;
    }
    
    public void VirtualMachineGroup.setDescription(String description) {
        this.description = description;
    }
    
    public String VirtualMachineGroup.getDomainId() {
        return this.domainId;
    }
    
    public void VirtualMachineGroup.setDomainId(String domainId) {
        this.domainId = domainId;
    }
    
    public String VirtualMachineGroup.getCreator() {
        return this.creator;
    }
    
    public void VirtualMachineGroup.setCreator(String creator) {
        this.creator = creator;
    }
    
    public Date VirtualMachineGroup.getCreateTime() {
        return this.createTime;
    }
    
    public void VirtualMachineGroup.setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
    
    public Integer VirtualMachineGroup.getCpu() {
        return this.cpu;
    }
    
    public void VirtualMachineGroup.setCpu(Integer cpu) {
        this.cpu = cpu;
    }
    
    public Integer VirtualMachineGroup.getMemory() {
        return this.memory;
    }
    
    public void VirtualMachineGroup.setMemory(Integer memory) {
        this.memory = memory;
    }
    
    public Integer VirtualMachineGroup.getDisk() {
        return this.disk;
    }
    
    public void VirtualMachineGroup.setDisk(Integer disk) {
        this.disk = disk;
    }
    
    public Integer VirtualMachineGroup.getInstances() {
        return this.instances;
    }
    
    public void VirtualMachineGroup.setInstances(Integer instances) {
        this.instances = instances;
    }
    
    public VirtualMachineGroupStatusEnum VirtualMachineGroup.getStatus() {
        return this.status;
    }
    
    public void VirtualMachineGroup.setStatus(VirtualMachineGroupStatusEnum status) {
        this.status = status;
    }
    
    public Date VirtualMachineGroup.getDeleteTime() {
        return this.deleteTime;
    }
    
    public void VirtualMachineGroup.setDeleteTime(Date deleteTime) {
        this.deleteTime = deleteTime;
    }
    
}
