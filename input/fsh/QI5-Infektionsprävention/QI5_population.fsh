// TODO: is the basis here (for population) the patient or the device?

Instance: IntensiveCarePatients-InvasiveDevice
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Intensive Care Patients with at least one invasive device"
Description: "Intensive Care Patients with at least one invasive device"
* insert canonical-url(DIVI-DigiQIs, population/intensive-care-patients_invasive-device)
* status = #active
* name = "Population_IntensiveCarePatients_InvasiveDevice"

// Include Intensive Care Patients
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#133903000 "Care of Intensive Care Unit Patient"
* characteristic[procedure][=].exclude = false

// Include only Patients that have at least one invasive device 
* characteristic[device][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#19923001 "Catheter"
* characteristic[device][=].exclude = false


Instance: IntensiveCarePatients-InvasiveVentilation
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Intensive Care Patients with Invasive Ventilation"
Description: "Intensive Care Patients with Invasive Ventilation"
* insert canonical-url(DIVI-DigiQIs, population/intensive-care-patients_invasive-ventilation)
* status = #active
* name = "Population_IntensiveCarePatients_InvasiveVentilation"

// Include Intensive Care Patients
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#133903000 "Care of Intensive Care Unit Patient"
* characteristic[procedure][=].exclude = false

// Include only Patients with Invasive Ventilation
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#1258985005 "Invasive mechanical ventilation"
* characteristic[procedure][=].exclude = false

