# Labrador

*Sniffs out labs and other research institutions bassed on emails and domains. Also a loyal companion.*

## Usage

```ruby
Labrador.valid? `foo@nih.gov`       #=> true
Labrador.valid? `http://sandia.gov` #=> true
Labrador.valid? `github.com`        #=> false
```
