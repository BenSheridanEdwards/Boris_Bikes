
### [Makers Academy](http://www.makersacademy.com) - Week 1 Pair Programming Project

Boris Bike Challenge 
-

[Project Outline](#Outline) | [Task](#Task) | [Installation Instructions](#Installation) | [Features](#Features) | [User Stories](#Story) | [Objects & Methods](#Methods) |


## <a name="Outline">Project Outline</a>
 
Hello World! This is the Maker's week 1 pairing project, Boris Bikes! 🚲

This week we've been commissioned by Transport for London (TFL), to deliver a new bike system that'll be the best London has ever seen. 🚀

We're going to create a network of docking stations and bikes that anyone can use. By building a program that will emulate all the docking stations, bikes, and infrastructure (repair staff, and so on) required to make TFL's dream into a reality.

## <a name="Task">The Task</a>

Throughout the course of the project we were given several `User Stories` which are listed below. We started to determine which parts of the `User Story` are `Objects` and which are `Methods`. Then we test-drived the creation of the Boris Bike program.

## <a name="Installation">Installation Instructions</a>

Clone the repository from github then change directory into it.

```
$ git clone git@github.com:BenSheridanEdwards/Makers_Boris_Bikes_Ruby.git
$ cd Makers_Boris_Bikes_Ruby
```
Load dependencies with bundle.
```
$ bundle install
```

Load the app in IRB, and require the docking station.

```
$ irb
2.6.3 :001 > load './lib/docking_station.rb'
 => true
```

Create an instance of the Docking Station and a working Bike. 

```

2.6.3 :003 > station = DockingStation.new
 => #<DockingStation:0x00007f84ef97ec00 @bike_dock=[], @capacity=20>
2.6.3 :004 > bike = Bike.new
 => #<Bike:0x00007f84ef987a08 @working=true>

```

## <a name="Features">Features</a>

```

# Bikes can be docked at the docking station
2.6.3 :005 > station.dock(bike)
=> [#<Bike:0x00007f84ef987a08 @working=true>]

# Bikes can be released from the docking stations
2.6.3 :006 > station.release
=> #<Bike:0x00007f84ef987a08 @working=true>


```

## <a name="Story">User Stories</a>

```
As a cyclist,
So that I can use a bike,
I'd like a docking station to release a bike.

As a cyclist,
So that I can make use of a working bike,
I'd like to see if a bike is working.

As a cyclist,
So I can return bikes I've hired,
I'd like to be able to dock them at a docking station.

As a member of the public
So I can only receive working bikes from the station,
I don't want to receive broken bikes from a docking station.

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
```


## <a name="Methods">Objects & Methods</a>
-


### Bike


| Methods        | Description                                            |
|----------------|--------------------------------------------------------|
| Bike.new       | Creates a new instance of a bike                       |
| .working?      | Checks if the bike is working                          |
| .broken?       | Checks if the bike is broken                           |
| .report_broken | Reports the bike as broken                             |
  




### DockingStation


| Methods            | Description                                                                     |
|--------------------|---------------------------------------------------------------------------------|
| DockingStation.new | Creates a new instance of a docking station                                     |
| .bikes             | returns an array of all docked bikes                                            |
| .dock(bike)        | docks a bike in the station                                                     |
| .release           | releases a docked bike from the station if one is available                     |
| .full?             | returns true if the bike dock is full                                           |
| .empty?            | returns true if the bike dock is empty                                          |
        
