Profile: CZ_Procedure
Parent: ProcedureUvIps
Id: cz-Procedure
Title: "Procedure (CZ Patient summary)"
Description: "This profile represents the constraints applied to the Procedure resource by the IPS project, which specifies an entry of the History of Procedure for the international patient summary based on the FHIR standard R4."

* subject only Reference(CZ_Patient)
* performer.actor only Reference(CZ_Patient or RelatedPerson or DeviceObserverUvIps or CZ_Practitioner or CZ_PractitionerRole or CZ_Organization)
* performer.onBehalfOf only Reference(CZ_Organization)
