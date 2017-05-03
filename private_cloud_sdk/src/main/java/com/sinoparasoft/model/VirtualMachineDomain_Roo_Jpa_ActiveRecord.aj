// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sinoparasoft.model;

import com.sinoparasoft.model.VirtualMachineDomain;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect VirtualMachineDomain_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager VirtualMachineDomain.entityManager;
    
    public static final List<String> VirtualMachineDomain.fieldNames4OrderClauseFilter = java.util.Arrays.asList("domainId", "domainName", "description", "creator", "createTime", "cpu", "memory", "disk", "instances", "status", "deleteTime");
    
    public static final EntityManager VirtualMachineDomain.entityManager() {
        EntityManager em = new VirtualMachineDomain().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long VirtualMachineDomain.countVirtualMachineDomains() {
        return entityManager().createQuery("SELECT COUNT(o) FROM VirtualMachineDomain o", Long.class).getSingleResult();
    }
    
    public static List<VirtualMachineDomain> VirtualMachineDomain.findAllVirtualMachineDomains() {
        return entityManager().createQuery("SELECT o FROM VirtualMachineDomain o", VirtualMachineDomain.class).getResultList();
    }
    
    public static List<VirtualMachineDomain> VirtualMachineDomain.findAllVirtualMachineDomains(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM VirtualMachineDomain o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, VirtualMachineDomain.class).getResultList();
    }
    
    public static VirtualMachineDomain VirtualMachineDomain.findVirtualMachineDomain(String domainId) {
        if (domainId == null || domainId.length() == 0) return null;
        return entityManager().find(VirtualMachineDomain.class, domainId);
    }
    
    public static List<VirtualMachineDomain> VirtualMachineDomain.findVirtualMachineDomainEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM VirtualMachineDomain o", VirtualMachineDomain.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<VirtualMachineDomain> VirtualMachineDomain.findVirtualMachineDomainEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM VirtualMachineDomain o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, VirtualMachineDomain.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void VirtualMachineDomain.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void VirtualMachineDomain.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            VirtualMachineDomain attached = VirtualMachineDomain.findVirtualMachineDomain(this.domainId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void VirtualMachineDomain.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void VirtualMachineDomain.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public VirtualMachineDomain VirtualMachineDomain.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        VirtualMachineDomain merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}