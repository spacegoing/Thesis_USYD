\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{usydthesis}
\LoadClass[twoside,onecolumn,12pt,a4paper]{book}
\usepackage[onehalfspacing]{setspace}

% thesis title page
% date on title page of thesis
\def\Today{\number\day\space\ifcase\month\or January\or February\or March\or
  April\or May\or June\or July\or August\or September\or
  October\or November\or December\fi\space\number\year}
\def\@supervisor#1{Supervisor: #1}
\def\@assocsupervisora#1{Associate Supervisor: #1}
\def\@assocsupervisorb#1{Associate Supervisor: #1}
\renewcommand{\maketitle}{%
  \cleardoublepage\thispagestyle{empty}%
  \begingroup \topskip\z@skip
    \null\vfil
    \begingroup
    \LARGE\bfseries \centering
    \openup\medskipamount
    \@title\par\vspace{20pt}%
    \centering\mdseries{\sc \thisauthor}\par\bigskip
%    \centering\@sid{\sid}\par\bigskip
    \centering{\large \mydegrees}\par\bigskip
    \endgroup
    \vfil
    \begin{center}
    \includegraphics[width=70mm]{StyFiles/usyd-logo.jpg}\\ % ADDS UNIVERSITY CREST
      \vfil
      \centering\@supervisor{\supervisor}
      \@ifundefined{assocsupervisora}{} {
       \\ \centering\@assocsupervisora{\assocsupervisora}
        }
      \@ifundefined{assocsupervisorb}{} {
       \\ \centering\@assocsupervisorb{\assocsupervisorb}
        }
      \vfil
      \par\bigskip
      A thesis submitted in fulfilment of\\
      the requirements for the degree of\\
      \degree
      \par\bigskip
    \vfil\vfil
      {\large\department\\
      The University of Sydney\\
      Australia}\\
      \vskip6mm
    \vfil
      \normalsize\Today
    \end{center}
    \vfil
  \endgroup
  %\cleardoublepage
  \newpage
}