%---- Identification ----%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}[2021/08/17 St Andrews Thesis]

%---- Load class ----%
\LoadClass[12pt,twoside]{report}

%--- Required packages ----%
\usepackage[colorinlistoftodos]{todonotes}
\usepackage[utf8]{inputenc}
\usepackage{graphicx, booktabs, caption, subcaption, fancyhdr, float}
\usepackage[hidelinks]{hyperref}
\usepackage[a4paper,width=150mm,top=25mm,bottom=25mm,bindingoffset=6mm]{geometry}
\usepackage{titlesec}
\usepackage[backend=biber,citestyle=numeric, sorting=nty]{biblatex}

%---- Others ----%
\def\degree#1{\gdef\@degree{#1}}
\def\wordcount#1{\gdef\@wordcount{#1}}
\def\supervisor#1{\gdef\@supervisor{#1}}

\newcommand*{\inserttitle}{\@title}
\newcommand*{\insertdate}{\@date}
\newcommand*{\insertauthor}{\@author}
\newcommand*{\insertwordcount}{\@wordcount}
\newcommand*{\insertdegree}{\@degree}
\newcommand*{\insertsupervisor}{\@supervisor}


\newcommand*{\fullref}[1]{\hyperref[{#1}]{\autoref*{#1}}}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}

\setlength{\parskip}{1em}

\titleformat{\chapter}[display]
  {\normalfont\bfseries}{}{0pt}{\Huge}


\pagestyle{fancy}
\fancyhead{}
\fancyfoot{}
\fancyfoot[LE,RO]{\thepage}
\fancyfoot[LO,CE]{Chapter \thechapter}