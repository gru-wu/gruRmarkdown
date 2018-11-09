\NeedsTeXFormat{LaTeX2e}
\LoadClass[a4paper,twoside,12pt]{article}
\ProvidesClass{_config/gru}[2018/10/30 - GRU Master/Bachelor thesis template]

\RequirePackage{palatino}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{hyperref}
\RequirePackage{setspace}
\RequirePackage{fancyhdr}
\RequirePackage{pdfpages}
\RequirePackage{titlesec}
\usepackage{tocloft}
\usepackage{microtype}

\sloppy% Avoids out of bound content 
\exhyphenpenalty=10000% Suppress hyphenation
\hbadness=10000 % Suppress paragraph breaking warnings 
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}% Adds dots to table

\usepackage[T1]{fontenc}
\usepackage[ansinew]{inputenc} 

%% PACKAGE TO INCLUDE A PDF FILE
\definecolor{wublue}{rgb}{0.0000000, 0.4375000, 0.6171875}
\definecolor{wugrey}{rgb}{0.0000000, 0.1328125, 0.2773438}
\hypersetup{
    colorlinks=true,
    linkcolor=black,
    filecolor=wublue,      
    urlcolor=wublue,
    citecolor=wublue,
    urlcolor=wublue,
    anchorcolor=black
}

\let\maketitle\relax
\usepackage[left=3cm,right=3cm,top=2.5cm,bottom=3cm]{geometry}
\renewcommand{\baselinestretch}{1.35}
\setlength{\parskip}{1.2\baselineskip} % Between paragraphs
\setlength{\parindent}{0cm}
% Sections spacing 
\titlespacing{\section}{0pt}{*0}{*0}
\titlespacing{\subsection}{0pt}{*0}{*0}
\titlespacing{\subsubsection}{0pt}{*0}{*0}
\titlespacing{\subsubsubsection}{0pt}{*0}{*0}
\pagestyle{fancy}
\fancyhf{}

% Begin Requirements
\RequirePackage{ifthen}

\newcommand{\Abstract}[1]{\def\@Abstract{#1}}

\def\@supervisor{\relax}
\newcommand{\supervisor}[1]{\gdef\@supervisor{#1}}

\def\@keywords{\relax}
\newcommand{\keywords}[1]{\gdef\@keywords{#1}}

\def\@submission{\relax}
\newcommand{\submission}[1]{\gdef\@submission{#1}}

\def\@studentid{\relax}
\newcommand{\studentid}[1]{\gdef\@studentid{#1}}

\def\@thesis{\relax}
\newcommand{\thesis}[1]{\gdef\@thesis{#1}}

\def\@subtitle{\relax}
\newcommand{\subtitle}[1]{\gdef\@subtitle{#1}}

\def\@institute{\relax}
\newcommand{\institute}[1]{\gdef\@institute{#1}}

% Custom Document Formatting
\newcommand\decorativeline[1][1pt]{
	\par\noindent%
	\rule[0.5ex]{\linewidth}{#1}\par
}

\usepackage{listings}
\usepackage[figure,table,lstlisting]{totalcount}

\providecommand{\tightlist}{%
  \setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}}
  
% Set the Paper Size and margins
\thispagestyle{fancy}

\def\@rightlogo{\relax}
\newcommand{\logo}[1]{\gdef\@rightlogo{\protect #1}}
\logo{\includegraphics[width=0.4\textwidth]{_config/wu-logo.png}}

\newcommand*{\maketheistitle}{}
\renewcommand*{\maketheistitle}{%
    \thispagestyle{empty}
    
        \ifthenelse{\equal{\@rightlogo}{\relax}}{}
        {
    	\begin{minipage}[t]{1\columnwidth}%
    		\begin{flushright}
    			\@rightlogo
    		\par\end{flushright}%
    	\end{minipage}
    	}
    	
        {\vspace{1cm}}
        
        %% SELECT BACHELOR OR MASTER THESIS
        {\noindent\large \@thesis}
        
        %\vspace{1cm}
        
        %% WRITE THE TITLE OF YOUR WORK
        {\noindent\huge\textbf{\@title}}
        {\par\noindent\LARGE{\@subtitle}}
        
        %% WRITE YOUR NAME, date of birth, Student ID
        \bigskip
        {\vspace{1cm}}
        {\noindent\Large\@author}
        {\par\noindent\small Student ID: \@studentid}
        
        \vspace*{\fill}
        {\noindent\large {\bf Supervisor:} \@supervisor}
        {\par\noindent\large {\bf Institute:} \@institute}
        {\par\noindent\large {\bf Date of Submission:} \@submission}
        {\vspace{2cm}}
        
        \newpage
        \pagestyle{empty}
        \pagenumbering{roman}
        \pagebreak
        \tableofcontents\null\vfill\pagebreak
        \iftotalfigures\listoffigures\null\vfill\pagebreak\fi
        \iftotaltables\listoftables\null\vfill\pagebreak\fi
        \thispagestyle{plain}
        {\centering{\bf Abstract\par}{\@Abstract}}
        {{\par\noindent\bf Keywords:} \@keywords}
        \null\vfill
        \pagebreak
        \pagestyle{plain}
        \pagenumbering{arabic}
}

