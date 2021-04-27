package com.zjl.test;


import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.zjl.controller.DispatacherController;

public class Slf4jTest {
	@Test
	public void slf4j() {
		Logger logger = LoggerFactory.getLogger(DispatacherController.class);
		logger.debug("235");
	}
}
