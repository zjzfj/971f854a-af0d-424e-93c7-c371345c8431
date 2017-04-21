// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sinosoft.model;

import com.sinosoft.model.MonitorSetting;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect MonitorSetting_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager MonitorSetting.entityManager;
    
    public static final List<String> MonitorSetting.fieldNames4OrderClauseFilter = java.util.Arrays.asList("monitorSource", "sourceId", "monitorType", "monitorName", "threshold", "thresholdUnit", "severityLevel", "osAlarmId", "enabled", "createTime");
    
    public static final EntityManager MonitorSetting.entityManager() {
        EntityManager em = new MonitorSetting().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long MonitorSetting.countMonitorSettings() {
        return entityManager().createQuery("SELECT COUNT(o) FROM MonitorSetting o", Long.class).getSingleResult();
    }
    
    public static List<MonitorSetting> MonitorSetting.findAllMonitorSettings() {
        return entityManager().createQuery("SELECT o FROM MonitorSetting o", MonitorSetting.class).getResultList();
    }
    
    public static List<MonitorSetting> MonitorSetting.findAllMonitorSettings(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM MonitorSetting o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, MonitorSetting.class).getResultList();
    }
    
    public static MonitorSetting MonitorSetting.findMonitorSetting(Long id) {
        if (id == null) return null;
        return entityManager().find(MonitorSetting.class, id);
    }
    
    public static List<MonitorSetting> MonitorSetting.findMonitorSettingEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM MonitorSetting o", MonitorSetting.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<MonitorSetting> MonitorSetting.findMonitorSettingEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM MonitorSetting o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, MonitorSetting.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void MonitorSetting.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void MonitorSetting.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            MonitorSetting attached = MonitorSetting.findMonitorSetting(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void MonitorSetting.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void MonitorSetting.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public MonitorSetting MonitorSetting.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        MonitorSetting merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
