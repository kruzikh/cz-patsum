Profile: CZ_ImmunizationPS
Parent: Immunization
Id: cz-ImmunizationPS
Title: "Immunization (CZ Patient summary)"
Description: """This profile represents the constraints applied to the Immunization resource by the International Patient Summary (IPS) FHIR Implementation Guide. A record of an immunization is represented in the patient summary as an instance of an Immunization resource constrained by this profile.

It describes the event of a patient being administered a vaccination or a record of a vaccination as reported by a patient, a clinician or another party."""
* ^status = #active
* ^purpose = "This profile constrains the representation of a record of a vaccination of the patient, in the context of the international patient summary as specified by the IPS project of HL7 International."
* . ^definition = "Describes the event of a patient being administered a vaccination or a record of a vaccination as reported by a patient, a clinician or another party and may include vaccine reaction information and what vaccination protocol was followed"
* status MS
* vaccineCode 1..1 MS
* vaccineCode only CodeableConceptIPS
* vaccineCode from $vaccines-uv-ips (preferred)
/*
* vaccineCode ^slicing.discriminator.type = #pattern
* vaccineCode ^slicing.discriminator.path = "$this"
* vaccineCode ^slicing.description = "Discriminated by bound value set"
* vaccineCode ^slicing.rules = #open
* vaccineCode ^short = "Vaccine that was administered or was to be administered.Several kinds of vaccine product coding could be provided.\r\n\r\n\r\n\t\t\t\tThe IPS assumes that either the type of the vaccine for particular disease or diseases (e.g. MMR vaccine) against which the patient has been immunised is provided; or the known absent / unknown code.\r\n\r\n\r\n\t\t\t\tOther coded information can be provided as well as: the IDMP Pharmaceutical Product Identifiers (PhPID), Medicinal Product Identifier (MPID), Packaged Medicinal Product Identifier (PCID), when available, or equivalent coded concepts; the WHO ATC codes; or any other kind of code that that identifies, classifies or cluster the administered product."
* vaccineCode ^definition = "Vaccine that was administered or was to be administered. Several kinds of vaccine product coding could be provided.\r\n\r\nThe IPS assumes that either the type of the vaccine for particular disease or diseases (e.g. MMR vaccine) against which the patient has been immunized is provided; or the known absent / unknown.\r\n\r\n\r\n\t\t\tOther coded information can be provided as well as:\r\n\r\n\r\n\t\t\t1. The IDMP Pharmaceutical Product Identifier (PhPID), Level 1, [Substance(s)]. Example: Amoxicillin and Clavulanate Potassium; or any other equivalent coded concept.\r\n\r\n\t\t\t2. The IDMP Pharmaceutical Product Identifier (PhPID), Level 2 [Substance(s) + Strength + reference strength]. Example: Amoxicillin 875 mg and Clavulanate Potassium 125 mg; or any other equivalent coded concept.\r\n\r\n\t\t\t3. The IDMP Pharmaceutical Product Identifier (PhPID), Level 3 [Substance(s) + administrable dose form]. Example: Amoxicillin and Clavulanate Potassium, Oral Tablet; or any other equivalent coded concept.\r\n\r\n\t\t\t4. The IDMP Pharmaceutical Product Identifier (PhPID), Level 4 [Substance(s) + strength + reference strength + administrable dose form]. Example: Amoxicillin 875 mg and clavulanate potassium 125 mg, oral tablet; or any other equivalent coded concept.\r\n\r\n\t\t\t5. The IDMP Medicinal Product Identifier (MPID) or any equivalent Medicinal Product Identifier. IDMP MPID uniquely identifies a Medicinal Product, reflecting (but not replacing) any other authorization numbers allocated by a regulator. MPID implies one (set of) PhPID. \r\n\t\t\tThe MPID shall use a common segment pattern related to a Medicinal Product, which, when each segment is valued shall define a specific MPID concept.\r\n\r\n\t\t\t6. The IDMP Packaged Medicinal Product Identifier (PCID) or any equivalent Packaged Medicinal Product Identifier. \r\n\t\t\tUniquely identifies a Medicinal Product based on its packaging. This implies one MPID can be associated with more than one PCID, if the same Medicinal Product has more than one type of package.\r\n\r\n\t\t\t7. Any other kind of code that that identifies, classifies or clusters the administered product (e.g. the medicinal product or the product class).\r\n\r\n\r\n\t\t\tThe value sets used for the PhPID, MPID and PCID identifiers are provisional and include only few equivalent concepts used for exemplification purposes, they will be updated with real IDMP identifiers when they will become available."
* vaccineCode ^binding.description = "The type of vaccine for particular disease or diseases against which the patient has been immunised."
* vaccineCode contains
    vaccineGPSCode 0..1 MS and
    atcClass 0..1 MS and
    absentOrUnknownImmunization 0..1 MS
* vaccineCode[vaccineGPSCode] from $vaccines-gps-uv-ips (required)
* vaccineCode[vaccineGPSCode] ^short = "Code for vaccine from the SNOMED CT GPS code set"
* vaccineCode[vaccineGPSCode] ^definition = "Code for a vaccine that is selected from the SNOMED CT GPS code set."
* vaccineCode[vaccineGPSCode] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* vaccineCode[vaccineGPSCode] ^binding.extension.valueString = "vaccineGPS"
* vaccineCode[atcClass] from $whoatc-uv-ips (required)
* vaccineCode[atcClass] ^short = "WHO ATC classification"
* vaccineCode[atcClass] ^definition = "WHO ATC classification"
* vaccineCode[atcClass] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* vaccineCode[atcClass] ^binding.extension.valueString = "WHO ATC"
* vaccineCode[absentOrUnknownImmunization] from $absent-or-unknown-immunizations-uv-ips (required)
* vaccineCode[absentOrUnknownImmunization] ^short = "Absent Unknown Immunization"
* vaccineCode[absentOrUnknownImmunization] ^definition = "A reference to a code indicating that there there are no known immunizations or that this information is unknown."
* vaccineCode[absentOrUnknownImmunization] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* vaccineCode[absentOrUnknownImmunization] ^binding.extension.valueString = "Absent Unknown Immunization"
*/
* patient only Reference(CZ_Patient)
* patient MS
* patient.reference 1.. MS
* occurrence[x] 1..1 MS
* occurrence[x].extension contains $data-absent-reason named data-absent-reason 0..1 MS
* occurrence[x].extension[data-absent-reason] ^short = "occurrence[x] absence reason"
* occurrence[x].extension[data-absent-reason] ^definition = "Provides a reason why the occurrence is missing."
* site only CodeableConceptIPS
* site from $target-site-uv-ips (preferred)
* route only CodeableConceptIPS
* route from $medicine-route-of-administration (preferred)
* route ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* route ^binding.extension.valueString = "ImmunizationRoute"
* protocolApplied.targetDisease from $targetDiseases-uv-ips (preferred)
* protocolApplied.targetDisease ^slicing.discriminator.type = #pattern
* protocolApplied.targetDisease ^slicing.discriminator.path = "$this"
* protocolApplied.targetDisease ^slicing.description = "Discriminated by bound value set"
* protocolApplied.targetDisease ^slicing.rules = #open
* protocolApplied.targetDisease contains targetDiseaseGPSCode 0..1
* protocolApplied.targetDisease[targetDiseaseGPSCode] from $targetDiseases-gps-uv-ips (required)
* protocolApplied.targetDisease[targetDiseaseGPSCode] ^short = "Code for a disease the vaccination is against from the SNOMED CT GPS code set."
* protocolApplied.targetDisease[targetDiseaseGPSCode] ^definition = "Code for a disease the vaccination is against from the SNOMED CT GPS code set."
* protocolApplied.targetDisease[targetDiseaseGPSCode] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* protocolApplied.targetDisease[targetDiseaseGPSCode] ^binding.extension.valueString = "TargetDiseasesGpsUvIps"