// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sinosoft.model;

import com.sinosoft.model.MonitorLog;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect MonitorLog_Roo_Jpa_Entity {
    
    declare @type: MonitorLog: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long MonitorLog.id;
    
    @Version
    @Column(name = "version")
    private Integer MonitorLog.version;
    
    public Long MonitorLog.getId() {
        return this.id;
    }
    
    public void MonitorLog.setId(Long id) {
        this.id = id;
    }
    
    public Integer MonitorLog.getVersion() {
        return this.version;
    }
    
    public void MonitorLog.setVersion(Integer version) {
        this.version = version;
    }
    
}