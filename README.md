_sf_
====

Mirror of the [Software Foundations](http://softwarefoundations.cis.upenn.edu/) series of books.  Includes generated PDFs.

- B. Pierce, et al. (2021) [“Logical Foundations”](doc/pdf/lf.pdf)  
  _Version 6.1 (2021-08-11 15:09, Coq 8.12 or later)_

- B. Pierce, et al. (2021) [“Programming Language Foundations”](doc/pdf/plf.pdf)  
  _Version 6.1 (2021-08-11 15:14, Coq 8.12 or later)_

- A. Appel (2021) [“Verified Functional Algorithms”](doc/pdf/vfa.pdf)  
  _Version 1.5.1 (2021-08-11 15:18, Coq 8.12 or later)_

- L. Lampropoulos and B. Pierce (2021) [“QuickChick: Property-Based Testing in Coq”](doc/pdf/qc.pdf)  
  _Version 1.2.1 (2021-08-11 15:19, Coq 8.12 or later)_

- A. Appel and Q. Cao (2021) [“Verifiable C”](doc/pdf/vc.pdf)  
  _Version 1.1.1 (2021-08-11 15:23, Coq 8.13) Compatible with VST 2.8 (June 2021)_

- A. Charguéraud ["Separation Logic Foundations"](doc/pdf/slf)
  _Version 1.1 (2021-08-11 15:27, Coq 8.12 or later)_


Usage
-----

To regenerate the PDFs, ensure Coq, QuickChick, VST and LaTeX are installed, then:

```
$ make
```

If you use [Nix](https://nixos.org), all the tools needed should be available.

```
$ # With flakes (allow impure for compcert)
$ NIXPKGS_ALLOW_UNFREE=1 nix develop --impure

$ # Default Nix
$ NIXPKGS_ALLOW_UNFREE=1 nix-shell
```

### Notes

The [Makefiles](src/Makefile.patch) are patched during the build process, so that chapters are generated in the right order, and the LaTeX nesting limit is not reached.

Similarly, the following chapters are patched:

- Logical Foundation book
  - [Induction](src/Induction.v.patch) _To escape code listings_
- Verified Functional Algorithms book
  - [Extract](src/Extract.v.patch) _To escape code listings_
  - [Redblack](src/Redblack.v.patch) _To escape code listings_
- QuickChick book
  - [Typeclasses](src/Typeclasses.v.patch) _To combine diacritic mark to avoid LaTeX confusion_
  - [QuickChickTool](src/QuickChickTool.v.patch) _To escape code listings_
- Verifiable C book
  - [Verif_sumarray](src/Verif_sumarray.v.patch) _To escape code listings_
  - [Verif_reverse](src/Verif_reverse.v.patch) _To escape code listings_
  - [Verif_strlib](src/Verif_strlib.v.patch) _To escape code listings_
  - [Verif_hash](src/Verif_hash.v.patch) _To escape code listings_
- Separation Logic Foundations
  - [Rules](src/Rules.v.patch) _To combine diacritic mark to avoid LaTeX confusion_


About
-----

Packaged by [Miëtek Bak](https://mietek.io/).
