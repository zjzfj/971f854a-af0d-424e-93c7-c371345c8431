// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sinosoft.model;

import com.sinosoft.model.PhysicalMachineLoad;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect PhysicalMachineLoad_Roo_Jpa_Entity {
    
    declare @type: PhysicalMachineLoad: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long PhysicalMachineLoad.id;
    
    @Version
    @Column(name = "version")
    private Integer PhysicalMachineLoad.version;
    
    public Long PhysicalMachineLoad.getId() {
        return this.id;
    }
    
    public void PhysicalMachineLoad.setId(Long id) {
        this.id = id;
    }
    
    public Integer PhysicalMachineLoad.getVersion() {
        return this.version;
    }
    
    public void PhysicalMachineLoad.setVersion(Integer version) {
        this.version = version;
    }
    
}
