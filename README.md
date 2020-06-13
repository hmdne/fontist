# Fontist

![windows](https://github.com/fontist/fontist/workflows/windows/badge.svg)
![macos](https://github.com/fontist/fontist/workflows/macos/badge.svg)
![ubuntu](https://github.com/fontist/fontist/workflows/ubuntu/badge.svg)

A simple library to find and download fonts for Windows, Linux and Mac.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "fontist"
```

And then execute:

```sh
bundle install
```

Or install it yourself as:

```sh
gem install fontist
```

## Usage

### Font

The `Fontist::Font` is your go to place to deal with any font using fontist. This
interface will allow you to find a font or install a font. Lets start with how
can we find a font in your system.

#### Finding a font

The `Fontist::Fontist.find` interface can be used a find a font in your system.
It will look into the operating system specific font directories, and also the
fontist specific `~/.fontist` directory.

```ruby
Fontist::Font.find(name)
```

If fontist find a font then it will return the paths, but if not found then it
will could raise an unsupported font error or maybe an installation instruction
for that specific font.

### Supported fonts

```ruby
[
  "Arial",
  "Calibri",
  "Cambria",
  "Candara",
  "Consola",
  "Constantia",
  "Corbel",
  "Courier",
  "Meiryo",
  "Meiryo UI",
  "Source Code Pro",
  "Source Han Sans",
  "Source Sans Pro",
  "Source Serif Pro",
  "Times New Roman",
  "Trebuchet",
  "Verdana"
]
```

## Development

We are following Sandi Metz's Rules for this gem, you can read the
[description of the rules here][sandi-metz] All new code should follow these
rules. If you make changes in a pre-existing file that violates these rules you
should fix the violations as part of your contribution.

### Setup

Clone the repository.

```sh
git clone https://github.com/fontist/fontist
```

Setup your environment.

```sh
bin/setup
```

Run the test suite

```sh
bin/rspec
```

## Contributing

First, thank you for contributing! We love pull requests from everyone. By
participating in this project, you hereby grant [Ribose Inc.][riboseinc] the
right to grant or transfer an unlimited number of non exclusive licenses or
sub-licenses to third parties, under the copyright covering the contribution
to use the contribution by all means.

Here are a few technical guidelines to follow:

1. Open an [issue][issues] to discuss a new feature.
1. Write tests to support your new feature.
1. Make sure the entire test suite passes locally and on CI.
1. Open a Pull Request.
1. [Squash your commits][squash] after receiving feedback.
1. Party!


## Credit

This gem is developed, maintained and funded by [Ribose Inc.][riboseinc]

[riboseinc]: https://www.ribose.com
[issues]: https://github.com/fontist/fontist/issues
[squash]: https://github.com/thoughtbot/guides/tree/master/protocol/git#write-a-feature
[sandi-metz]: http://robots.thoughtbot.com/post/50655960596/sandi-metz-rules-for-developers
