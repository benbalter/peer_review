# Peer Review

[![Gem Version](https://badge.fury.io/rb/peer_review.svg)](http://badge.fury.io/rb/peer_review) [![Build Status](https://travis-ci.org/benbalter/peer_review.svg)](https://travis-ci.org/benbalter/peer_review)

Like [Gman](https://github.com/benbalter/gman), Peer Review extends [Naughty Or Nice](https://github.com/benbalter/naughty_or_nice) to validate whether a given email, url, or domain belongs to a research institution.

## Usage

```ruby
PeerReview.valid? `foo@nih.gov`       #=> true
PeerReview.valid? `http://sandia.gov` #=> true
PeerReview.valid? `github.com`        #=> false
```

## Contributing

Peer Review just uses [this simple file of domains](https://github.com/benbalter/peer_review/blob/master/config/domains.txt) to work out whether the email belongs to a research organization. For example - US National Labs:

```
//US National Labs
anl.gov
bnl.gov
fnal.gov
inl.gov
lanl.gov
lbl.gov
llnl.gov
nist.gov
ornl.gov
pnnl.gov
pppl.gov
sandia.gov
srnl.doe.gov
srs.gov
ameslab.gov
```

If you want to add new domains to this list then please [open a pull request](https://github.com/benbalter/peer_review/pulls) with the modifications to `domains.txt` and a brief explanation of your additions.
