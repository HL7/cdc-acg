Instance: di-scenario4
InstanceOf: CPGDetectedIssue
Usage: #example
Description: "Example test case - Record Detected Issue - Scenario 4 - DetectedIssue"
* status = #final
* code = $v3-ActCode#TIME "timing detected issue"
* severity = #high
* patient = Reference(di-scenario4-patient)
* detail = "Proposed therapy may be inappropriate or ineffective based on proposed start or end time."