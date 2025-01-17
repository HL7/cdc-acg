Instance: event-gr-scenario4
InstanceOf: cpg-generatereporttask
Usage: #example
Description: "Example test case - Generate Report - Scenario 4 - Generate Report Task"
* meta.profile = Canonical(CPGTask)
* instantiatesCanonical = Canonical(activity-example-generatereport-ad)
* status = #completed
* intent = #order
* code = $cpg-activity-type-cs#generate-report "Generate a metric or case report"
* for = Reference(gr-scenario4-patient)
* input[definition]
  * type = $cpg-activity-type-cs#generate-report "Generate a metric or case report"
  * valueCanonical = Canonical(activity-example-generatereport-measure)
* output
  * type = $cpg-activity-type-cs#generate-report "Generate a metric or case report"
  * valueReference = Reference(gr-scenario4)