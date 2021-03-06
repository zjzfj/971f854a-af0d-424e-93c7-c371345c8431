// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sinosoft.model;

import com.sinosoft.model.PhysicalMachineType;
import com.sinosoft.model.PhysicalMachineTypeDataOnDemand;
import com.sinosoft.model.PhysicalMachineTypeIntegrationTest;
import java.util.Iterator;
import java.util.List;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PhysicalMachineTypeIntegrationTest_Roo_IntegrationTest {
    
    declare @type: PhysicalMachineTypeIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: PhysicalMachineTypeIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: PhysicalMachineTypeIntegrationTest: @Transactional;
    
    @Autowired
    PhysicalMachineTypeDataOnDemand PhysicalMachineTypeIntegrationTest.dod;
    
    @Test
    public void PhysicalMachineTypeIntegrationTest.testCountPhysicalMachineTypes() {
        Assert.assertNotNull("Data on demand for 'PhysicalMachineType' failed to initialize correctly", dod.getRandomPhysicalMachineType());
        long count = PhysicalMachineType.countPhysicalMachineTypes();
        Assert.assertTrue("Counter for 'PhysicalMachineType' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void PhysicalMachineTypeIntegrationTest.testFindPhysicalMachineType() {
        PhysicalMachineType obj = dod.getRandomPhysicalMachineType();
        Assert.assertNotNull("Data on demand for 'PhysicalMachineType' failed to initialize correctly", obj);
        String id = obj.getTypeId();
        Assert.assertNotNull("Data on demand for 'PhysicalMachineType' failed to provide an identifier", id);
        obj = PhysicalMachineType.findPhysicalMachineType(id);
        Assert.assertNotNull("Find method for 'PhysicalMachineType' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'PhysicalMachineType' returned the incorrect identifier", id, obj.getTypeId());
    }
    
    @Test
    public void PhysicalMachineTypeIntegrationTest.testFindAllPhysicalMachineTypes() {
        Assert.assertNotNull("Data on demand for 'PhysicalMachineType' failed to initialize correctly", dod.getRandomPhysicalMachineType());
        long count = PhysicalMachineType.countPhysicalMachineTypes();
        Assert.assertTrue("Too expensive to perform a find all test for 'PhysicalMachineType', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<PhysicalMachineType> result = PhysicalMachineType.findAllPhysicalMachineTypes();
        Assert.assertNotNull("Find all method for 'PhysicalMachineType' illegally returned null", result);
        Assert.assertTrue("Find all method for 'PhysicalMachineType' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void PhysicalMachineTypeIntegrationTest.testFindPhysicalMachineTypeEntries() {
        Assert.assertNotNull("Data on demand for 'PhysicalMachineType' failed to initialize correctly", dod.getRandomPhysicalMachineType());
        long count = PhysicalMachineType.countPhysicalMachineTypes();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<PhysicalMachineType> result = PhysicalMachineType.findPhysicalMachineTypeEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'PhysicalMachineType' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'PhysicalMachineType' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void PhysicalMachineTypeIntegrationTest.testFlush() {
        PhysicalMachineType obj = dod.getRandomPhysicalMachineType();
        Assert.assertNotNull("Data on demand for 'PhysicalMachineType' failed to initialize correctly", obj);
        String id = obj.getTypeId();
        Assert.assertNotNull("Data on demand for 'PhysicalMachineType' failed to provide an identifier", id);
        obj = PhysicalMachineType.findPhysicalMachineType(id);
        Assert.assertNotNull("Find method for 'PhysicalMachineType' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyPhysicalMachineType(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'PhysicalMachineType' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void PhysicalMachineTypeIntegrationTest.testMergeUpdate() {
        PhysicalMachineType obj = dod.getRandomPhysicalMachineType();
        Assert.assertNotNull("Data on demand for 'PhysicalMachineType' failed to initialize correctly", obj);
        String id = obj.getTypeId();
        Assert.assertNotNull("Data on demand for 'PhysicalMachineType' failed to provide an identifier", id);
        obj = PhysicalMachineType.findPhysicalMachineType(id);
        boolean modified =  dod.modifyPhysicalMachineType(obj);
        Integer currentVersion = obj.getVersion();
        PhysicalMachineType merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getTypeId(), id);
        Assert.assertTrue("Version for 'PhysicalMachineType' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void PhysicalMachineTypeIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'PhysicalMachineType' failed to initialize correctly", dod.getRandomPhysicalMachineType());
        PhysicalMachineType obj = dod.getNewTransientPhysicalMachineType(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'PhysicalMachineType' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'PhysicalMachineType' identifier to be null", obj.getTypeId());
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
        Assert.assertNotNull("Expected 'PhysicalMachineType' identifier to no longer be null", obj.getTypeId());
    }
    
    @Test
    public void PhysicalMachineTypeIntegrationTest.testRemove() {
        PhysicalMachineType obj = dod.getRandomPhysicalMachineType();
        Assert.assertNotNull("Data on demand for 'PhysicalMachineType' failed to initialize correctly", obj);
        String id = obj.getTypeId();
        Assert.assertNotNull("Data on demand for 'PhysicalMachineType' failed to provide an identifier", id);
        obj = PhysicalMachineType.findPhysicalMachineType(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'PhysicalMachineType' with identifier '" + id + "'", PhysicalMachineType.findPhysicalMachineType(id));
    }
    
}
