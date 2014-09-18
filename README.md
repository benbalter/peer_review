# Labrador

*Sniffs out labs and other research institutions bassed on emails and domains. Also a loyal companion.*

[![Gem Version](https://badge.fury.io/rb/labrador.svg)](http://badge.fury.io/rb/labrador) [![Build Status](https://travis-ci.org/benbalter/labrador.svg)](https://travis-ci.org/benbalter/labrador)

Like [Gman](https://github.com/gman), Labrador extends [Naughty Or Nice](https://github.com/benbalter/naughty_or_nice) to validate whether a given email, url, or domain belongs to a research institution.

## Usage

```ruby
Labrador.valid? `foo@nih.gov`       #=> true
Labrador.valid? `http://sandia.gov` #=> true
Labrador.valid? `github.com`        #=> false
```
