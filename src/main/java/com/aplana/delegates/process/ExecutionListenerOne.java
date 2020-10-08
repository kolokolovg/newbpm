package com.aplana.delegates.process;

import org.camunda.bpm.engine.delegate.DelegateExecution;
import org.camunda.bpm.engine.delegate.ExecutionListener;

public class ExecutionListenerOne implements ExecutionListener {

    public void notify(DelegateExecution execution) throws Exception {
        execution.setVariable("variable1", "firstValue");
        execution.setVariable("eventReceived", execution.getEventName());
    }
}