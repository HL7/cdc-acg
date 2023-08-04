Instance: activity-example-enrollment-pd
InstanceOf: PlanDefinition
Usage: #example
Title: "Activity Example Enrollment PD"
* description = "Example Plan Definition for a recommendation to enroll a patient"
* insert PDRecommendationMetadata(activity-example-enrollment-pd)
* name = "ActivityExampleEnrollmentPD"
* type = $plan-definition-type#eca-rule
* library = Canonical(enrollment-library)
* action
  * title = "Enroll patient in example pathway"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-enrollment-ad)