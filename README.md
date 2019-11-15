
### [Makers Academy](http://www.makersacademy.com) - Week 1 Pair Programming Project

Boris Bike Challenge 
-

[User Story](#Story) | [Objects & Methods](#Methods)

## <a name="Outline">Outline</a>

Hello! This is the Week_1 pairing challenge project, Boris Bikes! 🚲

We've been commissioned by Transport for London, the body responsible for delivery of a new bike system, to build the best bike system in London. 🚀

We're going to create a network of docking stations and bikes that anyone can use. By building a program that will emulate all the docking stations, bikes, and infrastructure (repair staff, and so on) required to make their dream into a reality.

## <a name="Task">The Task</a>

Throughout the course of the project we we’re given several `User Stories` which are listed below. We started to determine which parts of the `User Story` are `Objects` and which are `Methods`. As in all TDD we created a test for a feature that we wanted to manipulate and then wrote the code to pass those tests.


-
<a name="Story">User Story</a>
-

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

As a person,
So that I can use a bike,
I'd like to get a bike from a docking station.

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
```

-
<a name="Methods">Objects & Methods</a>
-


### Bike


| Methods  | Description                                            |
|----------|--------------------------------------------------------|
| Bike.new | Creates a new instance of a bike                       |




### DockingStation


| Methods            | Description                                                                     |
|--------------------|---------------------------------------------------------------------------------|
| DockingStation.new | Creates a new instance of a docking station                                     |
| .bikes             | returns an array of all docked bikes                                            |
| .dock (bike)       | docks a bike in the station                                                     |
| .release (bike)    | releases a docked bike from the station                                         |

--
