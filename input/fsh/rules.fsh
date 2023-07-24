RuleSet: ActivityDefinitionMetadata(id)
* meta.profile = $cpg-computableactivity
* extension[$cpg-knowledgeCapability].valueCode = #shareable
* extension[$cpg-knowledgeCapability].valueCode = #computable
* extension[$cpg-knowledgeCapability].valueCode = #publishable
* extension[$cpg-knowledgeRepresentationLevel].valueCode = #structured
* experimental = true
* url = "http://hl7.org/fhir/uv/cpg/ActivityDefinition/{id}"
* status = #draft
* intent = #proposal

RuleSet: PDRecommendationMetadata(id)
* meta.profile = $cpg-recommendationdefinition
* extension[$cpg-enabled].valueBoolean = true
* extension[$cpg-knowledgeCapability].valueCode = #shareable
* extension[$cpg-knowledgeCapability].valueCode = #computable
* extension[$cpg-knowledgeCapability].valueCode = #publishable
* extension[$cpg-knowledgeRepresentationLevel].valueCode = #structured
* experimental = true
* url = "http://hl7.org/fhir/uv/cpg/ActivityDefinition/{id}"
* status = #draft
* experimental = true

RuleSet: ProfileMeta(id)
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/{id}"

RuleSet: KnowledgeArtifactMetadata(id)
* extension[$cpg-knowledgeCapability].valueCode = #shareable
* extension[$cpg-knowledgeCapability].valueCode = #computable
* extension[$cpg-knowledgeCapability].valueCode = #publishable
* extension[$cpg-knowledgeRepresentationLevel].valueCode = #structured
* experimental = true
* url = "http://hl7.org/fhir/uv/cpg/ActivityDefinition/{id}"
* status = #draft

RuleSet: CodeSystemMetadata(id-prefix)
* ^meta.profile = $cpg-publishable-codesystem
* ^extension[+].url = $cpg-knowledgeCapability //causing errors when refering to by slice url
* ^extension[=].valueCode = #shareable
* ^extension[+].url = $cpg-knowledgeCapability
* ^extension[=].valueCode = #computable
* ^extension[+].url = $cpg-knowledgeCapability
* ^extension[=].valueCode = #publishable
* ^extension[+].url = $cpg-knowledgeRepresentationLevel //causing errors when refering to by slice
* ^extension[=].valueCode = #structured
* ^url = "http://hl7.org/fhir/uv/cpg/CodeSystem/{id-prefix}-cs"
* ^experimental = false
* ^caseSensitive = true
* ^valueSet = "http://hl7.org/fhir/uv/cpg/ValueSet/{id-prefix}-vs"
* ^content = #complete

RuleSet: CodeSystemDates(approvalDate, effectiveDate, lastReviewDate )
* ^extension[+].url = $resource-approvalDate
* ^extension[=].valueDate = {approvalDate}
* ^extension[+].url = $codesystem-effectiveDate
* ^extension[=].valueDate = {effectiveDate}
* ^extension[+].url = $resource-lastReviewDate
* ^extension[=].valueDate = {lastReviewDate}

RuleSet: ValueSetMetadata(id)
* ^meta.profile = $cpg-publishable-valueset
* ^extension[+].url = $cpg-knowledgeCapability
* ^extension[=].valueCode = #shareable
* ^extension[+].url = $cpg-knowledgeCapability
* ^extension[=].valueCode = #computable
* ^extension[+].url = $cpg-knowledgeCapability
* ^extension[=].valueCode = #publishable
* ^extension[+].url = $cpg-knowledgeRepresentationLevel
* ^extension[=].valueCode = #structured
* ^url = "http://hl7.org/fhir/uv/cpg/ValueSet/{id}"
* ^experimental = false

RuleSet: StructureDefinitionMetadata(id)
* ^url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/{id}"
* ^experimental = false

RuleSet: ExtensionContext(path)
* ^context.type = #element
* ^context.expression = "{path}"