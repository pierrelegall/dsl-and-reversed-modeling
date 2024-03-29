\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{custom}

\LoadClassWithOptions{article}
\RequirePackage{fullpage}
\RequirePackage{graphicx}

\def\supervisorOne#1{\gdef\@supervisorOne{#1}}
\def\supervisorTwo#1{\gdef\@supervisorTwo{#1}}
\def\team#1{\gdef\@team{#1}}
\def\school#1{\gdef\@school{#1}}
\def\domain#1{\gdef\@domain{#1}}
\def\abstract#1{\gdef\@abstract{#1}}

\newcommand{\HRule}{\rule{\linewidth}{0.5mm}}

\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{lmodern}
\usepackage[french]{babel}

\renewcommand{\maketitle} {
  \begin{titlepage}
    \begin{center}
      \includegraphics[width=0.8\textwidth]{./pictures/template/header}\\[1cm]
      \textsc{\Large Stage de Master Recherche}
      \vspace{1cm}

      \includegraphics[width=0.09\textwidth]{./pictures/template/rennes1}
      \includegraphics[width=0.09\textwidth]{./pictures/template/ens-rennes}
      \includegraphics[width=0.1\textwidth]{./pictures/template/insa-rennes}
      \includegraphics[width=0.08\textwidth]{./pictures/template/supelec}
      \includegraphics[width=0.06\textwidth]{./pictures/template/esir}
      \includegraphics[width=0.07\textwidth]{./pictures/template/enssat}
      \includegraphics[width=0.07\textwidth]{./pictures/template/ubo}
      \includegraphics[width=0.09\textwidth]{./pictures/template/enib}
      \includegraphics[width=0.05\textwidth]{./pictures/template/tel-br}
      \includegraphics[width=0.05\textwidth]{./pictures/template/ensta}
      \includegraphics[width=0.05\textwidth]{./pictures/template/ubs}

      \vspace{1cm}
      \textsc{\Large Rapport de stage}\\[0.5cm]

      % The title
      \HRule \\[0.4cm]
      { \Large \bfseries {\@title} }\\[0.2cm]

      \HRule \\[1cm]
      % The domain of the research
      \begin{centering}
        \textbf{Domaine(s) : \@domain}
      \end{centering} \\[1cm]

      % Author and supervisor(s)
      \begin{minipage}{0.4\textwidth}
        \begin{flushleft} \large
          \emph{\textbf{Auteur}}\\
          \@author
        \end{flushleft}
      \end{minipage}
      \begin{minipage}{0.4\textwidth}
        \begin{flushright} \large
          \emph{\textbf{Encadrants}}\\

          % Name(s) of your supervisor(s)
          \@supervisorOne\\
          \@supervisorTwo\\

          \vspace{0.5cm}

          % Name of your team
          \emph{\textbf{Laboratoire}}\\
          \@team
        \end{flushright}
      \end{minipage}

      \vfill

      % Institution logo
      \begin{flushleft}
        \includegraphics[width=0.09\textwidth]{./pictures/template/\@school}
      \end{flushleft}
    \end{center}
  \end{titlepage}

  \begin{flushleft}
    \textbf{Résumé}
  \end{flushleft}
  \@abstract

  \setcounter{tocdepth}{2}
  \tableofcontents
  \thispagestyle{empty}
  \newpage

  \setcounter{page}{1}
}
