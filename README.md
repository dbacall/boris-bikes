# Boris Bikes
London's Boris Bikes wanted to create transport for London, a new bike system that has a network of docking stations and bikes that anyone can use.

## Build Status

This project is currently a work in progress.

## Code style

- OOD
- TDD

## Tech Used

- RSpec
- Ruby

## Features

You'll be able to:

- Create new bike
- Use a bike
- Break a bike
- Check if a bike works
- Dock a bike

## User Stories
```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked

As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.

As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.

As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.

As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.

As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like vans to take broken bikes from docking stations and deliver them to garages to be fixed.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like vans to collect working bikes from garages and distribute them to docking stations.
```

## Intructions

- Fork this repository and clone it to your local sytem
- Go to the directory in your terminal
- Run `irb -r './lib/dockking_station.rb'` in your terminal, and then explore the app.

## Running the tests

- To run the tests type `rspec` in your terminal and hit enter.

## Versioning

"boris-bikes" is using ruby version 2.6.3, to change ruby versions run "rvm install ruby-2.6.3" in terminal.
