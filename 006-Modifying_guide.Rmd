---
output:
  word_document: default
  html_document: default
---
# How to Modify the Resource Guide {-}

We encourage instructors to modify this Resource Guide so it fits their local needs and addresses the problems they see most often with their own students. We have some general suggestions for how to go about doing that. 

## Adapting the Guide to Your Students' Needs {-}

1. Decide what are the __largest, most serious writing skills gaps your students have.__ Look at the writing products of your students systematically, and try to quantify how many students make particular mistakes (not just which mistakes you or your instructional team find the most irritating.) Rank the mistakes so you are confident that you have identified the 5-10 most serious shortcomings in their scientific writing. These are your priority goals that you should focus on first, and what you should keep in mind as you revise this Guide. 

2. Look at the topics listed in the Preface and Table of Contents. If you have resources you are using to teach these elements of scientific writing successfully, move the overlapping units or pages to an archive folder, and use your own resources. Pages in the archive folder will still be available in the future, or you can download new copies from our repository.

3. The Preface is written assuming students are the main audience. That said, if a particular section goes too deeply into our rationale, delete those sections before generated the individual documents or book. 

4. __Part 3__ is a deep dive into scientific articles and lab reports for biology. We show students what goes in each section, point out where our own students struggle with each section, and suggest ways to avoid common pitfalls. We strongly urge instructors to incorporate their own observations and suggestions so that the Resource Guide addresses the specific local needs. Ideally you should incorporate examples from reports that your own students have written.


## Editing the Guide Itself {-}

