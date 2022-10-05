Profile: CZ_Immunization
Parent: ImmunizationUvIps
Id: cz-Immunization
Title: "Immunization (CZ Patient summary)"
Description: """This profile represents the constraints applied to the Immunization resource by the International Patient Summary (IPS) FHIR Implementation Guide. A record of an immunization is represented in the patient summary as an instance of an Immunization resource constrained by this profile.

It describes the event of a patient being administered a vaccination or a record of a vaccination as reported by a patient, a clinician or another party."""
* ^status = #active
* ^purpose = "This profile constrains the representation of a record of a vaccination of the patient, in the context of the czech patient summary."
* . ^definition = "Describes the event of a patient being administered a vaccination or a record of a vaccination as reported by a patient, a clinician or another party and may include vaccine reaction information and what vaccination protocol was followed"

* patient only Reference(CZ_Patient)
