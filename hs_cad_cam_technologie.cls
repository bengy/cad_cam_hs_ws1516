\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hs_cad_cam_technologie}[2015/10/13 v0.1 Custom class (modified article)]
% Passes class option to underling article class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions

\LoadClass{article}

% Set up the margins
\usepackage[top=25mm, left=25mm, right=25mm, bottom=20mm]{geometry}
% Use Times New Romans (or the closest to it).
\usepackage{mathptmx}

\usepackage{ngerman}
\renewcommand\abstractname{Kurzfassung}
\renewenvironment{abstract}{%
\itshape
\centerline{\abstractname}
\begin{minipage}{0.90\textwidth}
\end{minipage}
}

% Use period intead of colon for caption enumeration.
\usepackage{caption}
\DeclareCaptionFormat{captionFormat}{\fontsize{10}{12}\selectfont#1#2#3}
\captionsetup{format=captionFormat, labelsep=period, belowskip=0pt, aboveskip=12pt}

% Define how the title should look like.
% Add a subtitle command.
\newcommand*{\subtitle}[1]{\gdef\@subtitle{#1}}
\newcommand*{\@subtitle}{}%
\newcommand*{\keywords}[1]{\gdef\@keywords{#1}}
\newcommand*{\@keywords}{}%

\newcommand*{\TitleFont}{%
  \usefont{\encodingdefault}{\rmdefault}{m}{n}%
  \fontsize{14}{16.8}%
  \selectfont}

\newcommand*{\SectionFont}{%
  \usefont{\encodingdefault}{\rmdefault}{m}{n}%
  \fontsize{16}{19.2}%
  \selectfont}

\newcommand*{\BibliographyFont}{%
  \usefont{\encodingdefault}{\rmdefault}{m}{n}%
  \fontsize{12}{14.4}%
  \selectfont}

\makeatletter
\def\maketitle{%
  \begin{center}%
    \par{\TitleFont \@title}%
    \vskip 24pt%
    \par{\TitleFont \@subtitle}%
    \vskip 24pt%
    \par{\@author}%
    \vskip 24pt%
    \par{\itshape\@keywords}%
    \vskip 24pt%
  \end{center}%
\par}
\makeatother

% Change sub-/section title size and spacing
\usepackage{titlesec}
\titleformat*{\section}{\SectionFont}
\titleformat*{\subsection}{\TitleFont}
\titlespacing*{\section}
{0pt}{24pt}{12pt}
\titlespacing*{\subsection}
{0pt}{12pt}{12pt}

% No identation for new paragraphs
\setlength{\parindent}{0pt}
% 12pt spacing before new paragraph
%\usepackage[parfill]{parskip}

% Set the margins for graphics and tables.
\setlength{\textfloatsep}{12pt}
\setlength{\floatsep}{12pt}
\setlength{\intextsep}{12pt}

\usepackage{natbib}
% Bibliography header style
\makeatletter
\renewcommand\bibsection{%
  \section*{{\BibliographyFont{\textbf{\refname}}}}%
}%
\makeatother
% Set line spacing for bib entries.
\setlength{\bibsep}{6pt}

\endinput
