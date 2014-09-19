# Peer Review

[![Gem Version](https://badge.fury.io/rb/peer_review.svg)](http://badge.fury.io/rb/peer_review) [![Build Status](https://travis-ci.org/benbalter/peer_review.svg)](https://travis-ci.org/benbalter/peer_review)

Like [Gman](https://github.com/benbalter/gman), Peer Review extends [Naughty Or Nice](https://github.com/benbalter/naughty_or_nice) to validate whether a given email, url, or domain belongs to a research institution.

## Usage

```ruby
Labrador.valid? `foo@nih.gov`       #=> true
Labrador.valid? `http://sandia.gov` #=> true
Labrador.valid? `github.com`        #=> false
```
