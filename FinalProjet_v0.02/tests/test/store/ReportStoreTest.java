package test.store;

import java.util.List;

import org.junit.Before;
import org.junit.Test;

import moigo.domain.Report;
import moigo.store.ReportStore;
import moigo.store.logic.ReportStoreLogic;

public class ReportStoreTest {
	
	private ReportStore store;
	
	@Before
	public void set() {
		store = new ReportStoreLogic();		
	}
	
	
	@Test
	public void selectAllTest() {
//		List<Report> report = store.selectAllReportedMeeting();
	}

}
