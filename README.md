# README

Highwing is in the process of onboarding a new insurance broker, and looking to ingest their list of active insurance policies in order to make it available to insurance carriers to identify policies that they (the carrier) may be interested in competing to write. These policies are all property and casualty insurance - i.e., no health, benefits, or life. It comes from the broker’s internal management systems, which have few (if any) validation capabilities built in.

The ultimate goal is to expose this client’s book to Highwing’s carrier partners so that carrier users can spot opportunities that may be of interest to them and choose to pursue them. Chasing down an opportunity costs a fair bit of time, so we want to make sure that the data we are providing to the carriers is good enough to be worth the effort they are investing to pursue. Carriers are specifically interested in policies that are renewing in the coming months - i.e., those that expire in the next 12 months. To that end, we want to evaluate this data with an eye towards two end goals - what work do we need to do with the broker to make this data ready for use, and how do we operationalize it on an ongoing basis?

## Requirements

- [x] Display policy summary information and all associated information from carriers and clients
- [x] Create CsvImporter method to parse CSV and save data to database
- [x] Return results sorted active and expiring within the next 12 months (assuming today is 2018-02-03 because data is older)
- [ ] Allow Brokers to upload CSV
- [ ] Display full policy, carrier, and client information in detail/show view
- [ ] Setup job queue for large CSV files
- [ ] Provide validation tooling and feedback to brokers using CSV upload
- [ ] Filter to only property and casualty insurance

## Questions

- How can I filter to only property and casualty insurance?
- Since the data is old, can I assume a current date in the past?

The data set consists of three tables - Clients, Carriers, and Policies. You can download them in CSV format from https://www.dropbox.com/s/9ocldrdo3tqf47f/HighwingChallenge.zip?dl=0.

- Ruby version: 2.7.1

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...
