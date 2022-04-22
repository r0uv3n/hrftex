% This Package is based on uhhassignment, which can be found on CTAN.
% License is "The LATEX Project Public License 1.3c"

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hrfassignment}[2021/04/14 v1.0 For working on exercise sheets]


\newif\ifhrfassignment@numberedsheets
\DeclareOption{unnumberedsheets}{
    \hrfassignment@numberedsheetsfalse
}

\DeclareOption{numberedsheets}{
    \hrfassignment@numberedsheetstrue
}

\newif\ifhrfassignment@repeatauthor
\hrfassignment@repeatauthorfalse
\DeclareOption{repeatauthor}{
    \hrfassignment@repeatauthortrue
}

\newif\ifhrfassignment@shorttitle
\DeclareOption{shorttitle}{
    \hrfassignment@shorttitletrue
}

\DeclareOption{longtitle}{
    \hrfassignment@shorttitlefalse
}

\newif\ifhrfassignment@shortheader
\DeclareOption{shortheader}{
    \hrfassignment@shortheadertrue
}

\DeclareOption{longheader}{
    \hrfassignment@shortheaderfalse
}

\ExecuteOptions{longtitle,longheader,numberedsheets,repeatauthor}

\ProcessOptions\relax

\PassOptionsToClass{parskip=half-}{scrartcl}
\LoadClassWithOptions{scrartcl}


\PassOptionsToPackage{a4paper, left=25mm, right=25mm, top=20mm, bottom=50mm,marginparwidth=20mm}{geometry} % Page Margins

\PassOptionsToPackage{headsepline}{scrlayer-scrpage} % Header and Footer

% Main Package
\RequirePackage{hrftex}

\RequirePackage{geometry}
\RequirePackage{scrlayer-scrpage}
\RequirePackage{lastpage} % Page Numbers


%%%%%%%%%% Constants %%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%\fi


\newcaptionname{english}{\taskname}{Problem} % alternatively: "Excercise", "Task" or "Question"
\newcaptionname{ngerman}{\taskname}{Aufgabe}
\newcaptionname{english}{\subtaskname}{Part} % alternatively: "Subtask"
\newcaptionname{ngerman}{\subtaskname}{Teilaufgabe}

\newcaptionname{ngerman}{\hrfassignment@sheetid}{Aufgabenblatt}
\newcaptionname{english}{\hrfassignment@sheetid}{Exercises: Sheet \textnumero}
\newcaptionname{ngerman}{\hrfassignment@groupid}{Übungsgruppe}
\newcaptionname{english}{\hrfassignment@groupid}{Exercise group}

%%%%%%% Custom Commands %%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%\fi

