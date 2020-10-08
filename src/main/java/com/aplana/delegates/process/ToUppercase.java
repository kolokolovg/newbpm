package com.aplana.delegates.process;

import org.camunda.bpm.engine.delegate.DelegateExecution;
import org.camunda.bpm.engine.delegate.JavaDelegate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
public class ToUppercase implements JavaDelegate {
    private static final Logger LOGGER = LoggerFactory.getLogger(ToUppercase.class);

    public void execute(DelegateExecution execution) throws Exception {
        String var = (String) execution.getVariable("testvalue");
        LOGGER.info("incoming testvalue = {}", var);
        var = var.toUpperCase();
        execution.setVariable("testvalue", var);
        LOGGER.info("outgoing testvalue = {}", execution.getVariable("testvalue"));
    }

}
