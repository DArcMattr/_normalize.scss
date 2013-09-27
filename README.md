# `_normalize.scss` v1.1.0

`_normalize.scss` is a customisable SASS file that makes browsers render all
elements more consistently and in line with modern standards--derived from
Nicholas Gallagher's `Normalize.css` project. It is the result of researching the
differences between default browser styles in order to precisely target only
the styles that need normalizing.

[Check out the demo](http://darcmattr.github.io/_normalize.scss/test.html)

## What does it do?

* Preserves useful defaults, unlike many CSS resets.
* Normalizes styles for a wide range of elements.
* Corrects bugs and common browser inconsistencies.
* Improves usability with subtle improvements.
* Explains what code does using detailed comments.

## How to use it

I intend `_normalize.scss` to be used as a declaration of many default styles
that I use in Ayn Rand Institute web projects, and for working around many
browser quirks. It has been adapted for use as an `@import` into a site's
stylesheet, and compiled in using [Compass][].  A standalone version is
generated for sites where the entirety of the source markup is out of my hands.
The project also requires use of Compass, but is not making much use of it yet.

The project comes with a git hook, which has to be symlinked into the .git
directory to be used

    ln ./git_hooks/post-merge ./.git/hooks/post-merge

### From Nicholas Gallagher (necolas):

`_normalize.scss` is intended to be used as an alternative to CSS resets.

It's suggested that you read the `_normalize.scss` file and consider customising
it to meet your needs. Alternatively, include the file in your project and
override the defaults later in your CSS.

## Browser support

I am tracking the v1 series, because I want to keep some old browser support
around, these old browsers include:

* Google Chrome
* Mozilla Firefox 3+ (the Long-Term Support release of Firefox is based on v3)
* Apple Safari 4+ (because some people haven't upgraded their iOS version)
* Opera 10+
* Internet Explorer 6+ (better in here than in my main CSS files)

## Contribute

Please contribute to the upstream project: Please read the [issue
guidelines][].  Issue reports to me are welcome, but either address a matter of
my personal taste or site standards, or ultimately rely on the work of the
upstream maintainers. Only one of those is a "public" problem (hint, it's
upstream).

## Acknowledgements

`_normalize.css` is adapted from Normalize.css, which is a project by [Nicolas
Gallagher][] and [Jonathan Neal][].

[Jonathan Neal]: http://github.com/jonathantneal
[Nicolas Gallagher]: http://github.com/necolas
[issue guidelines]: https://github.com/necolas/issue-guidelines
[Compass]: http://compass-style.org
