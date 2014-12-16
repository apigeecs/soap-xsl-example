soap-xsl-example
================

Example proxy using XSL for JSON to SOAP conversion. This repository uses git submodule functionality to share common Apigee functionality between API repositories.

## Git Submodule
To create the apigee-common submodule, follow these steps:

1. apigee-common repository should be added at the same location as the code repository.
2. In the API repo, "git submodule add git@github.com:<githubAccount>/apigee-common.git apigee-common/". This will update the .gitmodules file with the submodule information.
3. Push the code to the API repo on github.
4. After cloning this repo, go into the repo's apigee-common directory and type "git submodule init" and then "git submodule update". This will copy the files from apigee-common into the local repo at the version associated with the repo.
5. To move the repo to the latest version of apigee-common, go into the repo's apigee-common directory and type "git pull origin master". You can then add and commit the change from the repo's top level directory (it should show up as a simple commit id change).

## SOAP Service
This API uses the Holiday Web Service SOAP API (http://www.holidaywebservice.com/HolidayService_v2/HolidayService2.asmx?wsdl).
