% homework.sty
% LaTeX document class for homework assignments
% Eddie Maldonado
% lmaldona@reed.edu

\ProvidesClass{homework}[Git current version of homework]
\NeedsTeXFormat{LaTeX2e}

\LoadClass{article}

\RequirePackage[left=1in,right=1in,top=1in,bottom=1in]{geometry}
\RequirePackage{fancyhdr}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\fancypagestyle{firstpage}{%
  \fancyhf{}
  \fancyfoot[CE,CO]{\thepage}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0.7pt}
}

\fancypagestyle{followingpage}{%
  \fancyhf{}
  \fancyfoot[CE,CO]{\thepage}
  \renewcommand{\headrulewidth}{0.7pt}
  \renewcommand{\footrulewidth}{0.7pt}
}