# Chaos API

## Background
The Chaos API project was created as part of an effort to support a distributed training system for engineers in my organization. The existing systems were built using the monolithic design patterns that are common in early stage start ups and companies that are trying to transition beyond that point (and especially in .Net shops where the reliance on MSSQL is overly tempting). 
As we worked to break apart the monolith, we identified a need to help train the engineering staff to better the increased risk of failures that arise when you increase the number of remote services you invoke. 
Chaos API aims to try to provide a simple app that can simulate a wide-variety of failure scenarios that teams can actually write code against to gain practical experience with the application of the training concepts. 

## How it works
Chaos API is a ruby/rails app that exposes a small set of API endpoints. It selects a type of return to provide by randomly picking from a list of configured Response objects. Each object provides its own unique blend of situation that can be experienced in the wild when consuming API's. 

Some examples include
* SlowResponse - Defaults to a 45 second wait before returning
* ErrorResponse - Automatically throws an ArgumentError back to the client which returns a stack track instead of a valid response.
* LargePayloadResponse - Returns a JSON containing 1 Million records to try support testing of parsing and serialization issues (helpful in testing for memory leak practices)
* SuccessResponse - Returns a 200 code (just to keep people on thier toes)

Additional clients can be added by creating a new implementation of the ChaosResponse class and adding it to the array in the ChaosService. 



# Implementation

## Ruby version
Chaos API us set to function using Ruby 2.5.0.

## System dependencies
In an effort to keep the system as light-weight as possible, the app does not have any DB dependencies. It uses Nokogiri to do XML generation, but that should be the only complex gem is uses. 

## Deployment instructions
The Chaos API can easily be pulled down and run locally for teams or organizations that would like to. 
I am also working to host a version of it in Heroku for teams that just want to write the client code and not mess with their own server. If you have using the API in low volume and do not have a need to add custom code then this can be a good choice. 
For those organizations that want to use it under high-volume, I recommend running a local copy. 


