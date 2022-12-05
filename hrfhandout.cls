% This Package is based on uhhassignment, which can be found on CTAN.
% License is "The LATEX Project Public License 1.3c"

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hrfhandout}[2022/12/01 v1.0 For presentation handouts]


\newif\ifhrfhandout@numberedtalks
\DeclareOption{unnumberedtalks}{
    \hrfhandout@numberedtalksfalse
}

\DeclareOption{numberedtalks}{
    \hrfhandout@numberedtalkstrue
}

\newif\ifhrfhandout@shorttitle
\DeclareOption{shorttitle}{
    \hrfhandout@shorttitletrue
}

\DeclareOption{longtitle}{
    \hrfhandout@shorttitlefalse
}

\newif\ifhrfhandout@shortheader
\DeclareOption{shortheader}{
    \hrfhandout@shortheadertrue
}

\DeclareOption{longheader}{
    \hrfhandout@shortheaderfalse
}


\hrfhandout@numberedtalksfalse
\hrfhandout@shorttitlefalse
\hrfhandout@shortheaderfalse
\ProcessOptions\relax

\LoadClass{scrartcl}


\PassOptionsToPackage{headsepline}{scrlayer-scrpage} % Header and Footer

% Main Package
\RequirePackage{hrftex}

\RequirePackage{geometry}
\RequirePackage{scrlayer-scrpage}
\RequirePackage{lastpage} % Page Numbers


%%%%%%%%%% Constants %%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%\fi

\newcaptionname{ngerman}{\hrfhandout@talkid}{Vortrag}
\newcaptionname{english}{\hrfhandout@talkid}{Talk \textnumero}
\newcaptionname{ngerman}{\hrfhandout@talknoid}{Vortrag}
\newcaptionname{english}{\hrfhandout@talknoid}{Talk}

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


\newcommand{\talkno}[1]{
    \gdef\@talkno{#1}
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
\author[Henry Fischer]{Henry Ruben Fischer}
\def\@course{
    \ClassWarning{hrfhandout}{No \protect\course\space given}
}
\let\@shortcourse\@course
\def\@teacher{
    \ClassWarning{hrfhandout}{No \protect\teacher\space given}
}
\let\@shortteacher\@teacher
\def\@talkno{
    \ClassWarning{hrfhandout}{No \protect\talkno\space given}
}
\def\@shortauthor{
    \ClassWarning{hrfhandout}{No short \protect\author\space given}
}



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


% \renewcommand{\thesection}{\arabic{section}}
% \renewcommand{\thesubsection}{\alph{subsection}}
% \renewcommand{\thesubsubsection}{\arabic{subsubsection}}

%%%%%%%%% Page Setup %%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%


\KOMAoptions{parskip=half-,twocolumn,headings=normal,titlepage=false}

\geometry{bottom=2.5cm,top=2.5cm,left=1.5cm,right=1.5cm}

\ifhrfhandout@shortheader
    \ifhrfhandout@numberedtalks
        \ihead{\textbf{\@shortcourse}\\\hrfhandout@talkid{} \@talkno}
    \else
        \ihead{\textbf{\@shortcourse}}
    \fi
    \ohead{\textbf{\@shortuniversity}\\\@date}
\else
    \ifhrfhandout@numberedtalks
        \ihead{\textbf{\@course}\\\hrfhandout@talkid{} \@talkno}
    \else
        \ihead{\textbf{\@course}}
    \fi
    \ohead{\textbf{\@university}\\\@date}
\fi

\setkomafont{pagefoot}{\textnormal}
\cfoot{\pagemark{}}



%%%%%%%%%%% Layout %%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RedeclareSectionCommands[
  beforeskip=-.5\baselineskip,
  afterskip=.25\baselineskip
]{section,subsection,subsubsection}
\RedeclareSectionCommands[
  beforeskip=.5\baselineskip,
  afterskip=-1em]{paragraph,subparagraph}

\setkomafont{section}{\Large\bfseries}

\ifhrfhandout@shorttitle
    \let\@propersizeuniversity\@shortuniversity
    \let\@propersizecourse\@shortcourse
\else
    \let\@propersizeuniversity\@university
    \let\@propersizecourse\@course
\fi

\subject{\@course}
\titlehead{
    \@shortcourse{} %
    \ifhrfhandout@numberedtalks%
    \hrfhandout@talkid{} \@talkno{} -- %
    \else%
    \hrfhandout@talknoid
    \fi%
    Handout
    \hfill%
    \@propersizeuniversity\\
    \@author%
    \hfill%
    \@date%
}
\addtokomafont{subject}{}
\addtokomafont{title}{\rmfamily}
\addtokomafont{author}{\large}
\addtokomafont{date}{\large}
\renewcommand*{\@maketitle}{%
  \global\@topnum=\z@
  \setparsizes{\z@}{\z@}{\z@\@plus 1fil}\par@updaterelative
  \ifx\@titlehead\@empty \else
    \begin{minipage}[t]{\textwidth}
      \usekomafont{titlehead}{\@titlehead\par}%
    \end{minipage}\par
  \fi
  \null
  % \vskip 2em%
  \begin{center}%
    \ifx\@subject\@empty \else
      {\usekomafont{subject}{\@subject \par}}%
      % \vskip 1.5em
    \fi
    {\usekomafont{title}{\huge \@title \par}}%
    \vskip .5em
    {\ifx\@subtitle\@empty\else\usekomafont{subtitle}\@subtitle\par\fi}%
    % \vskip 1em
    % {%
    %   \usekomafont{author}{%
    %     \lineskip .5em%
    %     \begin{tabular}[t]{c}
    %       \@author
    %     \end{tabular}\par
    %   }%
    % }%
    % \vskip 1em%
    % {\usekomafont{date}{\@date \par}}%
    % \vskip \z@ \@plus 1em
    {\usekomafont{publishers}{\@publishers \par}}%
    \ifx\@dedication\@empty \else
      \vskip 2em
      {\usekomafont{dedication}{\@dedication \par}}%
    \fi
  \end{center}%
  \par
  \vskip 2em
}

