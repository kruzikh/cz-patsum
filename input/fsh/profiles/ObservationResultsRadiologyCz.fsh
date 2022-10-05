Profile: CZ_ObservationResultsRadiology
Parent: ObservationResultsRadiologyUvIps
Id: cz-ObservationResultsRadiology
Title: "Observation Results: radiology (CZ Patient summary)"
Description: """This profile represents the constraints applied to the Observation resource by the CZ Patient summary project, which specifies a radiology observation for the IPS based on the FHIR standard R4. 

This observation may represent the conclusions of a diagnostic procedure such a Chest RX, or it may group the set of results produced by that single or multi-modality procedure. 

In the latter case, the main observation (this one) carries the overall conclusion of the study and/or a global interpretation by the observer of the study as value of this observation; and may references the atomic results of the study as "child observations".

It allows also providing details about the related study using the partOf element referring to an ImagingStudy resource.
"""
* partOf only Reference(CZ_ImagingStudy)
* subject only Reference(CZ_Patient)
* performer only Reference(CZ_Practitioner or CZ_PractitionerRole or CZ_Organization or CareTeam or CZ_Patient or RelatedPerson)
* device only Reference(CZ_DeviceObserver)
* hasMember only Reference(CZ_ObservationResultsRadiology or CZ_ObservationResults)
