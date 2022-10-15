Profile: CZ_BundlePatientSummary
Parent: Bundle
Id: cz-BundlePatientSummary
Title: "Bundle Patient Summary (CZ)"
Description: "This profile represents the constraints applied to the Bundle resource by the Czech Patient Summary (CZ PS) FHIR Implementation Guide."
* ^purpose = "A Czech Patient Summary (CZ PS) bundle is an electronic health record extract containing essential healthcare information about a subject of care, comprising at least the required elements of the CZ PS dataset."
* obeys bdl-ips-1
* . ^short = "Czech Patient Summary Bundle"
* . ^definition = "Czech Patient Summary Bundle. \r\nA container for a collection of resources in the patient summary document."
* identifier 1.. MS
* type = #document (exactly)
* timestamp 1.. MS
* link ..0
* entry 1.. MS
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry ^short = "Entry resource in the patient summary bundle"
* entry ^definition = "An entry resource included in the patient summary document bundle resource."
* entry ^comment = "Must contain the IPS Composition as the first entry (only a single Composition resource instance may be included).  Additional constraints are specified in the IPS Composition profile."
* entry.fullUrl 1.. MS
* entry.search ..0
* entry.request ..0
* entry.response ..0
* entry contains
//     composition 1..1 and
    patient 1..1 and
    allergyintolerance 0..* and
//     condition 0..* and
    device 0..* and
    deviceusestatement 0..* and
    diagnosticreport 0..* and
    imagingstudy 0..* and
    immunization 0..* and
    media 0..* and
    medication 0..* and
    medicationrequest 0..* and
    medicationstatement 0..* and
    practitioner 0..* and
    practitionerrole 0..* and
    procedure 0..* and
    organization 0..* and
    observation-pregnancy-edd 0..* and
    observation-pregnancy-outcome 0..* and
    observation-pregnancy-status 0..* and
    observation-alcohol-use 0..* and
    observation-tobacco-use 0..* and
    observation-results 0..* and
    specimen 0..*
// * entry[composition].resource 1..
// * entry[composition].resource only CZ_Composition
* entry[patient].resource 1..
* entry[patient].resource only CZ_Patient
* entry[allergyintolerance].resource 1..
* entry[allergyintolerance].resource only CZ_AllergyIntolerancePS
// * entry[condition].resource 1..
// * entry[condition].resource only CZ_Condition
* entry[device].resource 1..
* entry[device].resource only CZ_DevicePS
* entry[deviceusestatement].resource 1..
* entry[deviceusestatement].resource only CZ_DeviceUseStatementPS
* entry[diagnosticreport].resource 1..
* entry[diagnosticreport].resource only CZ_DiagnosticReportPS
* entry[imagingstudy].resource 1..
* entry[imagingstudy].resource only CZ_ImagingStudyPS
* entry[immunization].resource 1..
* entry[immunization].resource only CZ_ImmunizationPS
* entry[media].resource 1..
* entry[media].resource only CZ_MediaObservationPS
* entry[medication].resource 1..
* entry[medication].resource only CZ_MedicationPS
* entry[medicationrequest].resource 1..
* entry[medicationrequest].resource only CzMedicationRequestPS
* entry[medicationstatement].resource 1..
* entry[medicationstatement].resource only CZ_MedicationStatementPS
* entry[practitioner].resource 1..
* entry[practitioner].resource only CZ_Practitioner
* entry[practitionerrole].resource 1..
* entry[practitionerrole].resource only CZ_PractitionerRole
* entry[procedure].resource 1..
* entry[procedure].resource only CZ_ProcedurePS
* entry[organization].resource 1..
* entry[organization].resource only CZ_Organization
* entry[observation-pregnancy-edd].resource 1..
* entry[observation-pregnancy-edd].resource only CZ_ObservationPregnancyEddPS
* entry[observation-pregnancy-outcome].resource 1..
* entry[observation-pregnancy-outcome].resource only CZ_ObservationPregnancyOutcomePS
* entry[observation-pregnancy-status].resource 1..
* entry[observation-pregnancy-status].resource only CZ_ObservationPregnancyStatusPS
* entry[observation-alcohol-use].resource 1..
* entry[observation-alcohol-use].resource only CZ_ObservationAlcoholUsePS
* entry[observation-tobacco-use].resource 1..
* entry[observation-tobacco-use].resource only CZ_ObservationTobaccoUsePS
* entry[observation-results].resource 1..
* entry[observation-results].resource only CZ_ObservationResultsPS
* entry[specimen].resource 1..
* entry[specimen].resource only CZ_SpecimenPS
