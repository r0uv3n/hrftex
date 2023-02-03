\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hrfankicards}[2021/04/13 For mathematics anki cards]

% actual documentclass
\LoadClass[parskip=half-,a4paper, headsepline, chapterprefix=true]{scrreprt}

\RequirePackage[utf8]{luainputenc}

\RequirePackage[ngerman]{babel} % sets \frenchspacing, yay! 
\RequirePackage{amssymb,amsmath}
\RequirePackage{amsmath}
\RequirePackage{cancel}
\RequirePackage{amscd}

\newenvironment{note}{\section{Karte}}{}
\newcounter{ankicardfieldcounter}
\newenvironment{plain}{\bigskip\noindent\refstepcounter{ankicardfieldcounter}\textsc{\ifcase\theankicardfieldcounter\or ID \or Reference \or Text \or Extra \else Zu viele Felder? \fi}\newline}{\par\bigskip}
\newcommand*{\tags}[1]{\paragraph{tags: }#1}



% needs to be copied to card template if changed, cannot contain string "{{", so search "\{\{(?!c\d+::)" and replace with "\{ \{"
\DeclareMathOperator{\Span}{span}
\DeclareMathOperator{\rot}{rot}
\DeclareMathOperator{\characteristic}{char}
\DeclareMathOperator{\Div}{div}
\DeclareMathOperator{\supp}{supp}
\DeclareMathOperator{\id}{id}
\DeclareMathOperator{\im}{im}
\DeclareMathOperator{\vol}{vol}
\DeclareMathOperator{\ord}{vol}
\DeclareMathOperator{\sign}{sign}

\let\oldexists\exists
\let\exists\relax
\let\oldforall\forall
\let\forall\relax

\DeclareMathOperator{\exists}{\oldexists}
\DeclareMathOperator{\existsone}{\oldexists!}
\DeclareMathOperator{\forall}{\oldforall}


\newcommand{\iprod}{\mathbin{\lrcorner} }

\newcommand{\hdr}{\mathrm{H}-{\mathrm{dR} } }
\newcommand{\reals}{\mathbb{R} }
\newcommand{\integers}{\mathbb{Z} }
\newcommand{\naturals}{\mathbb{N} }
\newcommand{\rationals}{\mathbb{Q} }
\newcommand{\complexes}{\mathbb{C} }
\newcommand{\maps}{\colon}
\newcommand{\matrixmult}{.}
\newcommand{\zeroset}{\{0\}}


\newcommand{\abs}[1]{\lvert#1\rvert}
\newcommand{\norm}[1]{\lVert#1\rVert}
\newcommand{\scalarproduct}[2]{\langle#1,2\rangle}
\newcommand{\untergruppe}{\leq}
\let\subgroup\untergruppe
\newcommand{\echteuntergruppe}{<}
\let\propersupgroup\echteuntergruppe
\newcommand{\normalteiler}{\trianglelefteq}
\let\normalsubgroup\normalteiler
\newcommand{\echternormalteiler}{\triangleleft}
\let\propernormalsubgroup\echternormalteier
\newcommand{\logicspace}{\hspace{0.5em} }
\newcommand{\divides}{\mid}
\newcommand{\ndivides}{\nmid}

\newcommand{\inverse}[1]{ {#1}^{-1} }

\let\pNiceMatrix\pmatrix
\let\endpNiceMatrix\endpmatrix


% Document settings
\AtBeginDocument{\pagenumbering{arabic}}
\KOMAoption{parskip}{half-}