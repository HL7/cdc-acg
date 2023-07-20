Profile: CPGAdministerMedicationActivity
Parent: $cpg-computableactivity
Id: cpg-administermedication
Title: "CPG Administer Medication Activity"
Description: "Definition of a proposal to administer a medication as part of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-administermedication)
* kind 1..1 MS
* kind only code
* kind = #Task (exactly)
* profile 1..1 MS
* profile only canonical
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-administermedicationtask" (exactly)
  * ^short = "At least a CPG Administer Medication Task"
  * ^definition = "The profile that the resulting task must conform to; at least a CPGAdministerMedicationTask, though the activity definition may introduce further constraints."
* intent 1..1 MS
* intent only code
* intent = #proposal (exactly)
* doNotPerform 1..1 MS


