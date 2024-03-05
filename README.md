[![banner](.src/logos/zoralab-fonts_1200x340.svg)](https://github.com/ZORALab/Fonts)

# ZORALab's Fonts
This fonts repository is the ZORALab's deployable fonts that are friendly for
public use with the following business goals:

1. **Making It Easy for Our Clients** - for modifications, deployment, and etc.
2. **Reusable Vetted Efforts** - vetted for
*Open Font Licenses stores with re-distributable license* for rapid prototyping.
3. **Easier to Scale Among ZORALab Members** - get to work without worrying
about glyphs and font availabilities.




## To Use

Simply `git clone` the repository to your operating system's fonts specific
folders and then execute the `update.sh.ps1` script is suffice. To roll in
updates, simply `git pull` and retry again.



### Linux & MacOS

The best location to house the font directory is the user-level font directory
or inside it. The location is:

```
${HOME}/.fonts
```

Hence, the usual commands are:

```
$ cd ~/.fonts
$ git clone https://github.com/ZORALab/Fonts.git zoralab
$ cd ./zoralab
$ ./update.sh.ps1
```

To update the repo from time to time, please enter the font repo and `git pull`:

```
$ cd ~/.fonts/zoralab && git pull
```



### Windows

Unlike Linux & MacOS, there is no specific location. Treat this repository like
any other source code repository.

The usual commands are:

```
$ git clone https://github.com/ZORALab/Fonts.git zoralab
$ cd .\zoralab
$ powershell.exe -noprofile -executionpolicy bypass -file .\update.sh.ps1
```

To update the repo from time to time, please enter the font repo and `git pull`:

```
$ cd .\zoralab && git pull
```




## Font Selection

The fonts are primarily selected based on the type of projects we engaged in.
Usually, the selected fonts are:

1. License complying to free (pricing and freedom) for both commerical and
   non-commerical use.
2. Lincese **MUST have unrestricted re-distributable rights as per se**.
3. Attributable to original authors.
4. Clear license file in case of legal dispute.
5. Suitable for most graphic design works.
6. Video processing (design and presentation).

Our documentations are primarily and strictly using Noto Family (sans, mono, and
serif). It is rare to see us use other fonts for work and coding purposes.




## Licensing
All sourced fonts **MUST** be licensed under the
[Open Font License](https://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=OFL).
Otherwise, we do not have the permission to distribute and to re-distribute the
font freely under this repository.
