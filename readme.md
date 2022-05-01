# Chicago Business Intelligence (Cloud Edition) 

Chicago Business Intelligence is a back-end program written by Python, which is deployed on Cloud. This Program can grasp the data from the Chicago Government Website, and intelligently generate 7 reports.

## Programming and Enviornment
Python and Docker.

## File Structure
- Chicago
    - cloudbuild.yml
    - Dockerfile
    - geo_loc.xlsx
    - get_data.py
    - main.py
    - report_airport.py
    - report_alert.py
    - report_ccvi.py
    - report_construction.py
    - report_infra_investment.py
    - report_loan.py
    - report_streetcaping.py
    - requirements.txt

## Build
1. There should be four containers, including:
    - chicago_business_intelligenc1
    - postgresdb
    - pgadmin
2. We should make the three containers in cloudbuild.yml, and set different ports for them(applications)
3. And we create database, through gcloud sql instances create mypostgres1 --database-version=POSTGRES_14 --cpu=2 --memory=7680MB --region=us-central
4. set password: gcloud sql users set-password postgres --instance=mypostgres1 --password=root
5. Create database instance: gcloud sql databases create chicago_business_intelligenc1 --instance=mypostgres1
6. set the cb2-trigger2, which is linked to my github. https://github.com/muhaochen-2021/chicago_business_intelligenc1


## Run
Update the Github, https://github.com/muhaochen-2021/chicago_business_intelligenc1
Run the cbi-trigger2

Then, we would get the results we want: 7 steps are deployed in the cloud, and microservice and pgadmin are craeted.
