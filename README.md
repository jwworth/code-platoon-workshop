# Code Platoon Workshop

Welcome to the Hashrocket Code Platoon Workshop repository.

> The purpose of this repository is to support Hashrocket's workshop at Code
> Platoon, covering Test Driven Development and pair programming.

### Installation

Install Git on your machine, then run the following in a terminal window:

```
$ git clone https://github.com/jwworth/code-platoon-workshop
$ cd code-platoon-workshop
```

From here, open the first exercise in your text editor of choice.

### Running Tests

This test suite depends on a few gems to run. To install them on your machine,
run the following from the terminal:

```
$ gem install bundler
$ bundle install
```

Next, run any test like so:

```
$ ruby path/to/my_test.rb
```

Run all the tests with:

```
$ rake
```

Or run all the tests with [mrspec](https://github.com/JoshCheek/mrspec):

```
$ mrspec .
```

### Agenda

*Morning Session:*

* 09:00—09:30 AM: Intro to Testing
* 09:30—10:30 AM: 'Temperature Converter' demo
* *10 Minute Break*
* 10:40—11:00 AM: Intro to TDD
* 11:00—11:45 AM: 'Raindrops' & 'Scrabble Score' exercises
* 11:45—12:00 PM: Discussion and Q & A

*(Lunch)*

*Afternoon Session:*
* 1:00—1:30 PM: Intro to Pair Programming
* 1:30—3:00 PM: 'Phone Number' Exercise (w/ pair programming)
* *10 Minute Break*
* 3:10—4:30 PM: 'Grade School' Exercise (w/ pair programming)
* 4:30—5:00 PM: Discussion and Q & A

Afternoon code exercises utilize the [Code
Retreat](http://coderetreat.org/facilitating/structure-of-a-coderetreat)
structure.

### Resources

Some of the exercises here are borrowed from [Exercism.io](http://exercism.io/). It's
an awesome project you should definitely check out.

### License

This repository is released under the [MIT License](http://www.opensource.org/licenses/MIT).
