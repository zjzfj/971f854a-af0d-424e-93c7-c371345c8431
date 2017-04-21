// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sinosoft.model;

import com.sinosoft.model.Role;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Role_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Role.entityManager;
    
    public static final List<String> Role.fieldNames4OrderClauseFilter = java.util.Arrays.asList("roleId", "roleName", "description");
    
    public static final EntityManager Role.entityManager() {
        EntityManager em = new Role().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Role.countRoles() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Role o", Long.class).getSingleResult();
    }
    
    public static List<Role> Role.findAllRoles() {
        return entityManager().createQuery("SELECT o FROM Role o", Role.class).getResultList();
    }
    
    public static List<Role> Role.findAllRoles(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Role o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Role.class).getResultList();
    }
    
    public static Role Role.findRole(Long roleId) {
        if (roleId == null) return null;
        return entityManager().find(Role.class, roleId);
    }
    
    public static List<Role> Role.findRoleEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Role o", Role.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Role> Role.findRoleEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Role o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Role.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Role.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Role.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Role attached = Role.findRole(this.roleId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Role.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Role.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Role Role.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Role merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
