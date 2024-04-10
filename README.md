# April 10: Academic Posters

An academic poster is a powerful way to present research findings or complex ideas in a visually engaging and succinct format. Posters are commonly used at academic conferences, seminars, and exhibitions. There are two big challenges with posters. The first is distilling research into core questions/findings into a static but appealing document. The second is standing awkwardly in front of it at a conference. I can help with the first.

## Prep for class
- [`posterdown` package](https://github.com/brentthorne/posterdown) and [lengthier example](https://shilaan.rbind.io/post/academic-conference-posters-using-posterdown/) of using it


Consider also a YAML for the `posterdown` option:

```
---
title: '**Title of my paper or project**'
author:
  - name: '**My Name**'
    affil: 1
    main: true
    twitter: myname123 
    email: myname@myhouse
affiliation:
  - num: 1
    address: Department of things, My Uni
main_findings:
  - "I have some things to say"
  - "I found **really important** things, and you should cite me!"
main_topsize: 0.2 
main_bottomsize: 0.1
primary_colour: "#0063B2FF"
secondary_colour: "#9CC3D5FF"
accent_colour: "#cc0000"
output: 
  posterdown::posterdown_betterport:
    self_contained: true
    pandoc_args: --mathjax
    number_sections: false
bibliography: packages.bib
link-citations: true
---
```

## Assessment
- Poster: submit electronically via Canvas on or before April 21.
