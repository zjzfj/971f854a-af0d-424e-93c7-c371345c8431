// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sinosoft.model;

import com.sinosoft.model.PhysicalMachineLoad;
import java.util.Date;

privileged aspect PhysicalMachineLoad_Roo_JavaBean {
    
    public String PhysicalMachineLoad.getHostName() {
        return this.hostName;
    }
    
    public void PhysicalMachineLoad.setHostName(String hostName) {
        this.hostName = hostName;
    }
    
    public Float PhysicalMachineLoad.getCpuLoad() {
        return this.cpuLoad;
    }
    
    public void PhysicalMachineLoad.setCpuLoad(Float cpuLoad) {
        this.cpuLoad = cpuLoad;
    }
    
    public Float PhysicalMachineLoad.getCpuIdle() {
        return this.cpuIdle;
    }
    
    public void PhysicalMachineLoad.setCpuIdle(Float cpuIdle) {
        this.cpuIdle = cpuIdle;
    }
    
    public Float PhysicalMachineLoad.getCpuUser() {
        return this.cpuUser;
    }
    
    public void PhysicalMachineLoad.setCpuUser(Float cpuUser) {
        this.cpuUser = cpuUser;
    }
    
    public Float PhysicalMachineLoad.getCpuSystem() {
        return this.cpuSystem;
    }
    
    public void PhysicalMachineLoad.setCpuSystem(Float cpuSystem) {
        this.cpuSystem = cpuSystem;
    }
    
    public Float PhysicalMachineLoad.getFreeMemory() {
        return this.freeMemory;
    }
    
    public void PhysicalMachineLoad.setFreeMemory(Float freeMemory) {
        this.freeMemory = freeMemory;
    }
    
    public Float PhysicalMachineLoad.getFreeDisk() {
        return this.freeDisk;
    }
    
    public void PhysicalMachineLoad.setFreeDisk(Float freeDisk) {
        this.freeDisk = freeDisk;
    }
    
    public Float PhysicalMachineLoad.getBytesIn() {
        return this.bytesIn;
    }
    
    public void PhysicalMachineLoad.setBytesIn(Float bytesIn) {
        this.bytesIn = bytesIn;
    }
    
    public Float PhysicalMachineLoad.getBytesOut() {
        return this.bytesOut;
    }
    
    public void PhysicalMachineLoad.setBytesOut(Float bytesOut) {
        this.bytesOut = bytesOut;
    }
    
    public Date PhysicalMachineLoad.getReportTime() {
        return this.reportTime;
    }
    
    public void PhysicalMachineLoad.setReportTime(Date reportTime) {
        this.reportTime = reportTime;
    }
    
}