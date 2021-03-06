// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sinosoft.model;

import com.sinosoft.enumerator.AlarmSeverityEnum;
import com.sinosoft.enumerator.MonitorNameEnum;
import com.sinosoft.enumerator.MonitorSourceEnum;
import com.sinosoft.enumerator.MonitorTypeEnum;
import com.sinosoft.model.Monitor;

privileged aspect Monitor_Roo_JavaBean {
    
    public MonitorSourceEnum Monitor.getMonitorSource() {
        return this.monitorSource;
    }
    
    public void Monitor.setMonitorSource(MonitorSourceEnum monitorSource) {
        this.monitorSource = monitorSource;
    }
    
    public MonitorTypeEnum Monitor.getMonitorType() {
        return this.monitorType;
    }
    
    public void Monitor.setMonitorType(MonitorTypeEnum monitorType) {
        this.monitorType = monitorType;
    }
    
    public MonitorNameEnum Monitor.getMonitorName() {
        return this.monitorName;
    }
    
    public void Monitor.setMonitorName(MonitorNameEnum monitorName) {
        this.monitorName = monitorName;
    }
    
    public String Monitor.getDescription() {
        return this.description;
    }
    
    public void Monitor.setDescription(String description) {
        this.description = description;
    }
    
    public Float Monitor.getDefaultThreshold() {
        return this.defaultThreshold;
    }
    
    public void Monitor.setDefaultThreshold(Float defaultThreshold) {
        this.defaultThreshold = defaultThreshold;
    }
    
    public String Monitor.getThresholdUnit() {
        return this.thresholdUnit;
    }
    
    public void Monitor.setThresholdUnit(String thresholdUnit) {
        this.thresholdUnit = thresholdUnit;
    }
    
    public AlarmSeverityEnum Monitor.getSeverityLevel() {
        return this.severityLevel;
    }
    
    public void Monitor.setSeverityLevel(AlarmSeverityEnum severityLevel) {
        this.severityLevel = severityLevel;
    }
    
}
