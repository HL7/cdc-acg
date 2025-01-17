Profile: CPGCommunicationActivity
Parent: CPGComputableActivityDefinition
Id: cpg-communicationactivity
Title: "CPG Communication Activity"
Description: "Definition of a recommendation for a specific communication with the patient or other participant as part of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-communicationactivity)
* kind 1..1 MS
* kind only code
* kind = #CommunicationRequest (exactly)
* profile 1..1 MS
* profile only canonical
* profile = $cpg-communicationRequest (exactly)
  * ^short = "At least a CPG CommunicationRequest"
  * ^definition = "The profile that the resulting communication request must conform to; at least a CPGCommunicationRequest, though the activity definition may introduce further constraints."
* code = $cpg-activity-type-cs#send-message
* intent 1..1 MS
* intent only code
* intent = #proposal (exactly)
* doNotPerform 1..1 MS