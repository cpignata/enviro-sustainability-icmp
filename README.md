# ICMP Extensions for Environmental Information

Source repository for the Internet-Draft **"ICMP Extensions for Environmental
Information"** (`draft-pignataro-icmp-enviro-info`).

Datatracker: https://datatracker.ietf.org/doc/draft-pignataro-icmp-enviro-info/

Authors: Carlos Pignataro, Jainam Parikh, Ron Bonica, Michael Welzl

## Layout

- `draft-pignataro-icmp-enviro-info.xml` — draft source
- `draft-pignataro-icmp-enviro-info.txt` — generated text output
- `revisions/` — snapshots of each submitted revision
- `attic/` — old notes and working files not part of the published draft

## Building

- `make` — regenerate `draft-pignataro-icmp-enviro-info.txt` from the XML source using [`xml2rfc`](https://github.com/ietf-tools/xml2rfc), then diff it against the latest revision in `revisions/`
- `make diff` — just the diff step, producing `draft-pignataro-icmp-enviro-info-diff.html` via [`iddiff`](https://github.com/ietf-tools/iddiff)
- `make clean` — remove the generated diff output

Requires `xml2rfc` and `iddiff` to be installed.

## Contributing

Contributions are welcome via pull request. Open an issue first for
substantive changes so they can be discussed before drafting text.
