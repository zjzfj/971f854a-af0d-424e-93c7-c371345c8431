// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sinoparasoft.model;

import com.sinoparasoft.model.PhysicalMachineType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Version;

privileged aspect PhysicalMachineType_Roo_Jpa_Entity {
    
    declare @type: PhysicalMachineType: @Entity;
    
    @Version
    @Column(name = "version")
    private Integer PhysicalMachineType.version;
    
    public Integer PhysicalMachineType.getVersion() {
        return this.version;
    }
    
    public void PhysicalMachineType.setVersion(Integer version) {
        this.version = version;
    }
    
}