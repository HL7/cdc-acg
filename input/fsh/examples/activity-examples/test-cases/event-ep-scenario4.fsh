Instance: event-ep-scenario4
InstanceOf: cpg-enrollmenttask
Usage: #example
Description: "Example test case - Enroll Patient - Scenario 4 - Patient"
* meta.profile = Canonical(CPGTask)
* instantiatesCanonical = Canonical(activity-example-enrollment-ad)
* status = #completed
* intent = #order
* code = $cpg-activity-type-cs#enrollment "Enroll in a pathway or strategy"
* for = Reference(ep-scenario4-patient)
* input[pathway]
  * type = $cpg-activity-type-cs#enrollment "Enroll in a pathway or strategy"
  * valueCanonical = Canonical(activity-example-pathway-pd)
* output
  * type = $cpg-activity-type-cs#enrollment "Enroll in a pathway or strategy"
  * valueReference = Reference(ep-scenario4-eoc)