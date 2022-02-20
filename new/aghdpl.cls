%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% File:     aghdpl.cls           (LaTeX Document class option "aghdpl")
%          
% Author:   Marcin Szpyrka     (mszpyrka@agh.edu.pl)
%           Grzegorz J. Nalepa (gjn@agh.edu.pl)
%           AGH University of Science and Technology, Kraków, POLAND
%
% Last mod:	Jakub Sorocki      (sorocki@agh.edu.pl)
%           AGH University of Science and Technology, Kraków, POLAND 	
%           September 2017		
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\message{*** [aghdpl.cls] --- v0.22 <05.04.2011> r1.0 <16.09.2017>  ***}       

\newif\ifpdflatex\pdflatexfalse
\NeedsTeXFormat{LaTeX2e} % 
\ProvidesClass{aghdpl} 
\DeclareOption{pdflatex}{\pdflatextrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}} 
\ProcessOptions\LoadClass[a4paper,twoside]{report} 

\RequirePackage{times}
\RequirePackage[T1]{fontenc}
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage[usenames]{color}
\RequirePackage{fancyhdr}
\RequirePackage{url}
\RequirePackage{titlesec}
\RequirePackage{tocloft}

\geometry{lmargin=30mm, rmargin=20mm, tmargin=25mm, bmargin=25mm, foot=10mm, head=10mm}
\definecolor{Green}{rgb}{0.1,0.5,0.1}

\def\shorttitlePL#1   {\gdef\@shorttitlePL{#1}}
\def\shorttitleEN#1   {\gdef\@shorttitleEN{#1}}
\def\shortauthor#1    {\gdef\@shortauthor{#1}}
\def\titlePL#1        {\gdef\@titlePL{#1}}
\def\titleEN#1        {\gdef\@titleEN{#1}}
\def\facultyEN#1      {\gdef\@facultyEN{#1}}
\def\facultyPL#1      {\gdef\@facultyPL{#1}}
\def\thesistypePL#1   {\gdef\@thesistypePL{#1}}
\def\thesistypeEN#1   {\gdef\@thesistypeEN{#1}}
\def\supervisorPL#1   {\gdef\@supervisorPL{#1}}
\def\supervisorEN#1   {\gdef\@supervisorEN{#1}}
\def\acknowledgements#1   {\gdef\@acknowledgements{#1}}
\def\departmentPL#1   {\gdef\@departmentPL{#1}}
\def\departmentEN#1   {\gdef\@departmentEN{#1}}
\def\dateMonth#1   {\gdef\@dateMonth{#1}}


% \thesisheaders
% 
\pagestyle{fancy}

%\bibliographystyle{abbrv}
\linespread{1.3}
\renewcommand{\labelitemi}{--}

