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
* code only CodeableConceptIPS
/*
* code ^slicing.discriminator.type = #pattern
* code ^slicing.discriminator.path = "$this"
* code ^slicing.description = "Discriminated by the bound value set"
* code ^slicing.rules = #open
* code ^definition = "Identification of the condition, problem or diagnosis or recording of \"problem absent\" or of \"problems unknown\"."
* code contains
    problemGPSCode 0..1 MS and
    absentOrUnknownProblem 0..1 MS
* code[problemGPSCode] from $core-problem-finding-situation-event-gps-uv-ips (required)
* code[problemGPSCode] ^short = "Code for a problem from the SNOMED CT GPS code set"
* code[problemGPSCode] ^definition = "Code for a clinical problem that is selected from the SNOMED CT GPS code set."
* code[problemGPSCode] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code[problemGPSCode] ^binding.extension.valueString = "problemGPSCode"
* code[problemGPSCode] ^binding.description = "problemGPS"
* code[absentOrUnknownProblem] from $absent-or-unknown-problems-uv-ips (required)
* code[absentOrUnknownProblem] ^short = "Code for absent problem or for unknown problem"
* code[absentOrUnknownProblem] ^definition = "Code representing the statement \"absent problem\" or the statement \"problems unknown\""
* code[absentOrUnknownProblem] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code[absentOrUnknownProblem] ^binding.extension.valueString = "absentOrUnknownProblem"
* code[absentOrUnknownProblem] ^binding.description = "Absent problem or unknown problem"
*/
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