\newcommand{\university}[2][]{
    \ifstrempty{#1}{
        \gdef\@shortuniversity{#2}
    }{
        \gdef\@shortuniversity{#1}
    }
    \gdef\@university{#2}
}

\newcommand{\course}[2][]{
    \ifstrempty{#1}{
        \gdef\@shortcourse{#2}
    }{
        \gdef\@shortcourse{#1}
    }
    \gdef\@course{#2}
}

\newcommand{\teacher}[1]{
    \gdef\@teacher{#1}
}

\newcommand{\group}[1]{
    \gdef\@group{#1}
}

\newcommand{\sheetno}[1]{
    \gdef\@sheetno{#1}
}

\renewcommand{\author}[2][]{
    \ifstrempty{#1}{
        \gdef\@shortauthor{#2}
    }{
        \gdef\@shortauthor{#1}
    }
    \gdef\@author{#2}
}

\university[Uni Göttingen]{Georg-August-Universität Göttingen}
\def\@course{
    \ClassWarning{uhhassignment}{No \protect\course\space given}
}
\let\@shortcourse\@course
\group{}
\def\@teacher{
    \ClassWarning{uhhassignment}{No \protect\teacher\space given}
}
\let\@shortteacher\@teacher
\def\@sheetno{
    \ClassWarning{uhhassignment}{No \protect\sheetno\space given}
}
\def\@shortauthor{
    \ClassWarning{uhhassignment}{No short \protect\author\space given}
}
\title{}



\newcommand{\todomark}{%
    \colorbox{purple}{%
        \textnormal\ttfamily\bfseries\color{white}%
        TODO%
    }%
}

\newcommand{\todo}[1][]{%
    \ifstrempty{#1}{%
        \def\todotext{Todo}%
    }{%
        \def\todotext{Todo: #1}%
    }%
    \todomark%
    {%
        \marginpar{%
            \raggedright\normalfont\sffamily\scriptsize\todotext%
        }%
    }%
}


\renewcommand{\thesection}{\arabic{section}}
\renewcommand{\thesubsection}{\alph{subsection}}
\renewcommand{\thesubsubsection}{\arabic{subsubsection}}
\renewcommand{\sectionformat}{\taskname~\thesection\autodot\enskip}
\renewcommand{\subsectionformat}{\subtaskname~\thesection\thesubsection\autodot\enskip}
\renewcommand{\subsubsectionformat}{\thesection\thesubsection\thesubsubsection\autodot\enskip}


\let\task\section
\let\subtask\subsection
\let\subsubtask\subsubsection


%%%%%%%%% Page Setup %%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%


\setlength{\headheight}{50pt}
\pagestyle{scrheadings}
\clearpairofpagestyles

\ifhrfassignment@shortheader
    \ifhrfassignment@numberedsheets
        \ihead{\textbf{\@shortcourse}\\\hrfassignment@sheetid{} \@sheetno}
    \else
        \ihead{\textbf{\@shortcourse}}
    \fi
    \ohead{\textbf{\@shortuniversity}\\\@date}
\else
    \ifhrfassignment@numberedsheets
        \ihead{\textbf{\@course}\\\hrfassignment@sheetid{} \@sheetno}
    \else
        \ihead{\textbf{\@course}}
    \fi
    \ohead{\textbf{\@university}\\\@date}
\fi

\setkomafont{pagefoot}{\textnormal}
\ifhrfassignment@repeatauthor
    \ifoot[\@shortauthor]{\@shortauthor}
    \ofoot{\IfLanguageName{ngerman}{Seite \pagemark{} von \pageref{LastPage}}{Page \pagemark{} of \pageref{LastPage}}}
\else
    \cfoot{\IfLanguageName{ngerman}{Seite \pagemark{} von \pageref{LastPage}}{Page \pagemark{} of \pageref{LastPage}}}
\fi

\newpagestyle{firstpage}[]{%
    \ihead{}
    \cfoot{\pagemark{}}
}



%%%%%%%%%%% Layout %%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%



\setkomafont{section}{\normalfont\bfseries\LARGE}
\setkomafont{subsection}{\normalfont\bfseries\Large}
\setkomafont{subsubsection}{\normalfont\bfseries\large}

\renewcommand*{\maketitle}{%
    \thispagestyle{plain}%

    \newif\ifextended
    \extendedtrue

    \ifhrfassignment@shorttitle
        \let\university\@shortuniversity
        \let\course\@shortcourse
    \else
        \let\university\@university
        \let\course\@course
    \fi

    \ifdefempty{\@title}{%
        \ifdefempty{\@group}{%
            \def\metaleft{\@teacher}%
            \def\metaright{\@date}%
            \def\titleright{}%
            \extendedfalse
        }{%
            \def\metaleft{\hrfassignment@groupid{} \@group}%
            \def\metaright{\@teacher}%
            \def\titleright{\@date}%
        }%
        \def\titleleft{}%
        \ifhrfassignment@numberedsheets
            \def\title{\hrfassignment@sheetid{} \@sheetno}%
        \else
            % Title remains user-specified
        \fi
    }{%
        \ifdefempty{\@group}{%
            \def\metaleft{}%
            \def\metaright{\@teacher}%
        }{%
            \def\metaleft{\hrfassignment@groupid{} \@group}%
            \def\metaright{\@teacher}%
        }%
        \ifhrfassignment@numberedsheets
            \def\titleleft{\hrfassignment@sheetid{} \@sheetno}%
        \else
            \def\titleleft{}
        \fi
        \def\titleright{\@date}%
        \def\title{\@title}%
    }%


    \begingroup% Heading Group
        \usekomafont{pageheadfoot}%
        \usekomafont{pagehead}%
        \setlength{\parskip}{0pt}%

        \textbf{\course} \hfill \textbf{\university}\par%

        \begin{minipage}[t]{\widthof{\metaleft}}%
            \metaleft%
        \end{minipage}%
        \hfill%
        \begin{minipage}[t]{\widthof{\metaright}}%
            \raggedleft%
            \metaright%
        \end{minipage}%
    \endgroup%

    \ifextended%
        \vspace{\baselineskip}%
    \fi%

    \begingroup% Secondary Title Groupt
        \Large\bfseries\titleleft\hfill\titleright%
    \endgroup%

    \begingroup% Title Group
        \begin{center}%
            \Huge\textsc{\title}%
        \end{center}%
    \endgroup%

    \begingroup% Author Group
        \setlength{\baselineskip}{2.75\baselineskip}%
        \vspace{-\baselineskip}%
        \begin{center}%
            \begin{tabular}[t]{c}%
                \@author%
            \end{tabular}%
        \end{center}%
    \endgroup%
}

\KOMAoption{parskip}{half-}
