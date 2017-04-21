// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sinosoft.model;

import com.sinosoft.enumerator.VirtualMachineStatusEnum;
import com.sinosoft.enumerator.VirtualMachineTaskStatusEnum;
import com.sinosoft.model.VirtualMachine;
import com.sinosoft.model.VirtualMachineDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect VirtualMachineDataOnDemand_Roo_DataOnDemand {
    
    declare @type: VirtualMachineDataOnDemand: @Component;
    
    private Random VirtualMachineDataOnDemand.rnd = new SecureRandom();
    
    private List<VirtualMachine> VirtualMachineDataOnDemand.data;
    
    public VirtualMachine VirtualMachineDataOnDemand.getNewTransientVirtualMachine(int index) {
        VirtualMachine obj = new VirtualMachine();
        setCpu(obj, index);
        setCreateTime(obj, index);
        setCreator(obj, index);
        setDeleteTime(obj, index);
        setDescription(obj, index);
        setDisk(obj, index);
        setDomainId(obj, index);
        setFloatingIp(obj, index);
        setGroupId(obj, index);
        setHostName(obj, index);
        setHypervisorName(obj, index);
        setImageName(obj, index);
        setManager(obj, index);
        setMemory(obj, index);
        setModifyTime(obj, index);
        setPrivateIp(obj, index);
        setStatus(obj, index);
        setTaskStatus(obj, index);
        return obj;
    }
    
    public void VirtualMachineDataOnDemand.setCpu(VirtualMachine obj, int index) {
        Integer cpu = new Integer(index);
        obj.setCpu(cpu);
    }
    
    public void VirtualMachineDataOnDemand.setCreateTime(VirtualMachine obj, int index) {
        Date createTime = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setCreateTime(createTime);
    }
    
    public void VirtualMachineDataOnDemand.setCreator(VirtualMachine obj, int index) {
        String creator = "creator_" + index;
        obj.setCreator(creator);
    }
    
    public void VirtualMachineDataOnDemand.setDeleteTime(VirtualMachine obj, int index) {
        Date deleteTime = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setDeleteTime(deleteTime);
    }
    
    public void VirtualMachineDataOnDemand.setDescription(VirtualMachine obj, int index) {
        String description = "description_" + index;
        obj.setDescription(description);
    }
    
    public void VirtualMachineDataOnDemand.setDisk(VirtualMachine obj, int index) {
        Integer disk = new Integer(index);
        obj.setDisk(disk);
    }
    
    public void VirtualMachineDataOnDemand.setDomainId(VirtualMachine obj, int index) {
        String domainId = "domainId_" + index;
        obj.setDomainId(domainId);
    }
    
    public void VirtualMachineDataOnDemand.setFloatingIp(VirtualMachine obj, int index) {
        String floatingIp = "floatingIp_" + index;
        obj.setFloatingIp(floatingIp);
    }
    
    public void VirtualMachineDataOnDemand.setGroupId(VirtualMachine obj, int index) {
        String groupId = "groupId_" + index;
        obj.setGroupId(groupId);
    }
    
    public void VirtualMachineDataOnDemand.setHostName(VirtualMachine obj, int index) {
        String hostName = "hostName_" + index;
        obj.setHostName(hostName);
    }
    
    public void VirtualMachineDataOnDemand.setHypervisorName(VirtualMachine obj, int index) {
        String hypervisorName = "hypervisorName_" + index;
        obj.setHypervisorName(hypervisorName);
    }
    
    public void VirtualMachineDataOnDemand.setImageName(VirtualMachine obj, int index) {
        String imageName = "imageName_" + index;
        obj.setImageName(imageName);
    }
    
    public void VirtualMachineDataOnDemand.setManager(VirtualMachine obj, int index) {
        String manager = "manager_" + index;
        obj.setManager(manager);
    }
    
    public void VirtualMachineDataOnDemand.setMemory(VirtualMachine obj, int index) {
        Integer memory = new Integer(index);
        obj.setMemory(memory);
    }
    
    public void VirtualMachineDataOnDemand.setModifyTime(VirtualMachine obj, int index) {
        Date modifyTime = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setModifyTime(modifyTime);
    }
    
    public void VirtualMachineDataOnDemand.setPrivateIp(VirtualMachine obj, int index) {
        String privateIp = "privateIp_" + index;
        obj.setPrivateIp(privateIp);
    }
    
    public void VirtualMachineDataOnDemand.setStatus(VirtualMachine obj, int index) {
        VirtualMachineStatusEnum status = VirtualMachineStatusEnum.class.getEnumConstants()[0];
        obj.setStatus(status);
    }
    
    public void VirtualMachineDataOnDemand.setTaskStatus(VirtualMachine obj, int index) {
        VirtualMachineTaskStatusEnum taskStatus = VirtualMachineTaskStatusEnum.class.getEnumConstants()[0];
        obj.setTaskStatus(taskStatus);
    }
    
    public VirtualMachine VirtualMachineDataOnDemand.getSpecificVirtualMachine(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        VirtualMachine obj = data.get(index);
        String id = obj.getHostId();
        return VirtualMachine.findVirtualMachine(id);
    }
    
    public VirtualMachine VirtualMachineDataOnDemand.getRandomVirtualMachine() {
        init();
        VirtualMachine obj = data.get(rnd.nextInt(data.size()));
        String id = obj.getHostId();
        return VirtualMachine.findVirtualMachine(id);
    }
    
    public boolean VirtualMachineDataOnDemand.modifyVirtualMachine(VirtualMachine obj) {
        return false;
    }
    
    public void VirtualMachineDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = VirtualMachine.findVirtualMachineEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'VirtualMachine' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<VirtualMachine>();
        for (int i = 0; i < 10; i++) {
            VirtualMachine obj = getNewTransientVirtualMachine(i);
            try {
                obj.persist();
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
