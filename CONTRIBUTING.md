# How to Contribute

Everone is welcome to contribute to this repo! This document furnishes some practices
to be followed while making contributitions here.

## Adding a new chapter or example

Following steps should be taken to make a new chapter entry to the book:
- All source code is to be added to `src` directory.
- A new chapter should be added with this scheme `src/<new_chapter>/new_chapter.adoc`.
- All code related to the new chapter should be checked in `src/euvm_examples/<new_chapter>/`.
- Common artefacts like fonts, images and themes should be checked into their
corresponding directories in `src/resources/` respectively.

## After making the requisite changes

This project adheres to Semantic Versioning in the format `<major>`.`<minor>`.`<patch>`. Before every merge request, make sure an entry is made in `CHANGELOG.md` with the new version and the relevant changes listed below. 