\newcommand{\titlepages}{%

\newpage

%------------------------------------------------------------------------------
% title page
%------------------------------------------------------------------------------
\titlepage
\setcounter{page}{1}
\hypersetup{pageanchor=false}
\begin{center}

%fontfamily \rmfamily roman (serifed) font, \sffamily sans serif, \ttfamily monospaced
%{\sffamily{\Large{\bfseries{\textsc AGH\\[2mm]
%University of Science and Technology}}}
{\Large{\bfseries{\scshape AGH University of Science and Technology}}
%{\sffamily{\Large{\bfseries{\scshape AGH University of Science and Technology}}}


\vspace*{1mm}\rule{\textwidth}{1mm}\vspace*{1mm}}

{\large\textsc{\@facultyEN}}\\\vspace*{2mm}
{\large\textsc{\@departmentEN}}\vspace*{2cm}
%{\sffamily{\large\textsc{\@facultyEN}}}\\\vspace*{2mm}
%{\sffamily{\large\textsc{\@departmentEN}}}\vspace*{2cm}

\ifpdflatex\includegraphics[scale=0.4]{agh}
\else\includegraphics[scale=0.7]{agh}
\fi
\vspace*{1.5cm}

{\LARGE\scshape \@thesistypeEN}\\\vspace*{0.5cm}

{\huge\scshape \@author}\\\vspace*{2cm}

{\LARGE{\bfseries\scshape \@titleEN}}\\\vspace*{3cm}

\begin{flushright}
\begin{minipage}[!h]{7cm} 
\large{\scshape Supervisor:}\\ \@supervisorEN
\end{minipage}
\end{flushright}

\vfill{\Large Kraków \@date}

\end{center}

\clearpage
\newpage\null\thispagestyle{empty}\newpage

%------------------------------------------------------------------------------
% title page author title
%------------------------------------------------------------------------------
\titlepage 
\setcounter{page}{3}
\begin{center}
\vspace*{7cm}
{\huge{\bfseries\scshape \@titleEN}}
\\\vspace*{0.5cm}

{\LARGE\scshape \@author}\\\vspace*{2cm}
\vspace*{11cm}

\scshape{\large AGH University of Science and Technology}
\end{center}
\clearpage

%------------------------------------------------------------------------------
% copyright
%------------------------------------------------------------------------------
\newgeometry{lmargin=30mm, rmargin=20mm, tmargin=25mm, bmargin=25mm, foot=10mm, head=10mm}
\titlepage
\setcounter{page}{4}

%\vspace*{1cm} \vfill
{\scriptsize
\noindent
Copyright \textcopyright~\@date \space \@author\\
\\
{\scshape AGH University of Science and Technology}\\
{\scshape \@departmentEN}\\

%\noindent Supervisor\\
%\@supervisorEN\\
%\\
\noindent 
Declaration\\
I hereby declare that the work in this Thesis is my own original work, except where indicated in the text.\\

%\begin{minipage}[!H]{\textwidth}
%\noindent
%\input{papers}
%\noindent \input{funding} \\
%\end{minipage}

\noindent \@dateMonth\hspace{0.3em}\@date
}

\clearpage
\restoregeometry

%------------------------------------------------------------------------------
% abstract
%------------------------------------------------------------------------------
\titlepage
\setcounter{page}{5}
\newgeometry{lmargin=30mm, rmargin=20mm, tmargin=20mm, bmargin=25mm, foot=10mm, head=10mm}
\begin{center}
{\Large{\bfseries\scshape \@titleEN}}\\\vspace*{.2cm}
{\large\scshape \@author}\\\vspace*{0.5cm}
{\bfseries\LARGE Abstract} \vspace*{0.2cm} %\vfill
\end{center}

\input{abstract}

\clearpage
\restoregeometry
%\newpage\null\thispagestyle{empty}\newpage	%commented becouse abstract is 2 page long

%------------------------------------------------------------------------------
% streszczenie
%------------------------------------------------------------------------------
\titlepage
\setcounter{page}{7}
\newgeometry{lmargin=30mm, rmargin=20mm, tmargin=20mm, bmargin=20mm, foot=10mm, head=10mm}
\begin{center}
{\Large{\bfseries\scshape \@titlePL}}\\\vspace*{.2cm}
{\large\scshape \@author}\\\vspace*{0.3cm}
{\bfseries\LARGE Streszczenie} \vspace*{0.0cm} %\vfill
\end{center}

\input{streszczenie}

\clearpage
\restoregeometry
%\newpage\null\thispagestyle{empty}\newpage	%commented becouse streszczenie is 2 page long

%------------------------------------------------------------------------------
% acknowledgements
%------------------------------------------------------------------------------
\titlepage
\setcounter{page}{9}
\vspace*{1.7cm} \vfill
%\begin{center}
%{\bfseries\LARGE Acknowledgements} \vspace*{1.9cm} \vfill
%\end{center}

%\input{acknowledgements}

%\vspace*{12cm} \vfill
%\begin{flushright} 
%\begin{minipage}[!h]{15cm}
%\begin{center}
%{\bfseries\LARGE Acknowledgements}\\
%\end{center}
\input{acknowledgements}
\begin{flushright}
%Author~~~~~~~~~~~~
\@author~~~~~~~~~~~
\end{flushright}
%\end{minipage}
%\end{flushright}


\clearpage
\newpage\null\thispagestyle{empty}\newpage
\hypersetup{pageanchor=true}

%------------------------------------------------------------------------------
% list of papers
%------------------------------------------------------------------------------
%\titlepage
%\setcounter{page}{9}
%\newgeometry{lmargin=30mm, rmargin=20mm, tmargin=20mm, bmargin=25mm, foot=10mm, head=10mm}
%\begin{center}
%%{\Large{\bfseries\scshape \@titleEN}}\\\vspace*{.2cm}
%%{\large\scshape \@author}\\\vspace*{0.5cm}
%{\bfseries\LARGE List of papers} \vspace*{0.2cm} %\vfill
%\end{center}
%
%\input{papers}
%
%\clearpage
%\restoregeometry
%\newpage\null\thispagestyle{empty}\newpage

%------------------------------------------------------------------------------
% strona tytułowa
%------------------------------------------------------------------------------
%\titlepage 

%\begin{center}

%{\sffamily{\Large{\bfseries{\textsc Akademia G\'{o}rniczo-Hutnicza\\[2mm]
%im. Stanis\l{}awa Staszica w Krakowie}}}

%\vspace*{1mm}\rule{\textwidth}{1mm}\vspace*{1mm}

%{\large \@facultyPL}}\\\vspace*{2mm}
%{\large\textsc{\@departmentPL}}\vspace*{1cm}

%\ifpdflatex\includegraphics[scale=0.3]{agh}
%\else\includegraphics[scale=0.7]{agh}
%\fi
%\vspace*{1cm}

%{\huge\scshape \@thesistypePL}\\\vspace*{2cm}

%{\LARGE\scshape \@author}\\\vspace*{2cm}

%{\LARGE{\bfseries\scshape \@titlePL}}\\\vspace*{3cm}

%\begin{flushright}
%\begin{minipage}[!h]{6cm} 
%\large{\scshape Opiekun:}\\ \@supervisorPL
%\end{minipage}
%\end{flushright}

%\vfill{\Large Krak\'{o}w \@date}

%\end{center}

%\clearpage

%------------------------------------------------------------------------------
% oświadczenie
%------------------------------------------------------------------------------
% \titlepage \vspace*{15cm} \vfill

%\begin{flushright}
%\begin{minipage}[!h]{12cm}
%\mbox{\large{\scshape \textbf{O\'SWIADCZENIE AUTORA PRACY}}}\\[3mm] 
%{\scshape O\'swiadczam, \'swiadomy odpowiedzialno\'sci karnej za po\'swiadczenie nieprawdy, \.ze niniejsz\k{a} prac\k{e} dyplomow\k{a} wykona\l{}em osobi\'scie i samodzielnie, i nie korzysta\l{}em ze \'zr\'ode\l{} innych ni\.z wymienione w pracy.}\\
%\end{minipage}

%\vspace{2cm}

%\makebox[6cm][s]{\dotfill}\par
%\makebox[6cm][c]{\small PODPIS}

%\end{flushright}

%\clearpage

%------------------------------------------------------------------------------
% podziękowania
%------------------------------------------------------------------------------
%\titlepage

%\vspace*{15cm} \vfill
%\begin{flushright} 
%\begin{minipage}[!h]{8.5cm}
%{\Large \@acknowledgements}
%\end{minipage}
%\end{flushright}

%\clearpage
%------------------------------------------------------------------------------

\setcounter{page}{11}

}

\def\thesisheaders{
\fancyfoot[L]{\small \@shortauthor\quad\textit{\@shorttitleEN}}
}

\DeclareOption{en}{
\def\thesisheaders{
\fancyfoot[L]{\small \@shortauthor\quad\textit{\@shorttitleEN}}
}
}

\ProcessOptions

\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{\thechapter.\ #1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection.\ #1}}
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\footrulewidth}{0.5pt}
\fancyhf{}
%\fancyhead{}

%\fancyhead[L]{\slshape{\small \rightmark}}
%\fancyhead[R]{\bfseries \thepage}

\fancyhead[LO]{\slshape{\small \rightmark}}
\fancyhead[RO]{\bfseries \thepage}
\fancyhead[RE]{\slshape{\small \leftmark}}
\fancyhead[LE]{\bfseries \thepage}

\thesisheaders

\frenchspacing
\sloppy 
\widowpenalty     9999 
\clubpenalty      9999 
\flushbottom

%---------------------------------------------------------------------------
% Ustawienia parametrów dla tytułów rozdziałów, podrozdziałów, itd.
%---------------------------------------------------------------------------

\titleformat{\chapter}[block]
{\bfseries\LARGE}{\filright \LARGE\thechapter. }{0ex}{}
%odstępy: lewy, góra, dół
\titlespacing{\chapter}{0pt}{17mm}{19mm}
\titleformat{\section}[block]
{\bfseries\Large}{\filright \Large\thesection. }{0ex}{}
\titlespacing{\section}{7mm}{8mm plus 0mm minus 1mm}{4mm plus 0mm minus 1mm}
\titleformat{\subsection}[block]
{\bfseries\large}{\filright \large\thesubsection. }{0ex}{}
\titlespacing{\subsection}{7mm}{6mm}{2.5mm}
\titleformat{\subsubsection}[block]
{\bfseries\normalsize}{\filright \normalsize\thesubsubsection. }{0ex}{}
\titlespacing{\subsubsection}{7mm}{3mm}{1.5mm}

%---------------------------------------------------------------------------
% Ustawienia parametrów generowania spisu treści i spisu rysunków
%---------------------------------------------------------------------------

\renewcommand{\cfttoctitlefont}{\bfseries\LARGE}
\renewcommand{\cftbeforetoctitleskip}{20mm}
\renewcommand{\cftaftertoctitleskip}{19mm}

\renewcommand{\cftloftitlefont}{\bfseries\LARGE}
\renewcommand{\cftbeforeloftitleskip}{20mm}
\renewcommand{\cftafterloftitleskip}{19mm}

\renewcommand{\cftlottitlefont}{\bfseries\LARGE}
\renewcommand{\cftbeforelottitleskip}{20mm}
\renewcommand{\cftafterlottitleskip}{19mm}

\renewcommand{\cftchapleader}{\cftdotfill{\cftdot}}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdot}}
\renewcommand{\cftsubsecleader}{\cftdotfill{\cftdot}}

\renewcommand{\cftfigleader}{\cftdotfill{\cftdot}}
\renewcommand{\cfttableader}{\cftdotfill{\cftdot}}

\renewcommand{\cftchapaftersnum}{.}
\renewcommand{\cftsecaftersnum}{.}
\renewcommand{\cftsubsecaftersnum}{.}
\setlength{\cftparskip}{2pt}
\setlength{\cftbeforechapskip}{0mm}
\renewcommand{\cftchappagefont}{\normalsize}

