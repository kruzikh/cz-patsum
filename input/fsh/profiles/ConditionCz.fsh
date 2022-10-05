Profile: CZ_Condition
Parent: ConditionUvIps
Id: cz-Condition
Title: "Condition (CZ Patient summary)"
Description: "This profile represents the constraints applied to the Condition resource by the International Patient Summary (IPS) FHIR Implementation Guide. A record of a problem is represented in the patient summary as an instance of the Condition resource constrained by this profile."
* ^status = #active
* ^publisher = "NCEZ"
* ^purpose = "Representation of a problem in the czech patient summary"
* . ^short = "Documentation of a health problem of the patient"

* subject only Reference(CZ_Patient)
