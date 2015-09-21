# A LaTeX Class for Homework Assignments

I use this class for the vast majority of my homework assignments.  Visually, it
looks sharp, but not too gaudy for homework.  A major benefit of this class is
that it allows you to write the homework question before your solution.  Since I
know I'll lose the assignment description well before I lose the actual work I
did, this is a very convenient way to keep all of the information together.

This LaTeX class was originally written by Eddie Maldonado.  His original
version is available here: <https://bitbucket.org/lemald/homework>.

This code is distributed under the MIT License. See `COPYING` for
details.

## Installation

On Arch Linux, install from the AUR package,
[`latex-homework-git`](https://aur.archlinux.org/packages/latex-homework-git).

Anywhere else, there are just three steps:

1. Make a `homework` subdirectory within your LaTeX classes directory.  On Arch
   Linux, that is `/usr/share/texmf-dist/tex/latex/`.
2. Put `homework.cls` in that subdirectory.
3. Run `sudo mktexlsr` to update LaTeX's index of classes.

Arch uses TexLive, so those paths and commands may be specific to that LaTeX
implementation.  I'm not sure.

## Usage

In the preamble to your document, you can define several variables containing
information pertaining to your assignment:

     \student{Random Person}
     \course{Math XYZ}
     \assignment{Homework 5}
     \duedate{October 9, 2012}

Then, putting `\maketitle` in at the beginning of your document will include the
appropriate information. This information is also displayed in the headers of
subsequent pages. You can then add individual problems and solutions:

     \begin{problem}{17}
       Let $x \in \mathbb{R}$ be some\ldots
     \end{problem}

If you want to separate your problems into different sections because, say, they
come from different pages or sections of a textbook, just use
`\problemsection{Chapter 12}` or something similar.

You can put the actual text of the question in a `question` environment within
the `problem` environment, like this:

    \begin{problem}{12}
      \begin{question}
        What is the derivative of $x^2$?
      \end{question}

      $2x$
    \end{problem}
