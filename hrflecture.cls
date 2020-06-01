\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hrflecture}[2020/04/19 For lecture notes]

% actual documentclass
\LoadClass[parskip=half-,a4paper, headsepline, chapterprefix=true]{scrreprt}    

% class options
\newif\iffilemanagement\filemanagementfalse
\DeclareOption{filemanagement}{\filemanagementtrue}
\DeclareOption*{\PassOptionsToPackage{\CurrentOption}{hrftex}}
\ProcessOptions\relax

% needed for hrftex if to be numbered within lecture
\newcounter{lecture}
% main package
\RequirePackage{hrftex}

% for \lecture macro, writes to margin
\DeclareNewTOC[owner=hrflecture,listname=Vorlesungsverzeichnis,type=lecture,types=lectures, name=Vorlesung]{listoflectures}
\def\@lecture{}
\newcommand{\lecture}[3][]{%
    \stepcounter{lecture} % be sure to reset all dependent counters
    
    \ifblank{#3}{%
        \ifstrempty{#1}{\addxcontentsline{listoflectures}{section}{#2}}{\addxcontentsline{listoflectures}{section}[#1]{#2}}%
        \def\@lecture{Vorlesung \arabic{lecture}}%
    }{%
        \ifstrempty{#1}{\addxcontentsline{listoflectures}{section}{#3}}{\addxcontentsline{listoflectures}{section}[#1]{#3}}%
        \def\@lecture{Vorlesung \arabic{lecture}: #3}%
    }%
    \subsection*{\@lecture}%
    \marginpar{\hfuzz=10pt\small\textsf{\mbox{#2}}}%
}

\iffilemanagement
    \DeclareNewTOC[owner=hrflecture,listname=Dateienverzeichnis,type=file,types=files, name=Datei]{listoffiles}
    \def\@file{}
    \newcommand{\file}[2][]{
        \ifstrempty{#1}{\addxcontentsline{listoffiles}{section}{#2}}{\addxcontentsline{listoffiles}{section}[#1]{#2}}%
        \def\@file{Datei \arabic{lecture}: #2}%
        \marginpar{\@file}%
    }
\else\fi

% header, chapter inner, lecture outer 
\automark{chapter}
\renewcommand{\chaptermarkformat}{%
    \chapappifchapterprefix{\ }\thechapter:\enskip}
\ihead{\leftmark}
\iffilemanagement
    \chead{\@lecture}
    \ohead{\@file}
\else
    \chead{}
    \ohead{\@lecture}
\fi



% Document settings
\AtBeginDocument{\pagenumbering{arabic}}
\setlength{\parindent}{0em}

% We don't need _that_ many warnings
\hfuzz=10pt
