Profile: CZ_ImagingStudy
Parent: ImagingStudyUvIps
Id: cz-ImagingStudy
Title: "Imaging Study (CZ PS)"
Description: """This profile represents the constraints applied to the ImagingStudy resource by the IPS project, which specifies the information on a DICOM imaging study this imaging result is part of.
"""
* ^status = #active
* ^publisher = "NCEZ"
* subject only Reference(CZ_Patient)
