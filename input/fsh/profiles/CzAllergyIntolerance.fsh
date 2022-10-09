Profile: CZ_AllergyIntolerancePS
Parent: AllergyIntolerance
Id: cz-AllergyIntolerancePS
Title: "Allergy Intolerance (CZ Patient summary)"
Description: """This profile represents the constraints applied to the AllergyIntolerance resource by the International Patient Summary (IPS) FHIR Implementation Guide. A record of an allergy or intolerance is represented in the patient summary as an instance of an AllergyIntolerance resource constrained by this profile.

It documents the relevant allergies or intolerances (conditions) for a patient, describing the kind of reaction (e.g. rash, anaphylaxis,..); preferably the agents that cause it; and optionally the criticality and the certainty of the allergy."""
* ^status = #active
* ^purpose = "This profile constrains the representation of a record of an allergy or intolerance of the patient, in the context of the international patient summary as specified by the IPS project of HL7 International."
* extension contains $abatement-dateTime-uv-ips named abatement-datetime 0..1
* extension[abatement-datetime] ^short = "Abatement datetime"
* extension[abatement-datetime] ^definition = "The date or estimated date that the condition resolved or went into remission."
* clinicalStatus only CodeableConceptIPS
* verificationStatus only CodeableConceptIPS
* verificationStatus ^comment = "In the scope of the IPS the entered-in-error concept is not allowed."
* type MS
* code ..1 MS
* code only CodeableConceptIPS
/*
* code from $allergy-intolerance-substance-condition-uv-ips (preferred)
* code ^slicing.discriminator.type = #pattern
* code ^slicing.discriminator.path = "$this"
* code ^slicing.description = "Discriminated by the bound value set"
* code ^slicing.rules = #open
* code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension.valueString = "AllergyIntoleranceCode"
* code ^binding.description = "Type of the substance/product, allergy or intolerance condition."
* code contains
    allergyIntoleranceGPSCode 0..1 MS and
    absentOrUnknownAllergyIntolerance 0..1 MS
* code[allergyIntoleranceGPSCode] only CodeableConceptIPS
* code[allergyIntoleranceGPSCode] from $allergy-intolerance-substance-condition-gps-uv-ips (required)
* code[allergyIntoleranceGPSCode] ^short = "Code for allergy or intolerance from the SNOMED CT GPS code set"
* code[allergyIntoleranceGPSCode] ^definition = "Code for an allergy or intolerance statement that is selected from the SNOMED CT GPS code set."
* code[allergyIntoleranceGPSCode] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code[allergyIntoleranceGPSCode] ^binding.extension.valueString = "AllergyIntolerance GPS"
* code[allergyIntoleranceGPSCode] ^binding.extension.fhir_comments = "<extension url=\"http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet\">\r\n\t\t\t\t\t<valueCanonical value=\"http://hl7.org/fhir/uv/ips/ValueSet/allergy-intolerance-substance-condition-uv-ips\"/>\r\n\t\t\t\t</extension>"
* code[allergyIntoleranceGPSCode] ^binding.description = "Codes for allergy or intolerance from the SNOMED CT GPS code set"
* code[absentOrUnknownAllergyIntolerance] only CodeableConceptIPS
* code[absentOrUnknownAllergyIntolerance] from $absent-or-unknown-allergies-uv-ips (required)
* code[absentOrUnknownAllergyIntolerance] ^short = "Code for absent or unknown allergy or intolerance"
* code[absentOrUnknownAllergyIntolerance] ^definition = "Code for an allergy or intolerance statement (either a positive or a negated/excluded statement).  This describes a categorical negated statement (e.g., \"No known allergy\")."
* code[absentOrUnknownAllergyIntolerance] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code[absentOrUnknownAllergyIntolerance] ^binding.extension.valueString = "absentOrUnknownAllergy"
* code[absentOrUnknownAllergyIntolerance] ^binding.description = "negation/exclusion codes for reporting no known allergies or not available data."
*/
* patient only Reference(CZ_Patient)
* patient MS
* patient.reference 1.. MS
* onset[x] only dateTime or Age or Period or Range or string
* onset[x] MS
* onset[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* onset[x] ^type.extension.valueBoolean = true
* reaction MS
* reaction.manifestation only CodeableConceptIPS
* reaction.manifestation MS
* reaction.manifestation ^slicing.discriminator.type = #pattern
* reaction.manifestation ^slicing.discriminator.path = "$this"
* reaction.manifestation ^slicing.description = "Discriminated by the bound value set"
* reaction.manifestation ^slicing.rules = #open
* reaction.manifestation contains reactionManifestationGPSCode 0..1 MS
* reaction.manifestation[reactionManifestationGPSCode] only CodeableConceptIPS
* reaction.manifestation[reactionManifestationGPSCode] from $allergy-reaction-gps-uv-ips (required)
* reaction.manifestation[reactionManifestationGPSCode] ^short = "Code for the allergy or intolerance reaction manifestation from the SNOMED CT GPS code set"
* reaction.manifestation[reactionManifestationGPSCode] ^definition = "Code for an allergy or intolerance reaction manifestation statement that is selected from the SNOMED CT GPS code set."
* reaction.manifestation[reactionManifestationGPSCode] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* reaction.manifestation[reactionManifestationGPSCode] ^binding.extension.valueString = "ReactionManifestationGPS"
* reaction.severity MS