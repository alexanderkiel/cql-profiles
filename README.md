# CQL Measure Showing Resource Profiles

The following measure will show the profiles used in the following resource types:

* Patient
* Encounter
* Condition
* Observation
* MedicationStatement
* MedicationAdministration

Before you start, you have to:

## Install Blazectl

[Blazectl](https://github.com/samply/blazectl) is a command line utility that can, among other things, evaluate a CQL measure against a Blaze server available via HTTP. You'll find the installation instructions for your platform in its [README](https://github.com/samply/blazectl). At least version 0.12.0 is required.

## Install jq

Please have a look into the [Download section of jq](https://stedolan.github.io/jq/download/).

After that, you should able to run the following command line:

```sh
blazectl evaluate-measure profiles.yml --server https://blaze.life.uni-leipzig.de/fhir | jq -rf profiles.jq
```

The command should output the following CSV formatted data:

```csv
"type","profile","count"
"Patient","http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient",210
"Patient","null",275
"Encounter","http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter",4001
"Condition","http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition",2147
"Observation","http://hl7.org/fhir/StructureDefinition/bmi",1659
"Observation","http://hl7.org/fhir/StructureDefinition/bodyheight",2010
"Observation","http://hl7.org/fhir/StructureDefinition/bodytemp",340
"Observation","http://hl7.org/fhir/StructureDefinition/bodyweight",2194
"Observation","http://hl7.org/fhir/StructureDefinition/bp",2208
"Observation","http://hl7.org/fhir/StructureDefinition/headcircum",519
"Observation","http://hl7.org/fhir/StructureDefinition/heartrate",2192
"Observation","http://hl7.org/fhir/StructureDefinition/resprate",2192
"Observation","http://hl7.org/fhir/us/core/StructureDefinition/pediatric-bmi-for-age",761
"Observation","http://hl7.org/fhir/us/core/StructureDefinition/pediatric-weight-for-height",519
"Observation","http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab",9439
"Observation","http://hl7.org/fhir/us/core/StructureDefinition/us-core-pulse-oximetry",184
"Observation","http://hl7.org/fhir/us/core/StructureDefinition/us-core-smokingstatus",2008
"Observation","null",2918
"MedicationAdministration","null",9
```

In that data you will see each profile used in each resource type listed in the measure.

You can find the measure in [profiles.yml](profiles.yml), a slimmed-down version of a real [Measure](http://www.hl7.org/fhir/measure.html) resource and the CQL library in [profiles.cql](profiles.cql). For more information, please read [Evaluate a CQL Measure using the Command Line and Blazectl](https://github.com/samply/blaze/blob/master/docs/cql-queries/blazectl.md) in the [Blaze](https://github.com/samply/blaze) documentation.
