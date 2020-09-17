# `_normalize.scss` v2.3.1

`_normalize.scss` is a customisable Sass file that makes browsers render all
elements more consistently and in line with modern standards--derived from
Nicholas Gallagher's `Normalize.css` project. It is the result of researching the
differences between default browser styles in order to precisely target only
the styles that need normalizing.

[Check out the demo](https://darcmattr.github.io/_normalize.scss/test.html)

## What does it do?

* Preserves useful defaults, unlike many CSS resets.
* Normalizes styles for a wide range of elements.
* Corrects bugs and common browser inconsistencies.
* Improves usability with subtle improvements.
* Explains what code does using detailed comments.

## How to use it

I intend `_normalize.scss` to be used as a declaration of many default styles
that I used in Ayn Rand Institute web projects, and for working around many
browser quirks. It has been adapted for use as an `@import` into a site's
stylesheet, and compiled in using [Sass][], using a subset of Sass that can be
compiled by [libsass][]. An `npm` build script for making a standalone version
is provided, if you wish to make a standalone version.

The following variables are used throughout the code, and you can override them
in your own loader stylesheets:

```SCSS
$base-font-size: 16px !default; // otherwise inherited from _rem library
$text-color: #333 !default;
$background-color: #ccc !default;
$line-height-multiplier: 1.2 !default;
$lh: $line-height-multiplier * 1rem !default;
```

## Dependencies:

[Node.JS][] and its package manager, [npm][]. Install Node.JS via whatever
method you choose (too much to list here, bleh).

Running `npm install` in the project directory will also build the CSS.

## For the future

This file is becoming less of a normalizer, and more of a "framework", as my
opinions about the margins/padding and base appearance of some links are
creeping in. I re-sync with Necolas' project whenever I judge that another
default or cleanup is needed.

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
[Sass]: https://sass-lang.com
[libsass]: http://sass-lang.com/libsass
[Node.JS]: https://nodejs.org/
[npm]: https://www.npmjs.com/
