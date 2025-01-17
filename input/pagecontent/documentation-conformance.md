Conformance from the perspective of this Implementation Guide (IG) refers to statements that prescribe expected characteristics and behaviors of systems involved in the authoring, testing, validation, distribution, integration, and delivery of the knowledge artifacts and associated documentation that make up a computable Clinical Practice Guideline (CPG). As described in the [Content Implementation Guides](methodology.html#content-implementation-guides) section of this IG, a FHIR-based CPG is delivered as a FHIR [Implementation Guide](http://hl7.org/fhir/implementationguide.html), and therefore follows the rules for establishing conformance requirements as defined by the FHIR specification.

This page provides a summary of and index to the various conformance requirements for a CPG established by this implementation guide.

### Clinical Safety

This specification defines profiles, terminologies, patterns, and guidance for describing guideline-directed care. As such, Clinical Safety is a key concern with regard to any content developed conformant with this implementation guide. As with any healthcare-related endeavor, content authors and implementers are strongly encouraged to keep patient safety, privacy, and security as a central focus. To aid with this focus, content authors and implementers are strongly encouraged to use the [FHIR Implementer's Safety Check List](https://www.hl7.org/fhir/safety.html) to help inform development and implementation of computable guidelines.

### Conformance Language

This implementation follows the same [conformance language](http://hl7.org/fhir/conformance-rules.html#conflang) specified by the base FHIR specification:

This specification uses the conformance verbs SHALL, SHOULD, and MAY as defined in [RFC 2119](https://tools.ietf.org/html/rfc2119). Unlike RFC 2119, however, this specification allows that different applications might not be able to interoperate because of how they use optional features. In particular:

    1. SHALL: an absolute requirement for all implementations
    2. SHALL NOT: an absolute prohibition against inclusion for all implementations
    3. SHOULD/SHOULD NOT: A best practice or recommendation to be considered by implementers within the context of their particular implementation; there may be valid reasons to ignore an item, but the full implications must be understood and carefully weighed before choosing a different course
    4. MAY: This is truly optional language for an implementation; can be included or omitted as the implementer decides with no implications

### Must Support

Profiles in this implementation guide use the [must support](http://hl7.org/fhir/conformance-rules.html#mustSupport) flag to indicate that the elements play a meaningful role in the description of an artifact (for artifact profiles), or that the element is relevant for effective support of an expected behavior (for domain profiles). Note carefully that _must support_ does not indicate a _required_ element, that aspect is governed by the _cardinality_ of the element; but it does indicate that systems involved in exchanging knowledge artifacts, or implementation systems involved in exchanging data during implementation of knowledge artifacts, must understand the element and be able to provide meaningful data if and when it is available.

In addition, because FHIR-based CPGs are themselves FHIR implementation guides, they SHALL include a statement describing how the _must support_ flag is to be interpreted for effective use of their content, and that statement SHALL be consistent with the general characterization of must support behavior described here. Examples of _must support_ declarations can be found in:

* [IPS Must Support](https://hl7.org/fhir/uv/ips/design.html#must-support)
* [US Core Must Support](https://hl7.org/fhir/us/core/must-support.html)
* [QI Core Must Support](https://hl7.org/fhir/us/qicore/#mustsupport-flag)

### Profiles

The [Profiles](profiles.html) page provides an overview of the various categories of profiles defined by this implementation guide, as well as a discussion of the use of profiles generally in computable content. In summary:

* Knowledge Artifacts SHALL conform to at least the appropriate Shareable profile defined in the [Canonical Resource Management Infrastructure](http://hl7.org/fhir/uv/crmi) for the type of knowledge artifact
* Knowledge Artifacts SHOULD conform to the appropriate Computable, Publishable, and Executable profiles in CRMI and this implementation guide for the type of knowledge artifact, and SHALL provide documentation describing the expected packaging and distribution targets for content.
* Content implementation guides SHOULD provide _case features_ describing the minimum data set appropriate for their content
* Content implementation guides SHOULD nominate a candidate set of _interoperability profiles_

### Terminology

The [Terminology](terminology.html) page provides an overview of the usage of terminology with computable content, as well as an index of the specific conformance terminologies defined by this implementation guide. In summary:

* Terminology distributed as part of content implementation guides SHALL conform to at least the appropriate Shareable profile.
* Terminology distributed as part of content implementation guides SHOULD conform to the appropriate Computable, Publishable, and Executable profiles, and SHALL provide documentation describing the expected packaging and distribution targets for content, as well as an expected maintenance path for any executable value sets.

### Libraries

The [Libraries](libraries.html) page provides an overview of the usage of Library resources to represent computable content, as well as general guidance for authoring shareable logic using CQL. In summary:

* Logic distributed as part of content implementation guides SHALL conform to at least the ShareableLibrary profile defined in [CRMI](https://build.fhir.org/ig/HL7/crmi-ig)
* Logic distributed as part of content implementation guides SHOULD conform to the Computable, Publishable, and Executable profiles, in [Using CQL With FHIR](https://build.fhir.org/ig/HL7/cql-ig), CRMI, and this impplelemtnation guide and SHALL provide documentation describing the expected packaging and distribution targets for content.

### Levels of Conformance

One major effort on compliance is the WHO and Integrated Health Enterprise (IHE) initiative on Computable Care Guidelines (CCG)[<sup>1</sup>](#1) profile of the HL7 CPG.[<sup>2</sup>](#2) The IHE/WHO CCG includes a minimum data set to be collected during an encounter (i.e., required data elements as CPGCaseFeatures), logic to be triggered based on data collected (CPGRecommendations), and reportable health system management indicators (CPGMetrics).  It can track and monitor care delivery activities (e.g., what happened) as well as provide the ability to improve guideline adherence.

### Conformance Testing

Levels of conformance will be based on alternative conformance profiles such as the CCG above.  Conformance with Features of the CPG are still under development.

> NOTE: This project is actively seeking feedback on how to characterize levels of enablement as capabilities, and how to support declaration and validation of conformance to these capabilities.

---

<a id="1">1</a>: https://wiki.ihe.net/index.php/Computable_Care_Guidelines Computable Care Guidelines (CCG) profile

<a id="2">2</a>: 'http://www.ihe.ca/download/ambassador_headache_final_100_pager.pdf'
