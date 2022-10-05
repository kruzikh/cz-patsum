Profile: CZ_Composition
Parent: CompositionUvIps
Id: cz-Composition
Title: "Composition (CZ Patient summary)"
Description: """Clinical document used to represent the Czech Patient Summary (CZ PS) data set. 
A Czech Patient Summary (IPS) document is an electronic health record extract containing essential healthcare information about a subject of care. 
The CZ PS dataset is minimal and non-exhaustive; specialty-agnostic and condition-independent; but still clinically relevant. As specified in EN 17269 and ISO 27269, it is designed for supporting the use case scenario for ‘unplanned, cross border care’, but it is not limited to it. It is intended to be international, i.e., to provide generic solutions for global application beyond a particular region or country.

This profile is based on the ClinicalDocument profile."""

* subject only Reference(CZ_Patient)
* relatesTo.target[x] only Identifier or Reference(Composition or CZ_Composition)

* section[sectionMedications].entry[medicationStatement] only Reference(CZ_MedicationStatement)
* section[sectionMedications].entry[medicationRequest] only Reference(CZ_MedicationRequest)

* section[sectionAllergies].entry[allergyOrIntolerance] only Reference(CZ_AllergyIntolerance)
* section[sectionProblems].entry[problem] only Reference(CZ_Condition)
* section[sectionProceduresHx].entry[procedure] only Reference(CZ_Procedure)
* section[sectionImmunizations].entry[immunization] only Reference(CZ_Immunization)
* section[sectionMedicalDevices].entry[deviceStatement] only Reference(CZ_DeviceUseStatement)
* section[sectionResults].entry[results-observation] only Reference(CZ_ObservationResults)
* section[sectionResults].entry[results-diagnosticReport] only Reference(CZ_DiagnosticReport)
* section[sectionPastIllnessHx].entry[pastProblem] only Reference(CZ_Condition)
* section[sectionFunctionalStatus].entry[disability] only Reference(CZ_Condition)
* section[sectionSocialHistory].entry[smokingTobaccoUse] only Reference(CZ_ObservationTobaccoUse)
* section[sectionSocialHistory].entry[alcoholUse] only Reference(CZ_ObservationAlcoholUse)
* section[sectionPregnancyHx].entry[pregnancyStatus] only Reference(CZ_ObservationPregnancyStatus)
* section[sectionPregnancyHx].entry[pregnancyOutcomeSummary] only Reference(CZ_ObservationPregnancyOutcome)
