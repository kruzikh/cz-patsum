Profile: CZ_DiagnosticReport
Parent: DiagnosticReportUvIps
Id: cz-DiagnosticReport
Title: "DiagnosticReport (CZ Patient summary)"
Description: "This profile constrains the DiagnosticReport resource to represent diagnostic test and procedure reports in a patient summary."
* ^status = #active
* ^experimental = false
* ^publisher = "NCEZ"
* ^purpose = "This profile constrains the DiagnosticReport resource to use the specific IPS profiles for observations and coded data types."
* subject only Reference(CZ_Patient or Group)
* performer only Reference(CZ_Practitioner or CZ_PractitionerRole or CZ_Organization or CareTeam)
* specimen only Reference(CZ_Specimen)