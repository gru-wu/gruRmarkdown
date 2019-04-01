\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{_config/fineprintbrief}[2018/10/18 - FINEPRINT Brief Class]
\LoadClass[a4paper,13pt,twoside]{article}
\usepackage[utf8]{inputenc}

\renewcommand{\thesection}{}
\renewcommand{\thesection}{\hspace*{-1.0em}}
\renewcommand{\thesubsection}{}
\renewcommand{\thesubsection}{\hspace*{-1.0em}}
\renewcommand{\thesubsubsection}{}
\renewcommand{\thesubsubsection}{\hspace*{-1.0em}}

\RequirePackage{titlesec}
\RequirePackage{ifthen}
\RequirePackage{palatino}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{hyperref}
\RequirePackage{fancyhdr}
\RequirePackage{microtype}
\RequirePackage{flushend}

% Font open sans
\RequirePackage[default,osfigures]{opensans}
\renewcommand{\baselinestretch}{1.2} % Line spacing
\setlength{\parindent}{0pt}          % Paragraphs indentation
\setlength{\parskip}{\baselineskip}  % Between paragraphs spacing

% Sections spacing
\titlespacing{\section}{0pt}{*0}{*0}
\titlespacing{\subsection}{0pt}{*0}{*0}
\titlespacing{\subsubsection}{0pt}{*0}{*0}

\pagestyle{fancy}
\fancyhf{}
\rhead{\includegraphics[width=\textwidth]{_config/head-fineprint-brief.png}}
\fancyfoot[LE,RO]{--\thepage--} % Page number to the Left in Odd and to the Right in Even
\fancyfoot[RE,LO]{\href{www.fineprint.global}{www.fineprint.global}} % Page number to the Left in Odd and to the Right in Even
\fancyfootoffset[L]{12pt}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0.5pt}

\definecolor{wublue}{rgb}{0.0000000, 0.4375000, 0.6171875}
\definecolor{wugrey}{rgb}{0.0000000, 0.1328125, 0.2773438}
\hypersetup{
    colorlinks=true,
    linkcolor=wublue,
    filecolor=wublue,
    urlcolor=wublue,
    citecolor=wublue,
    urlcolor=wublue,
    anchorcolor=black
}

\renewcommand\UrlFont{\color{wublue}\sffamily}

% Add FINEPRINT logo
\def\@leftlogo{\relax}
\newcommand{\logo}[1]{\gdef\@leftlogo{\protect #1}}
\logo{\includegraphics[width=\textwidth]{_config/logo-fineprint-brief}}

% Set the Paper Size and margins
%\setlength{\parskip}{0.3cm}
\RequirePackage{geometry}
\geometry{
  margin=1in,
  footskip=0.5in,
%  top=2cm,
  bottom=1.5in
%  left=1in,
%  right=2cm,
%  headheight=17pt, % as per the warning by fancyhdr
%  includehead,
%  includefoot=1in
%  heightrounded % to avoid spurious underfull messages
}

\newcommand*{\subtitle}[1]{\def\@subtitle{#1}}
\newcommand*{\keywords}[1]{\def\@keywords{#1}}
\newcommand*{\afiliation}[1]{\def\@afiliation{#1}}
\newcommand{\Abstract}[1]{\def\@Abstract{#1}}
%\newcommand{\citation}[1]{\def\@citation{#1}}

\renewcommand{\maketitle}{\makebrieftitle}
\newcommand\makebrieftitle{%

	\begin{minipage}[t]{\textwidth}%
        \begin{flushleft}
			\vspace{-0.7in}
			\@leftlogo
			\vspace{0.5in}
		    \par
		\end{flushleft}%
	\end{minipage}

	\hspace{0.2\textwidth}\begin{minipage}{0.8\textwidth}%

	    {\LARGE \bf \ifthenelse{\isundefined{\@title}}{}{\@title}}
	    {\Large \ifthenelse{\isundefined{\@subtitle}}{}{\vskip .8em\par\@subtitle}}%
	    \par%
          \vskip 2em%
           {\small%
             \lineskip .5em%
             {\large\bf Authors: }{\ifthenelse{\isundefined{\@author}}{}{\large\@author}}%
             \\\vskip 0.5em{\ifthenelse{\isundefined{\@afiliation}}{}{\@afiliation\par}}%
             \vskip1em%
             \ifthenelse{\isundefined{\@date}}{}{\@date}%
           \par}%

	\end{minipage}

    \begin{minipage}{0.8\textwidth}%
      \par%
      \vskip2em%
	  {\bf\large \@Abstract}%
    \end{minipage}

    \par%
    \vskip2em%

}

