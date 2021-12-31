# DRAFT How to Modify the Resource Guide {-}

Other instructors should modify this Resource Guide to fit their local needs, and address the problems they see most often with their own students. We have some general recommendations for how to go about doing that. 

## Adapting the Guide to Your Students' Needs {-}

1. Focus on the __largest, most serious writing skills gaps your students have first.__ Look at the writing products of your students systematically, and try to quantify how many students make particular mistakes (not just which mistakes you or your instructional team find the most irritating.) Rank the mistakes so you are confident that you have identified the 5-10 most serious shortcomings in their scientific writing. These are your priority goals that you should focus on first, and what you should keep in mind as you revise this Guide. 

2. Look at the topics listed in the Preface and Table of Contents. If you have resources you are using to teach these elements of scientific writing successfully, move the overlapping units or pages to an archive folder, and use your own resources. Pages in the archive folder will still be available in the future, or you can download new copies from our repository.

2. The Preface is written assuming students are the main audience. That said, if a particular section goes too deeply into our rationale, delete those sections before generated the individual documents or book. 

3. __Part 3__ is the main deep dive into scientific articles and lab reports for biology. We show students what goes in each section, point out where our own students struggle with each section, and suggest ways to avoid common pitfalls. We strongly urge instructors to incorporate their own observations and suggestions so that the Resource Guide addresses the specific local needs. Ideally you should incorporate examples from reports that your own students have written.


## Editing the Guide Itself {-}

Each chapter is a plain text file with an .Rmd file. This is the standard format for R Markdown files. If you change the extension of the file name from .Rmd to .md, the file will switch to a plain Markdown file, and vice versa. Both file types are plain text files. The extensions simply indicate which programs to use to open and edit the files. In practice, you can write new chapters entirely as plain text files using any text editor. When you are ready to use them, simply change the extension on the filename.

Each .Rmd file begins with a 3-digit number, which defines the order of the files when compiled into a book. To change the order of the chapters, just change the order of the numbering. There are other ways to tell R Studio how to arrange pages, but this way is obvious and fairly painless. 

A good practice when renumbering pages is to number sequential by 10s (10, 20, 30, etc.) This leaves room to add new pages without renumbering all existing ones.

Chapter files begin with the chapter title as a level-one header, e.g., `# Chapter Title`. Each chapter is divided into sections using lower-level headers, e.g., `## A Section Within a Chapter`. 


### Creating Cross-Links Between Pages {-}

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


## For More Information {-}

[Handouts from our first workshop on how to modify the Guide](https://github.com/adanieljohnson/ABLE_2022_Workshop)
[Presentation of the complete writing instructional model]()

