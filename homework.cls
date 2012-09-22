% homework.cls
% LaTeX document class for homework assignments
% Eddie Maldonado
% lmaldona@reed.edu

\ProvidesClass{homework}[2012/09/06 Git current version of homework]
\NeedsTeXFormat{LaTeX2e}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\ProcessOptions \relax

\LoadClass{article}

\RequirePackage[left=1in,right=1in,top=1in,bottom=1in]{geometry}

% Header and footer style.

\RequirePackage{fancyhdr}

\fancypagestyle{firstpage}{%
  \fancyhf{}
  \fancyfoot[CE,CO]{\thepage}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0.7pt}
}

\fancypagestyle{followingpage}{%
  \fancyhf{}
  \fancyhead[LE,LO]{\@student}
  \fancyhead[CE,CO]{\@course}
  \fancyhead[RE,RO]{\@assignment}
  \fancyfoot[CE,CO]{\thepage}
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

\newenvironment{problem}[1]{%
  \vspace{2ex}
  \par\noindent\textbf{Problem #1}
}{%
}

\newcommand{\problemsection}[1]{%
  \vspace{4ex}
  \par\noindent\large\textbf{#1}\normalsize
}

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