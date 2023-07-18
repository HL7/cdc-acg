Profile: CPGPublishableMetric
Parent: $cpg-shareablemetric
Id: cpg-publishablemetric
Title: "CPG Publishable Metric"
Description: "Defines the minimum expectations for a publishable metric for use with computable content"
* insert DefinitionMetadata(cpg-publishablemetric, StructureDefinition)
* title 1..1 MS
* date 1..1 MS
* copyright MS
* approvalDate MS
* lastReviewDate MS
* topic from $definition-topic (preferred)
* topic ^binding.description = "Topics for categorization and searching of artifacts"
* relatedArtifact MS
* relatedArtifact
  * display 1..1 MS
  * url MS
  * resource MS

// Mapping: rim
// Id: rim
// Title: "RIM Mapping"
// Source: CPGPublishableMetric
// Target: "http://hl7.org/v3"

// Mapping: workflow
// Id: workflow
// Title: "Workflow Pattern"
// Source: CPGPublishableMetric
// Target: "http://hl7.org/fhir/workflow"

// Mapping: w5
// Id: w5
// Title: "FiveWs Pattern Mapping"
// Source: CPGPublishableMetric
// Target: "http://hl7.org/fhir/fivews"

// Mapping: objimpl
// Id: objimpl
// Title: "Object Implementation Information"
// Source: CPGPublishableMetric
// Target: "http://hl7.org/fhir/object-implementation"