The Guide is available in these formats on the __[GitHub repository](https://github.com/adanieljohnson/SWP_student_writing_guide)__:

* MS Word format (Full_Guide.docx)
* HTML format (HTML_files.zip + images.zip archives)
* R Markdown (.Rmd files within a GitHub repository)
* GitHub Markdown file (Full_Guide.md + images.zip archive)

Which format will best suit your needs depends on how much of the Guide you need to change, how you plan to share it with students, and whether you need to make it available in multiple formats.


### MS Word Format {-}

Users who do not need to translate their Guide between file types or provide it on multiple platforms can edit the Resource Guide directly in Word. 

1. Go to the __[GitHub repository](https://github.com/adanieljohnson/SWP_student_writing_guide)__ and open the `versions` subfolder.
2. Download the `Full_Guide.docx` file to your local computer.
3. Several chapters contain _Instructors Only_ recommendations for revising the Guide to fit local requirements. This information should be deleted before posting the revised Guide for students.
4. The original and any edited versions of the `.docx` file can be shared with students freely within the terms of the Creative Commons license. 

_Printed copies of the Guide may be given to students but cannot be sold for profit, either directly or indirectly by a third party such as a for-profit campus bookstore._ Selling the Guide at a profit violates the terms of the Creative Commons license. 


### HTML Format {-}

HTML is a good way to share our Guide with students via the campus LMS or file sharing service. Editing raw HTML files can be time-consuming. If you must make changes beyond short minor edits, we recommend modifying the .Rmd files using R Studio then regenerating the HTML instead (see the next section for details).

1. Go to the __[GitHub repository](https://github.com/adanieljohnson/SWP_student_writing_guide)__ and open the `versions` subfolder.
2. Download the `HTML_files.zip` and `images.zip` archives to your local computer.
3. Open the two archives on your local machine.
4. Move the un-zipped `images` folder INSIDE the HTML_files folder.
4. Upload the `HMTL_files folder` (along with the Images sub-folder) to a web site or page that students can access.
5. Test the copy by opening the `Index.html` page. The index uses relative HTML links, which means all links in the Table of Contents should connect to their appropriate pages.  
6. If the index page opens others correctly, check that images are being displayed correctly. 
7. Assuming the previous two steps worked, the web version is ready. Send students a link to the `Index.html` page. From there they can access the other pages using the Table of Contents.


### R Markdown Format {-}

The various versions of the Guide are built from one master set of .Rmd files using the [bookdown](https://bookdown.org/) library in R Studio. Users familiar with R Studio can fork or clone our repository and launch their own localized version of the Guide.

Editing the .Rmd master files is the best way to make changes that will affect the overall structure of the Guide, while maintaining its interactive features. Users can replace or revise the order of chapters, modify the linked Table of Contents, incorporate their own content, or add new content published on GitHub. 

1. Clone or fork the full [SWP Resource Guide](https://github.com/adanieljohnson/SWP_student_writing_guide) from GitHub. 
2. In R Studio, open the individual .Rmd chapter files and:
    + Review the in-text recommendations for localizing the Guide.
    + Revise the text or remove any .Rmd files that do not match local needs and requirements. 
    + Add new .Rmd files as needed to incorporate local resources.
3. To compile the Guide .Rmd files into an interactive e-book:
    + Download and install the `bookdown` library. The installer will notify you of any missing tools or R libraries needed. 
    + Switch the working directory to the folder containing your revised .Rmd files.
    + Open the index.Rmd file and run the __Build__ command. Any errors in the build process will generate a warning in the Build window.
4. Initially the compiled e-book will display in a local browser window. Use this to check formatting and editing changes. 
5. The localized version of the Resource Guide can be:
    + Posted as HTML files plus image folder on the local LMS, or
    + Stored in a new GitHub repository then published to its own web site. 

#### How Guide Files Are Organized {-}

Each chapter is a plain text file with an .Rmd extension. Filenames begin with a 3-digit number, which defines the order of the files when compiled into a book. To change the order of the chapters, just change the order of the numbering. There are other ways to tell R Studio how to arrange pages, but this way is simplest. 

A good practice when renumbering pages is to number sequential by 10s (10, 20, 30, etc.) This leaves room to add new pages without renumbering all existing ones.

Chapter files begin with the chapter title as a level-one header, e.g., `# Chapter Title`. Each chapter is divided into sections using lower-level headers, e.g., `## A Section Within a Chapter`. 


#### Creating Cross-Links Between Pages {-}

When an .Rmd file is converted to HTML for a book the chapter and section headings are formatted and sequentially numbered automatically. Chapter and section headers include a cross-reference tag; the auto-generated tags can be replaced by adding an explicit {#label} after the chapter. For example, the H1 chapter header for the document describing scientific writing in general has this header line:

```
# What Do We Mean By Scientific Writing? {#goals100}
```

Adding an explicit {#label} to the end of all chapter headers is a good practice if you know you’re going to cross-reference a topic repeatedly. We have already attached explicit {#labels}  to the top level header of most pages (only pages in the Preface were excluded.) 

In-book crosslinks are formatted this way:

```
[link text](#goals100)
```

The first part in square brackets is the linked text that will be displayed. The hashed text in parentheses is the label from the page or section that is the target. 

To refer to the NUMBER of a particular chapter or section, use `\@ref(label)`. For example:

```
In chapter \@ref(install-git) we explain how to install Git.
```

renders this way:

```
In Chapter 6 we explain how to install Git.
```

#### Learning More {-}

These two books by the author of the `bookdown` package describe this process in depth:

* [Using Markdown inside R](https://bookdown.org/yihui/rmarkdown/)
* [Authoring Books in R Markdown](https://bookdown.org/yihui/bookdown/)

Those not familiar with GitHub will find step-by-step instructions for setting it up in this book:

* [Happy Git and GitHub for the UseR](https://happygitwithr.com/index.html)


### GitHub Markdown Format {-}

R Studio only converts .Rmd to .html, .docx, and (with effort) .pdf formats. Users needing other formats can use Pandoc terminal commands to convert both `.Rmd` and `.md` formatted files (which can be edited in any plain text editor) to >30 different file types. 

Pandoc can convert .Rmd/.md files into slides, bibliographic formats, Jupyter notebooks, CSV data files, and multiple wiki languages too. [This list](https://pandoc.org/) shows all of the possible file format conversions. Learn about [installing and using Pandoc](https://pandoc.org/installing.html) here.

1. Go to the Pandoc installation page for instructions to download and install to your computer and operating system.
2. Go to the __[GitHub repository](https://github.com/adanieljohnson/SWP_student_writing_guide)__ and open the `versions` subfolder.
3. Download the `Full_Guide.md` file to your local computer. Also download the `images.zip` archive. Unpack both files.
4. The `Full_Guide.md` file contains all of the individual book chapters. Chapters are separated by `<!============!>` markers. All linked images are in the `images` folder.
5. To convert the .md file, make sure the `images` folder is in the same directory as the Full_Guide file. 
6. Use the following Terminal command to convert `from `Full_Guide.md` to a different format. 

```
        pandoc -s /filepath/Full_Guide.md  -o /filepath/Output_Filename.html

```

The example command above reads the .md formatted source (-s) file and outputs (-o) a copy in .html format. To convert to other formats, change the file extension on the output filename to the standard file type extension that Pandoc should create.
