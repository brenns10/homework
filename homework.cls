% homework.cls
% LaTeX document class for homework assignments
% Eddie Maldonado
% lmaldona@reed.edu

\ProvidesClass{homework}[2012/09/04 Git current version of homework]
\NeedsTeXFormat{LaTeX2e}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\ProcessOptions \relax

\LoadClass{article}

\RequirePackage[left=1in,right=1in,top=1in,bottom=1in]{geometry}
\RequirePackage{fancyhdr}

\fancypagestyle{firstpage}{%
  \fancyhf{}
  \fancyfoot[CE,CO]{\thepage}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0.7pt}
}

\fancypagestyle{followingpage}{%
  \fancyhf{}
  \fancyhead[RE,RO]{\@duedate}
  \fancyfoot[CE,CO]{\thepage}
  \renewcommand{\headrulewidth}{0.7pt}
  \renewcommand{\footrulewidth}{0.7pt}
}

\pagestyle{followingpage}
\AtBeginDocument{\thispagestyle{firstpage}}

\def\@duedate{\today}
\newcommand{\duedate}[1]{\def\@duedate{#1}}

\global\let\@student\@empty