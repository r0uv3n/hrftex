\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hrflecture}[2020/04/19 For lecture notes]

% actual documentclass
\LoadClass[parskip=half-,a4paper, headsepline, chapterprefix=true]{scrreprt}    

% class options
\DeclareOption*{\PassOptionsToPackage{\CurrentOption}{hrftex}}
\ProcessOptions\relax

% main package
\RequirePackage{hrftex}

% for \lecture macro, writes to margin
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

% header, chapter inner, lecture outer 
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

% We don't need _that_ many warnings
\hfuzz=10pt
