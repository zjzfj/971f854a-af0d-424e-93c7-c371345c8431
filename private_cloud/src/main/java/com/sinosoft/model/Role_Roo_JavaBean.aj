// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sinosoft.model;

import com.sinosoft.enumerator.RoleNameEnum;
import com.sinosoft.model.Role;

privileged aspect Role_Roo_JavaBean {
    
    public Long Role.getRoleId() {
        return this.roleId;
    }
    
    public void Role.setRoleId(Long roleId) {
        this.roleId = roleId;
    }
    
    public RoleNameEnum Role.getRoleName() {
        return this.roleName;
    }
    
    public void Role.setRoleName(RoleNameEnum roleName) {
        this.roleName = roleName;
    }
    
    public String Role.getDescription() {
        return this.description;
    }
    
    public void Role.setDescription(String description) {
        this.description = description;
    }
    
}
