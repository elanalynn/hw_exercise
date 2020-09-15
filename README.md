# README

Highwing is in the process of onboarding a new insurance broker, and looking to ingest their list of active insurance policies in order to make it available to insurance carriers to identify policies that they (the carrier) may be interested in competing to write. These policies are all property and casualty insurance - i.e., no health, benefits, or life. It comes from the broker’s internal management systems, which have few (if any) validation capabilities built in.

The ultimate goal is to expose this client’s book to Highwing’s carrier partners so that carrier users can spot opportunities that may be of interest to them and choose to pursue them. Chasing down an opportunity costs a fair bit of time, so we want to make sure that the data we are providing to the carriers is good enough to be worth the effort they are investing to pursue. Carriers are specifically interested in policies that are renewing in the coming months - i.e., those that expire in the next 12 months. To that end, we want to evaluate this data with an eye towards two end goals - what work do we need to do with the broker to make this data ready for use, and how do we operationalize it on an ongoing basis?

The data set consists of three tables - Clients, Carriers, and Policies.

## MVP

- [x] Display policy summary information and all associated information from carriers and clients
- [x] Create CsvImporter method to parse CSV and save data to database
- [x] Return results sorted active and expiring within the next 12 months (assuming today is 2018-02-03 because data is older)
- [x] Allow Brokers to upload CSV
- [x] Filter to only property and casualty insurance

## Future considerations

- Display full policy, carrier, and client information in show views (Which data is important?)
- Set up job queue for importing large CSV files
  - In order to mitigate locking the database during intensive jobs, we may want to set up replicas to read from
- Provide validation tooling and feedback to brokers using CSV upload. This should depend on partner needs. Options include...
  - Making an interactive admin table to allow for corrections
  - Exporting a data file, so partners can correct data in their own systems

## Local development

- Ruby version: `2.7.1`
- Create and initialize database
  - `bundle exec rails db:setup`
  - `bundle exec rails db:migrate`
- Run server
  - `bundle exec rails serve`
- Run the test suite
  - `bundle exec rspec`
