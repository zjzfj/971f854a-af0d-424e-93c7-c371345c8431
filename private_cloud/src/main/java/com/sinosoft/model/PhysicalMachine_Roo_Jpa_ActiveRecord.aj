// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sinosoft.model;

import com.sinosoft.model.PhysicalMachine;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PhysicalMachine_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager PhysicalMachine.entityManager;
    
    public static final List<String> PhysicalMachine.fieldNames4OrderClauseFilter = java.util.Arrays.asList("hostId", "hostName", "ipAddress", "status", "cpuNumber", "memorySize", "diskSize", "description", "verified", "hypervisorId", "createTime", "types");
    
    public static final EntityManager PhysicalMachine.entityManager() {
        EntityManager em = new PhysicalMachine().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long PhysicalMachine.countPhysicalMachines() {
        return entityManager().createQuery("SELECT COUNT(o) FROM PhysicalMachine o", Long.class).getSingleResult();
    }
    
    public static List<PhysicalMachine> PhysicalMachine.findAllPhysicalMachines() {
        return entityManager().createQuery("SELECT o FROM PhysicalMachine o", PhysicalMachine.class).getResultList();
    }
    
    public static List<PhysicalMachine> PhysicalMachine.findAllPhysicalMachines(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM PhysicalMachine o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, PhysicalMachine.class).getResultList();
    }
    
    public static PhysicalMachine PhysicalMachine.findPhysicalMachine(String hostId) {
        if (hostId == null || hostId.length() == 0) return null;
        return entityManager().find(PhysicalMachine.class, hostId);
    }
    
    public static List<PhysicalMachine> PhysicalMachine.findPhysicalMachineEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM PhysicalMachine o", PhysicalMachine.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<PhysicalMachine> PhysicalMachine.findPhysicalMachineEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM PhysicalMachine o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, PhysicalMachine.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void PhysicalMachine.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void PhysicalMachine.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            PhysicalMachine attached = PhysicalMachine.findPhysicalMachine(this.hostId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void PhysicalMachine.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void PhysicalMachine.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public PhysicalMachine PhysicalMachine.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        PhysicalMachine merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
