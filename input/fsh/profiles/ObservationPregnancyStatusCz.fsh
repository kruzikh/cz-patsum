Profile: CZ_ObservationPregnancyStatus
Parent: ObservationPregnancyStatusUvIps
Id: cz-ObservationPregnancyStatus
Title: "Observation (Pregnancy: status)"
Description: "This profile constrains the Observation resource to represent the pregnancy status."

* subject only Reference(CZ_Patient)
* hasMember only Reference(ObservationPregnancyEddCz)
