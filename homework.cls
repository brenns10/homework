% homework.cls
% LaTeX document class for homework assignments
% Eddie Maldonado, modified by Stephen Brennan
% lmaldona@reed.edu

\ProvidesClass{homework}[2015/01/03 Git current version of homework]
\NeedsTeXFormat{LaTeX2e}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\ProcessOptions \relax

\LoadClass{article}

% Page geometry

\RequirePackage[left=1in,right=1in,top=1in,bottom=1in]{geometry}

% Keep page breaks from happening where we don't want them

\RequirePackage{needspace}

% Header and footer style.

\RequirePackage{fancyhdr}

% Framing within question environment.

\RequirePackage{tikz}
\RequirePackage[framemethod=tikz]{mdframed}

\fancypagestyle{firstpage}{%
  \fancyhf{}
  \fancyfoot[C]{\thepage}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0.7pt}
}

\fancypagestyle{followingpage}{%
  \fancyhf{}
  \fancyhead[L]{\@student}
  \fancyhead[C]{\@course}
  \fancyhead[R]{\@assignment}
  \fancyfoot[C]{\thepage}
  \renewcommand{\headrulewidth}{0.7pt}
  \renewcommand{\footrulewidth}{0.7pt}
}

\pagestyle{followingpage}
\AtBeginDocument{\thispagestyle{firstpage}}

% No footnote rule, since it looks bad together with the footer rule.

\renewcommand{\footnoterule}{\relax}

% Variables storing relevant information on the document.

\global\let\@student\@empty
\newcommand{\student}[1]{\def\@student{#1}}

\global\let\@course\@empty
\newcommand{\course}[1]{\def\@course{#1}}

\global\let\@assignment\@empty
\newcommand{\assignment}[1]{\def\@assignment{#1}}

\global\let\@duedate\@empty
\newcommand{\duedate}[1]{\def\@duedate{#1}}

% Problem environment
% TODO: Consider somehow using needspace to keep the problem
% statement, if there is one, on the same page as the problem number
% and the beginning of the answer.

\newenvironment{problem}[1]{%
  \vspace{2ex}
  \Needspace*{3\baselineskip}
  \par\noindent\textbf{Problem #1}
}{%
}

% Statement command; formats its argument nicely inside of a box as a
% means of typesetting the statement of a problem, if needed.

\newcommand{\statement}[1]{%
  \vspace{0.5ex}
  \dimen@ \textwidth
  \begin{center}
    \fbox{\parbox{0.9\dimen@}{#1}}
  \end{center}
  \vspace{0.5ex}
}

% Question environment; formats its contents nicely inside of a box as a means
% of typesetting the statement of a problem, if needed.

\newmdenv[linewidth=0.7pt]{question}

% For delimiting different sections or groups of problems, i.e. from
% different chapters of a book.

\newcommand{\problemsection}[1]{%
  \vspace{4ex}
  \Needspace*{3\baselineskip}
  \par\noindent\large\textbf{#1}\normalsize
}

% Format the title with the relevant information.

\renewcommand\maketitle{%
  \large
  \begin{center}
    \@student \\
    \@course\ \hspace{0.3in} \@assignment \\
    \ifx\@duedate\@empty
      \relax
    \else
      Due: \@duedate \\
    \fi
  \end{center}
  \normalsize
}