# Fonts
Fonts is a repository of fonts that are used across all ZORA agents in their
offline computing system. The selection of fonts are opinionated and are sourced
from open licensed stores like [Google Font](https://fonts.google.com/).




## Why Such Repository
In short, we want a single common font library to ease our local use
(rather than depending on network pull the sources). Instead of having everyone
create their own set of fonts, we consolidate them into a company-wide version,
allowing everyone to have access to all fonts used by the team.

We tried to use the [Google Fonts](https://www.github.com/googlefonts/)
repository but ended up downloading a very large repo instead. Hence, that's
another reason for us to select required fonts from it.

Another good reason is anyone on Debian can just download the repository and
deploy easily into `$HOME/.fonts` directory and then execute:

```bash
$ fc-cache
```




## Selection of Fonts
The fonts are primarily selected based on the type of projects we engaged in.
Usually, the selected fonts are used for:

1. Graphic design work
2. Video processing (design and presentation)

Our documentations primarily and strictly use Noto Family (sans, mono, and
serif). It is rare to see us use other fonts for work and coding purposes.




## Licensing
All sourced fonts **MUST** be licensed under the
[Open Font License](https://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=OFL).
Otherwise, we do not have the permission to distribute and to re-distribute the
font freely under this repository.
