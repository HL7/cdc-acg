Profile: CPGRecordDetectedIssueActivity
Parent: CPGComputableActivityDefinition
Id: cpg-recorddetectedissueactivity
Title: "CPG Record Detected Issue Activity"
Description: "Definition of a recommendation to record a specific detected issue as part of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-recorddetectedissueactivity)
* kind 1..1 MS
* kind only code
* kind = #Task (exactly)
* profile 1..1 MS
* profile only canonical
* profile = $cpg-recorddetectedissuetask (exactly)
  * ^short = "At least a CPG Record Detected Issue Task"
  * ^definition = "The profile that the resulting communication request must conform to; at least a CPGRecordDetectedIssueTask, though the activity definition may introduce further constraints."
* code = $cpg-activity-type-cs#record-detected-issue
* intent 1..1 MS
* intent only code
* intent = #proposal (exactly)
* doNotPerform 1..1 MS



