# Labrador

*Sniffs out labs and other research institutions bassed on emails and domains. Also a loyal companion.*

[![Gem Version](https://badge.fury.io/rb/labrador.svg)](http://badge.fury.io/rb/labrador) [![Build Status](https://travis-ci.org/benbalter/labrador.svg)](https://travis-ci.org/benbalter/labrador)

## Usage

```ruby
Labrador.valid? `foo@nih.gov`       #=> true
Labrador.valid? `http://sandia.gov` #=> true
Labrador.valid? `github.com`        #=> false
```
