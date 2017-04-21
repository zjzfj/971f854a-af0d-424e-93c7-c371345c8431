// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sinosoft.model;

import com.sinosoft.model.Disk;
import com.sinosoft.model.DiskDataOnDemand;
import com.sinosoft.model.DiskIntegrationTest;
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

privileged aspect DiskIntegrationTest_Roo_IntegrationTest {
    
    declare @type: DiskIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: DiskIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: DiskIntegrationTest: @Transactional;
    
    @Autowired
    DiskDataOnDemand DiskIntegrationTest.dod;
    
    @Test
    public void DiskIntegrationTest.testCountDisks() {
        Assert.assertNotNull("Data on demand for 'Disk' failed to initialize correctly", dod.getRandomDisk());
        long count = Disk.countDisks();
        Assert.assertTrue("Counter for 'Disk' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void DiskIntegrationTest.testFindDisk() {
        Disk obj = dod.getRandomDisk();
        Assert.assertNotNull("Data on demand for 'Disk' failed to initialize correctly", obj);
        String id = obj.getDiskId();
        Assert.assertNotNull("Data on demand for 'Disk' failed to provide an identifier", id);
        obj = Disk.findDisk(id);
        Assert.assertNotNull("Find method for 'Disk' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'Disk' returned the incorrect identifier", id, obj.getDiskId());
    }
    
    @Test
    public void DiskIntegrationTest.testFindAllDisks() {
        Assert.assertNotNull("Data on demand for 'Disk' failed to initialize correctly", dod.getRandomDisk());
        long count = Disk.countDisks();
        Assert.assertTrue("Too expensive to perform a find all test for 'Disk', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<Disk> result = Disk.findAllDisks();
        Assert.assertNotNull("Find all method for 'Disk' illegally returned null", result);
        Assert.assertTrue("Find all method for 'Disk' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void DiskIntegrationTest.testFindDiskEntries() {
        Assert.assertNotNull("Data on demand for 'Disk' failed to initialize correctly", dod.getRandomDisk());
        long count = Disk.countDisks();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<Disk> result = Disk.findDiskEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'Disk' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'Disk' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void DiskIntegrationTest.testFlush() {
        Disk obj = dod.getRandomDisk();
        Assert.assertNotNull("Data on demand for 'Disk' failed to initialize correctly", obj);
        String id = obj.getDiskId();
        Assert.assertNotNull("Data on demand for 'Disk' failed to provide an identifier", id);
        obj = Disk.findDisk(id);
        Assert.assertNotNull("Find method for 'Disk' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyDisk(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'Disk' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void DiskIntegrationTest.testMergeUpdate() {
        Disk obj = dod.getRandomDisk();
        Assert.assertNotNull("Data on demand for 'Disk' failed to initialize correctly", obj);
        String id = obj.getDiskId();
        Assert.assertNotNull("Data on demand for 'Disk' failed to provide an identifier", id);
        obj = Disk.findDisk(id);
        boolean modified =  dod.modifyDisk(obj);
        Integer currentVersion = obj.getVersion();
        Disk merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getDiskId(), id);
        Assert.assertTrue("Version for 'Disk' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void DiskIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'Disk' failed to initialize correctly", dod.getRandomDisk());
        Disk obj = dod.getNewTransientDisk(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'Disk' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'Disk' identifier to be null", obj.getDiskId());
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
        Assert.assertNotNull("Expected 'Disk' identifier to no longer be null", obj.getDiskId());
    }
    
    @Test
    public void DiskIntegrationTest.testRemove() {
        Disk obj = dod.getRandomDisk();
        Assert.assertNotNull("Data on demand for 'Disk' failed to initialize correctly", obj);
        String id = obj.getDiskId();
        Assert.assertNotNull("Data on demand for 'Disk' failed to provide an identifier", id);
        obj = Disk.findDisk(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'Disk' with identifier '" + id + "'", Disk.findDisk(id));
    }
    
}