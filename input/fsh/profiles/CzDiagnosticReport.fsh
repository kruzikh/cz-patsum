Profile: CZ_DiagnosticReportPS
Parent: DiagnosticReport
Id: cz-DiagnosticReportPS
Title: "DiagnosticReport (CZ Patient summary)"
Description: "This profile constrains the DiagnosticReport resource to represent diagnostic test and procedure reports in a patient summary."
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 International"
* ^purpose = "This profile constrains the DiagnosticReport resource to use the specific IPS profiles for observations and coded data types."
* status = #final (exactly)
* status ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-display-hint"
* status ^extension.valueString = "default: final"
* category 1..1 MS
* category only CodeableConceptIPS
* code only CodeableConceptIPS
* code MS
* subject 1.. MS
* subject only Reference(CZ_Patient or Group)
* subject.reference 1.. MS
* effective[x] 1..1 MS
* effective[x] only dateTime or Period
* effective[x].extension contains $data-absent-reason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "effective[x] absence reason"
* effective[x].extension[data-absent-reason] ^definition = "Provides a reason why the effectiveTime is missing."
* performer only Reference(CZ_Practitioner or CZ_PractitionerRole or CZ_Organization or CareTeam)
* performer MS
* specimen only Reference(CZ_SpecimenLab)
* specimen ^mustSupport = false
* result MS
* result ^slicing.discriminator.type = #profile
* result ^slicing.discriminator.path = "resolve()"
* result ^slicing.rules = #open
* result ^short = "Observation results included in the diagnostic report."
* result ^definition = "Observation results included in the diagnostic report."
* result contains observation-results 0..* MS
* result[observation-results] only Reference(CZ_ObservationLaboratory or ObservationResultsPathologyUvIps or ObservationResultsRadiologyUvIps or ObservationResultsUvIps)