// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sinosoft.model;

import com.sinosoft.model.VirtualMachine;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect VirtualMachine_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager VirtualMachine.entityManager;
    
    public static final List<String> VirtualMachine.fieldNames4OrderClauseFilter = java.util.Arrays.asList("logger", "hostId", "hostName", "cpu", "memory", "disk", "description", "creator", "manager", "status", "taskStatus", "createTime", "modifyTime", "deleteTime", "domainId", "groupId", "imageName", "privateIp", "floatingIp", "hypervisorName", "disks", "snapshots", "applicationTags");
    
    public static final EntityManager VirtualMachine.entityManager() {
        EntityManager em = new VirtualMachine().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static List<VirtualMachine> VirtualMachine.findAllVirtualMachines() {
        return entityManager().createQuery("SELECT o FROM VirtualMachine o", VirtualMachine.class).getResultList();
    }
    
    public static List<VirtualMachine> VirtualMachine.findAllVirtualMachines(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM VirtualMachine o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, VirtualMachine.class).getResultList();
    }
    
    public static VirtualMachine VirtualMachine.findVirtualMachine(String hostId) {
        if (hostId == null || hostId.length() == 0) return null;
        return entityManager().find(VirtualMachine.class, hostId);
    }
    
    public static List<VirtualMachine> VirtualMachine.findVirtualMachineEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM VirtualMachine o", VirtualMachine.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<VirtualMachine> VirtualMachine.findVirtualMachineEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM VirtualMachine o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, VirtualMachine.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void VirtualMachine.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void VirtualMachine.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            VirtualMachine attached = VirtualMachine.findVirtualMachine(this.hostId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void VirtualMachine.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void VirtualMachine.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public VirtualMachine VirtualMachine.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        VirtualMachine merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
