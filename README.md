# A LaTeX Class for my Homework Assignments

By Eddie Maldonado

lmaldona (at) reed.edu

My ability to write this style file is due largely to the article
"Minutes in Less Than Hours: Using LaTeX Resources" by Jim Hefferon,
in *The PracTeX Journal* (2005), no. 04. This represents my first
attempt at learning and working with the sorts of low-level features
of LaTeX and TeX that are needed to create document classes, so I
can't guarantee that the code is well-written or works well in all
cases... though if it ends up being useful to anyone else, that's
pretty cool.

This code is distributed under the MIT License. See `COPYING` for
details.

## Usage

In the preamble to your document, you can define several variables
containing information pertaining to your assignment:

     \student{Random Person}
     \course{Math XYZ}
     \assignment{Homework 5}
     \duedate{October 9, 2012}

Then, putting `\maketitle` in at the beginning of your document will
include the appropriate information. This information is also
displayed in the headers of subsequent pages. You can then add
individual problems and solutions:

     \begin{problem}{17}
       Let $x \in \mathbb{R}$ be some\ldots
     \end{problem}

If you want to separate your problems into different sections because,
say, they come from different pages or sections of a textbook, just
use `\problemsection{Chapter 12}` or something similar.

The `example.tex` file contained in this repository is a short
document that provides a more extensive example of how to use this
document class.
