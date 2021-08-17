# Steps in Writing Guide Setup

[URL for Guide:](https://adanieljohnson.github.io/SWP_student_writing_guide/)

## Sections

* 000-Preface
* 010_For Instructors
    + Conventions
    + Heresies
* 050	Overview
    + Goals of Scientific Writing
    + How articles are organized
    + Learn what works: reading as a writer
    + How to read literature
* 100	Telling YOUR Story
    + What is your question?
    + So what?
* 150 Making Your Arguments
    + 160 Toulmin model of practical arguments
    + 200 Supporting your arguments with sources
* 250 Mastering Your Tools 
    + 300 Data Visualization
    + 350 Statistics 
    + 400 Citations, Zotero
* 450 Checklist For Success
* 500 Instructor Resources

## Essential Sources
These are books and web pages that go into greater depth than we can explore in one workshop.

### R Cookbook for Education
https://rstudio4edu.github.io/rstudio4edu-book/intro-bookdown.html
(Better explained than the source book. Use this for step-by-step instructions.)

### Deep Dive Guides to Bookdown & R Markdown
[Authoring Books with R Markdown](https://bookdown.org/yihui/bookdown/)
[Definitive Guide to R Markdown](https://bookdown.org/yihui/rmarkdown/)
[R Markdown Cookbook](https://bookdown.org/yihui/rmarkdown-cookbook/)

### Using R
[R for Data Science](https://r4ds.had.co.nz/)
[R Graphics Cookbook](https://r-graphics.org/)
[Statistics with R](https://moderndive.com/)
[McDonald's Handbook of Statistics](http://www.biostathandbook.com/)
[R Companion for McDonald](https://rcompanion.org/rcompanion/a_02.html)



## Steps for building the book

1. Create GitHub account and an empty repo.
2. Grab the URL like this one to connect the GitHub repo to a local folder.
  https://github.com/adanieljohnson/SWP_writing_guide.git

Inside R Studio
3. Make a local folder connected to the GitHub repo.
  https://github.com/adanieljohnson/SWP_writing_guide.git

4. Install bookdown
  library(bookdown)

5. Build a simple starter book.
  bookdown:::bookdown_skeleton(getwd())

6. Create the book
  bookdown::serve_book()

7. Push to GitHub

8. Once the link between GitHub and RStudio are settled, adjust the YAML files and create two folders: /docs, and /images

9. Check the book via GitHub link.

10. Start writing.
  a. Writing does NOT require setting up the book in advance. 
  b. Write pages in plain .md format, and switch the suffix later.
  c. Check pages using Preview in text editor, or Marked2.

Three editor options
  1. Directly in RStudio
  2. Commercial standalone (I like BBEdit)
  3. Free standalone editor (NP++, Atom, VSC)

Text Editors

* Free
    + Atom
    + Notepad++ (Windows)
    + Visual Studio Code
    + Brackets
    + Bluefish
* Freemium
    + TextMate
    + Komodo Edit
* Commercial
    + Sublime Text
    + BBEdit (Mac)
    + UltraEdit



# Introduction {#intro}

You can label chapter and section titles using `{#label}` after them, e.g., we can reference Chapter \@ref(intro). If you do not manually label them, there will be automatic labels anyway, e.g., Chapter \@ref(methods).

Figures and tables with captions will be placed in `figure` and `table` environments, respectively.

```{r nice-fig, fig.cap='Here is a nice figure!', out.width='80%', fig.asp=.75, fig.align='center'}
par(mar = c(4, 4, .1, .1))
plot(pressure, type = 'b', pch = 19)
```

Reference a figure by its code chunk label with the `fig:` prefix, e.g., see Figure \@ref(fig:nice-fig). Similarly, you can reference tables generated from `knitr::kable()`, e.g., see Table \@ref(tab:nice-tab).

```{r nice-tab, tidy=FALSE}
knitr::kable(
  head(iris, 20), caption = 'Here is a nice table!',
  booktabs = TRUE
)
```

You can write citations, too. For example, we are using the **bookdown** package [@R-bookdown] in this sample book, which was built on top of R Markdown and **knitr** [@xie2015].
