\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hrflecture}[2020/04/19 For lecture notes]
\LoadClass[parskip=half-,a4paper, headsepline, chapterprefix=true]{scrreprt}    
\RequirePackage{hrftex}
\def\@lecture{}
\newcommand{\lecture}[3]{%
    \ifblank{#3}{%
        \def\@lecture{Vorlesung #1}%
    }{%
        \def\@lecture{Vorlesung #1: #3}%
    }%
    \subsection*{\@lecture}%
    \marginpar{\small\textsf{\mbox{#2}}}%
}


\automark{chapter}
\renewcommand{\chaptermarkformat}{%
    \chapappifchapterprefix{\ }\thechapter:\enskip}
\ihead{\leftmark}
\chead{}
\makeatletter
\ohead{\@lecture}


% Document settings
\pagenumbering{arabic}
\setlength{\parindent}{0em}
\setlength{\mathindent}{0em}
