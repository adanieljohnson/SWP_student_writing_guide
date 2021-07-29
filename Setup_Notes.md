# Steps in Writing Guide Setup

## Essential Sources
These are books and web pages that go into greater depth than we can explore in one workshop.

### R Cookbook for Education
https://rstudio4edu.github.io/rstudio4edu-book/intro-bookdown.html
(Better explained than the source book. Use this for step-by-step instructions.)

### Guide to Bookdown


### Guide to R Markdown



https://github.com/adanieljohnson/SWP_writing_guide.git

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

Three editors
  1. Directly in RStudio
  2. Commercial standalone (I like BBEdit)
  3. Free standalone editor

Text Editors
	https://kinsta.com/blog/best-text-editors/

Free
    Atom
    Notepad++ (Windows)
    Visual Studio Code
    Brackets
    Bluefish


Freemium
    TextMate
    Komodo Edit


Commercial
    Sublime Text
    BBEdit (Mac)
    UltraEdit
