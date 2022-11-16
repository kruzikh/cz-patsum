Profile: CZ_ConditionPS
Parent: Condition
Id: cz-ConditionPS
Title: "Condition (Czech Patient Summary)"
Description: "This profile represents the constraints applied to the Condition resource by the International Patient Summary (IPS) FHIR Implementation Guide. A record of a problem is represented in the patient summary as an instance of the Condition resource constrained by this profile."
* ^status = #active
* ^date = "2022-10-16T15:15:28-05:00"
* ^publisher = "Národní centrum elektronického zdravotnictví"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://ncez.mzcr.cz"
* ^purpose = "Representation of a problem in the international patient summary"
* . ^short = "Documentation of a health problem of the patient"

* clinicalStatus 1.. MS
* clinicalStatus only CodeableConceptIPS
* verificationStatus only CodeableConceptIPS
* verificationStatus ^comment = "This element is labeled as a modifier because the status contains the code refuted and entered-in-error that mark the Condition as not currently valid."
* category only CodeableConceptIPS
* category MS
* category from $problem-type-uv-ips (extensible)
* category ^definition = "A category assigned to the condition. In this profile, a health problem of the patient, therefore a 'problem-list-item'.\r\n"
* category ^comment = "In this profile, Condition represents a health problem of the patient. Therefore one of the category value(s) must be problem-list-item."
* severity only CodeableConceptIPS
* severity MS
* severity from $condition-severity-uv-ips (preferred)
* severity ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* severity ^binding.extension.valueString = "ConditionSeverity"

* code 1..1 MS
* code only CodeableConcept

* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.description = "Discriminated by the bound value set"
* code.coding ^slicing.rules = #open
* code.coding ^definition = "Identification of the condition, problem or diagnosis or recording of \"problem absent\" or of \"problems unknown\"."
* code.coding contains
    MKN-10 0..1 MS and
    absentOrUnknownProblem 0..1 MS
* code.coding[MKN-10] from $mkn-10-problem-list (required)
* code.coding[MKN-10].system = $mkn-10 (exactly)
* code.coding[MKN-10] ^short = "Code for a problem from the MKN-10 problem list (includes all MKN-10 codes except chapter XX) value set"
* code.coding[MKN-10] ^definition = "Code for a clinical problem that is selected from the MKN-10 problem list."
* code.coding[MKN-10] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code.coding[MKN-10] ^binding.extension.valueString = "MKN-10"
* code.coding[MKN-10] ^binding.description = "MKN-10-problem-list"
* code.coding[absentOrUnknownProblem] from $absent-or-unknown-problems-uv-ips (required)
* code.coding[absentOrUnknownProblem] ^short = "Code for absent problem or for unknown problem"
* code.coding[absentOrUnknownProblem] ^definition = "Code representing the statement \"absent problem\" or the statement \"problems unknown\""
* code.coding[absentOrUnknownProblem] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code.coding[absentOrUnknownProblem] ^binding.extension.valueString = "absentOrUnknownProblem"
* code.coding[absentOrUnknownProblem] ^binding.description = "Absent problem or unknown problem"

* bodySite only CodeableConceptIPS
* bodySite from SNOMEDCTBodyStructures (example)
* bodySite ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* bodySite ^binding.extension.valueString = "BodySite"
* subject only Reference(CZ_Patient)
* subject MS
* subject.reference 1.. MS
* onset[x] only dateTime or Age or Period or Range or string
* onset[x] MS
* onset[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* onset[x] ^type.extension.valueBoolean = true
* abatement[x] only dateTime or Age or Period or Range or string
* asserter ^definition = "Individual who is making the condition statement.\r\nInformation source."