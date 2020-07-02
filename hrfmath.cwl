# hrfgerman.style
# Henry Ruben Fischer


#include:mathtools

#include:empheq

\leqnomode
\reqnomode

#include:amssymb
#include:amstext

\mathds{digit}#m

#include:ntheorem
\begin{subproof}#N

\DeclareMathOperatorWithDelimiter+{command}[args,<argswithoutcontent:optional>]{operator}{left_delim}{right_delim}{content}
\DeclareMathOperatorWithDelimiter+*{command}[args,<argswithoutcontent:optional>]{operator}{left_delim}{right_delim}{content}
\DeclareMathOperatorWithDelimiter+[size]{command}[args,<argswithoutcontent:optional>]{operator}{left_delim}{right_delim}{content}
\DeclareMathOperatorWithDelimiter-{command}[args,<argswithoutcontent:optional>]{operator}{left_delim}{right_delim}{content}
\DeclareMathPostOperatorWithDelimiter+{command}[args]{post_operator}{left_delim}{right_delim}{content}
\DeclareMathPostOperatorWithDelimiter+*{command}[args]{post_operator}{left_delim}{right_delim}{content}
\DeclareMathPostOperatorWithDelimiter+[size]{command}[args]{post_operator}{left_delim}{right_delim}{content}
\DeclareMathPostOperatorWithDelimiter-{command}[args]{post_operator}{left_delim}{right_delim}{content}

\DeclareFunction+{command}[args,<argswithoutcontent:optional>]{operator}{content}
\DeclareFunction+*{command}[args,<argswithoutcontent:optional>]{operator}{content}
\DeclareFunction+[size]{command}[args,<argswithoutcontent:optional>]{operator}{content}
\DeclareFunction-{command}[args,<argswithoutcontent:optional>]{operator}{content}
\DeclarePostFunction+{command}[args]{post_operator}{content}
\DeclarePostFunction+*{command}[args]{post_operator}{content}
\DeclarePostFunction+[size]{command}[args]{post_operator}{content}
\DeclarePostFunction-{command}[args]{post_operator}{content}

\begin{generalthm}#N
\begin{eigenschaftendescription}#\description
\begin{eigenschaftenenumerate}#\enumerate
\begin{proofdescription}#\description
\begin{proofenumerate}#\enumerate

\NewTheorem{name}{title}

\begin{anwendung}#N
\begin{anwendungen}#N
\begin{aufwaermuebung}#N
\begin{achtung}#N
\begin{beachte}#N
\begin{beispiel}#N
\begin{antibeispiel}#N
\begin{beispiele}#N
\begin{behauptung}#N
\begin{behauptungen}#N
\begin{bembsp}#N
\begin{bembspe}#N
\begin{bemdef}#N
\begin{bemnotation}#N
\begin{bemuebung}#N
\begin{bemerkung}#N
\begin{bemerkungen}#N
\begin{bspdef}#N
\begin{bspidee}#N
\begin{checkenvironment}#N
\begin{defbem}#N
\begin{deflemma}#N
\begin{defsatz}#N
\begin{definition}#N
\begin{definitionen}#N
\begin{einschub}#N
\begin{ergaenzung}#N
\begin{exkurs}#N
\begin{erinnerung}#N
\begin{folgerung}#N
\begin{folgerungbsp}#N
\begin{folgerungenbsp}#N
\begin{folgerungen}#N
\begin{frage}#N
\begin{frageuebung}#N
\begin{fragen}#N
\begin{idee}#N
\begin{interpretation}#N
\begin{intuition}#N
\begin{lemmadef}#N
\begin{lemma}#N
\begin{konvention}#N
\begin{korollar}#N
\begin{notation}#N
\begin{notationen}#N
\begin{merkregel}#N
\begin{motivation}#N
\begin{proposition}#N
\begin{rechentrick}#N
\begin{satz}#N
\begin{satzdef}#N
\begin{spezialfall}#N
\begin{wiederholung}#N
\begin{ziel}#N
\begin{subsatz}#N

#include:stackrel

#include:leftidx

#include:braket

#include:colonequals

#include:tikz
#include:tkz-euclide

#include:cancel

#include:bm

#include:systeme


#include:romannum

#include:nicematrix

#include:siunitx

\contra




#include:cool

#include:derivative

#include:esvect

#include:interval

\SavedStyle
\ThisStyle

\numberthis

\rphantom{relation_symbol}



\vertrelation{relation_symbol}
\vertlt
\vertleq
\vertgt
\vertgeq
\vertne
\vertin
\vertni



\equalto[size]{under}{over}
\underrelate[size]{vertical_relation_symbol}{explanation}{explained}
\overrelate[size]{vertical_relation_symbol}{explanation}{explained}
\newcommand{\equalto}[3][]{\underset{\scriptstyle\overset{\mkern4mu\scalebox{1}[0.7]{\verteq[#1]}}{\mathclap{#2}}}{#3}}
\explain[size]{explanation}{explained}
\braceannotate{explanation}{explained}

\verteq[size]

\needed[relation_symbol]
\isittrue[relation_symbol]

\zuzeigentext{text}
\zuzeigen{text}


\defines\eqqcolon}
\definedas
\definedequivalentto
\maps

#include:csquotes
\hin
\rueck
\hinrueck


\simeqq

\logicspace


\existsone

\anzahl{arg1}
\anzahl+{arg1}
\anzahl+*{arg1}
\anzahl+[size]{arg1}
\anzahl-{arg1}
\anzahl;



\divides
\ndivides

\varv


\widebar{arg1}





\untervektorraum
\uebervektorraum


\longto


\goesto
\goesupto
\goesdownto

\differential
\totalderivative{arg1}
\totalderivative+{arg1}
\totalderivative+*{arg1}
\totalderivative+[size]{arg1}
\totalderivative-{arg1}
\totalderivative;



\real
\imaginary
\conjugate{arg1}






\zeroset
\minuszero
\Minuszero

\powerset{arg1}


\naturals
\reals
\rationals
\complexs
\wholes




\Min{arg1}
\Min+{arg1}
\Min+*{arg1}
\Min+[size]{arg1}
\Min-{arg1}
\Min;


\Max{arg1}
\Max+{arg1}
\Max+*{arg1}
\Max+[size]{arg1}
\Max-{arg1}
\Max;


\Med{arg1}{arg2}{arg3}
\Med+{arg1}{arg2}{arg3}
\Med+*{arg1}{arg2}{arg3}
\Med+[size]{arg1}{arg2}{arg3}
\Med-{arg1}{arg2}{arg3}
\Med;


\Sin{arg1}
\Sin+{arg1}
\Sin+*{arg1}
\Sin+[size]{arg1}
\Sin-{arg1}
\Sin;


\Cos{arg1}
\Cos+{arg1}
\Cos+*{arg1}
\Cos+[size]{arg1}
\Cos-{arg1}
\Cos;


\Tan{arg1}
\Tan+{arg1}
\Tan+*{arg1}
\Tan+[size]{arg1}
\Tan-{arg1}
\Tan;


\Sec{arg1}
\Sec+{arg1}
\Sec+*{arg1}
\Sec+[size]{arg1}
\Sec-{arg1}
\Sec;


\Csc{arg1}
\Csc+{arg1}
\Csc+*{arg1}
\Csc+[size]{arg1}
\Csc-{arg1}
\Csc;


\Cot{arg1}
\Cot+{arg1}
\Cot+*{arg1}
\Cot+[size]{arg1}
\Cot-{arg1}
\Cot;


\ArcSin{arg1}
\ArcSin+{arg1}
\ArcSin+*{arg1}
\ArcSin+[size]{arg1}
\ArcSin-{arg1}
\ArcSin;


\ArcCos{arg1}
\ArcCos+{arg1}
\ArcCos+*{arg1}
\ArcCos+[size]{arg1}
\ArcCos-{arg1}
\ArcCos;


\ArcTan{arg1}
\ArcTan+{arg1}
\ArcTan+*{arg1}
\ArcTan+[size]{arg1}
\ArcTan-{arg1}
\ArcTan;


\ArcSec{arg1}
\ArcSec+{arg1}
\ArcSec+*{arg1}
\ArcSec+[size]{arg1}
\ArcSec-{arg1}
\ArcSec;


\ArcCsc{arg1}
\ArcCsc+{arg1}
\ArcCsc+*{arg1}
\ArcCsc+[size]{arg1}
\ArcCsc-{arg1}
\ArcCsc;


\ArcCot{arg1}
\ArcCot+{arg1}
\ArcCot+*{arg1}
\ArcCot+[size]{arg1}
\ArcCot-{arg1}
\ArcCot;



\stetigefunktionen[arg1]
\pushforward{arg1}
\volume{arg1}
\volume+{arg1}
\volume+*{arg1}
\volume+[size]{arg1}
\volume-{arg1}
\volume;

\characteristicfunction{arg1}{arg2}
\characteristicfunction+{arg1}{arg2}
\characteristicfunction+*{arg1}{arg2}
\characteristicfunction+[size]{arg1}{arg2}
\characteristicfunction-{arg1}{arg2}
\characteristicfunction;{arg1}

\stufenfunktionen[arg1]
\lebesgueintegrablefunctions[arg1]

\legendrepolynomial{arg1}{arg2}
\legendrepolynomial+{arg1}{arg2}
\legendrepolynomial+*{arg1}{arg2}
\legendrepolynomial+[size]{arg1}{arg2}
\legendrepolynomial-{arg1}{arg2}
\legendrepolynomial;{arg1}

\hermitepolynomial{arg1}{arg2}
\hermitepolynomial+{arg1}{arg2}
\hermitepolynomial+*{arg1}{arg2}
\hermitepolynomial+[size]{arg1}{arg2}
\hermitepolynomial-{arg1}{arg2}
\hermitepolynomial;{arg1}

\laguerrepolynomial{arg1}{arg2}
\laguerrepolynomial+{arg1}{arg2}
\laguerrepolynomial+*{arg1}{arg2}
\laguerrepolynomial+[size]{arg1}{arg2}
\laguerrepolynomial-{arg1}{arg2}
\laguerrepolynomial;{arg1}

\besselfirstkind{arg1}{arg2}
\besselfirstkind+{arg1}{arg2}
\besselfirstkind+*{arg1}{arg2}
\besselfirstkind+[size]{arg1}{arg2}
\besselfirstkind-{arg1}{arg2}
\besselfirstkind;{arg1}


\normalenraum{arg1}
\normalenraum+{arg1}
\normalenraum+*{arg1}
\normalenraum+[size]{arg1}
\normalenraum-{arg1}
\normalenraum;

\tangentialraum{arg1}
\tangentialraum+{arg1}
\tangentialraum+*{arg1}
\tangentialraum+[size]{arg1}
\tangentialraum-{arg1}
\tangentialraum;

\cauchyfolgenmenge{arg1}
\cauchyfolgenmenge+{arg1}
\cauchyfolgenmenge+*{arg1}
\cauchyfolgenmenge+[size]{arg1}
\cauchyfolgenmenge-{arg1}
\cauchyfolgenmenge;

\homogenreddglloesungsraum{arg1}
\homogenreddglloesungsraum+{arg1}
\homogenreddglloesungsraum+*{arg1}
\homogenreddglloesungsraum+[size]{arg1}
\homogenreddglloesungsraum-{arg1}
\homogenreddglloesungsraum;

\inhomogenreddglloesungsraum{arg1}{arg2}
\inhomogenreddglloesungsraum+{arg1}{arg2}
\inhomogenreddglloesungsraum+*{arg1}{arg2}
\inhomogenreddglloesungsraum+[size]{arg1}{arg2}
\inhomogenreddglloesungsraum-{arg1}{arg2}
\inhomogenreddglloesungsraum;

\homogendglloesungsraum{arg1}{arg2}
\homogendglloesungsraum+{arg1}{arg2}
\homogendglloesungsraum+*{arg1}{arg2}
\homogendglloesungsraum+[size]{arg1}{arg2}
\homogendglloesungsraum-{arg1}{arg2}
\homogendglloesungsraum;{arg1}

\inhomogendglloesungsraum{arg1}{arg2}{arg3}
\inhomogendglloesungsraum+{arg1}{arg2}{arg3}
\inhomogendglloesungsraum+*{arg1}{arg2}{arg3}
\inhomogendglloesungsraum+[size]{arg1}{arg2}{arg3}
\inhomogendglloesungsraum-{arg1}{arg2}{arg3}
\inhomogendglloesungsraum;{arg1}

\wronskideterminant{arg1}
\wronskideterminant+{arg1}
\wronskideterminant+*{arg1}
\wronskideterminant+[size]{arg1}
\wronskideterminant-{arg1}
\wronskideterminant;

\Ln{arg1}
\Ln+{arg1}
\Ln+*{arg1}
\Ln+[size]{arg1}
\Ln-{arg1}
\Ln;

\moebiusabbildungenmenge{arg1}
\moebiusabbildungenmenge+{arg1}
\moebiusabbildungenmenge+*{arg1}
\moebiusabbildungenmenge+[size]{arg1}
\moebiusabbildungenmenge-{arg1}
\moebiusabbildungenmenge;

\randpunkte{arg1}
\randpunkte+{arg1}
\randpunkte+*{arg1}
\randpunkte+[size]{arg1}
\randpunkte-{arg1}
\randpunkte;

\inneres{arg1}
\inneres+{arg1}
\inneres+*{arg1}
\inneres+[size]{arg1}
\inneres-{arg1}
\abschluss{arg1}
\matrixmult
\laplaceoperator

\kroneckerdelta{indices}

\aglacourse[coursenumber]
\diffcourse[coursenumber]






\ArcCosh{arg1}
\ArcCosh+{arg1}
\ArcCosh+*{arg1}
\ArcCosh+[size]{arg1}
\ArcCosh-{arg1}
\ArcCosh;


\ArcSinh{arg1}
\ArcSinh+{arg1}
\ArcSinh+*{arg1}
\ArcSinh+[size]{arg1}
\ArcSinh-{arg1}
\ArcSinh;


\ArcTanh{arg1}
\ArcTanh+{arg1}
\ArcTanh+*{arg1}
\ArcTanh+[size]{arg1}
\ArcTanh-{arg1}
\ArcTanh;


\ArcSech{arg1}
\ArcSech+{arg1}
\ArcSech+*{arg1}
\ArcSech+[size]{arg1}
\ArcSech-{arg1}
\ArcSech;


\ArcCsch{arg1}
\ArcCsch+{arg1}
\ArcCsch+*{arg1}
\ArcCsch+[size]{arg1}
\ArcCsch-{arg1}
\ArcCsch;


\ArcCoth{arg1}
\ArcCoth+{arg1}
\ArcCoth+*{arg1}
\ArcCoth+[size]{arg1}
\ArcCoth-{arg1}
\ArcCoth;

\sgn{arg1}
\sgn+{arg1}
\sgn+*{arg1}
\sgn+[size]{arg1}
\sgn-{arg1}
\sgn;

\Abb{arg1}
\Abb+{arg1}
\Abb+*{arg1}
\Abb+[size]{arg1}
\Abb-{arg1}
\Abb;

\Ker{arg1}
\Ker+{arg1}
\Ker+*{arg1}
\Ker+[size]{arg1}
\Ker-{arg1}
\Ker;

\Kern{arg1}
\Kern+{arg1}
\Kern+*{arg1}
\Kern+[size]{arg1}
\Kern-{arg1}
\Kern;

\Urbild{arg1}
\Urbild+{arg1}
\Urbild+*{arg1}
\Urbild+[size]{arg1}
\Urbild-{arg1}
\Urbild;

\Bild{arg1}
\Bild+{arg1}
\Bild+*{arg1}
\Bild+[size]{arg1}
\Bild-{arg1}
\Bild;

\Id
\image{arg1}
\image+{arg1}
\image+*{arg1}
\image+[size]{arg1}
\image-{arg1}
\image;

\preimage{arg1}
\preimage+{arg1}
\preimage+*{arg1}
\preimage+[size]{arg1}
\preimage-{arg1}
\preimage;

\grad{arg1}
\grad+{arg1}
\grad+*{arg1}
\grad+[size]{arg1}
\grad-{arg1}
\grad;

\gradient{arg1}
\gradient+{arg1}
\gradient+*{arg1}
\gradient+[size]{arg1}
\gradient-{arg1}
\gradient;


\bijections{arg1}
\bijections+{arg1}
\bijections+*{arg1}
\bijections+[size]{arg1}
\bijections-{arg1}
\bijections;



\automorphisms{arg1}
\automorphisms+{arg1}
\automorphisms+*{arg1}
\automorphisms+[size]{arg1}
\automorphisms-{arg1}
\automorphisms;

\homomorphisms{arg1}
\homomorphisms+{arg1}
\homomorphisms+*{arg1}
\homomorphisms+[size]{arg1}
\homomorphisms-{arg1}
\homomorphisms;

\Mat
\matrices{rows}{columns}{field}
\sqmatrices{dimension}{dimension}{field}

\determinant{arg1}
\determinant+{arg1}
\determinant+*{arg1}
\determinant+[size]{arg1}
\determinant-{arg1}
\determinant;

\invertiblematrices{arg1}{arg2}
\invertiblematrices+{arg1}{arg2}
\invertiblematrices+*{arg1}{arg2}
\invertiblematrices+[size]{arg1}{arg2}
\invertiblematrices-{arg1}{arg2}
\invertiblematrices;{arg1}

\orthogonalmatrices{arg1}
\orthogonalmatrices+{arg1}
\orthogonalmatrices+*{arg1}
\orthogonalmatrices+[size]{arg1}
\orthogonalmatrices-{arg1}
\orthogonalmatrices;

\Adj{arg1}
\Adj+{arg1}
\Adj+*{arg1}
\Adj+[size]{arg1}
\Adj-{arg1}
\Adj;

\specialinvertiblematrices{arg1}
\specialinvertiblematrices+{arg1}
\specialinvertiblematrices+*{arg1}
\specialinvertiblematrices+[size]{arg1}
\specialinvertiblematrices-{arg1}
\specialinvertiblematrices;

\selfadjointendomorphisms{arg1}
\selfadjointendomorphisms+{arg1}
\selfadjointendomorphisms+*{arg1}
\selfadjointendomorphisms+[size]{arg1}
\selfadjointendomorphisms-{arg1}
\selfadjointendomorphisms;

\spaltenrang{arg1}
\spaltenrang+{arg1}
\spaltenrang+*{arg1}
\spaltenrang+[size]{arg1}
\spaltenrang-{arg1}
\spaltenrang;

\zeilenrang{arg1}
\zeilenrang+{arg1}
\zeilenrang+*{arg1}
\zeilenrang+[size]{arg1}
\zeilenrang-{arg1}
\zeilenrang;

\rank{arg1}
\rank+{arg1}
\rank+*{arg1}
\rank+[size]{arg1}
\rank-{arg1}
\rank;

\rang{arg1}
\rang+{arg1}
\rang+*{arg1}
\rang+[size]{arg1}
\rang-{arg1}
\rang;







\Span{arg1}
\Span+{arg1}
\Span+*{arg1}
\Span+[size]{arg1}
\Span-{arg1}
\Span;


\dim{arg1}
\dim+{arg1}
\dim+*{arg1}
\dim+[size]{arg1}
\dim-{arg1}
\dim;

\fielddim{arg1}{arg2}
\fielddim+{arg1}{arg2}
\fielddim+*{arg1}{arg2}
\fielddim+[size]{arg1}{arg2}
\fielddim-{arg1}{arg2}
\fielddim;{arg1}

\affindim{arg1}
\affindim+{arg1}
\affindim+*{arg1}
\affindim+[size]{arg1}
\affindim-{arg1}
\affindim;

\projectivedim{arg1}
\projectivedim+{arg1}
\projectivedim+*{arg1}
\projectivedim+[size]{arg1}
\projectivedim-{arg1}
\projectivedim;


\Spur{arg1}
\Spur+{arg1}
\Spur+*{arg1}
\Spur+[size]{arg1}
\Spur-{arg1}
\Spur;


\teilverhaeltnis{arg1}{arg2}{arg3}
\teilverhaeltnis*{arg1}{arg2}{arg3}
\teilverhaeltnis[size]{arg1}{arg2}{arg3}


\doppelverhaeltnis{arg1}{arg2}{arg3}{arg4}
\doppelverhaeltnis*{arg1}{arg2}{arg3}{arg4}
\doppelverhaeltnis[size]{arg1}{arg2}{arg3}{arg4}

\characteristic{arg1}
\characteristic+{arg1}
\characteristic+*{arg1}
\characteristic+[size]{arg1}
\characteristic-{arg1}
\characteristic;

\fixpunkte{arg1}
\fixpunkte+{arg1}
\fixpunkte+*{arg1}
\fixpunkte+[size]{arg1}
\fixpunkte-{arg1}
\fixpunkte;

\signature{arg1}
\signature+{arg1}
\signature+*{arg1}
\signature+[size]{arg1}
\signature-{arg1}
\signature;


\exponential{arg1}
\exponential+{arg1}
\exponential+*{arg1}
\exponential+[size]{arg1}
\exponential-{arg1}
\exponential;


\polynomials{arg1}{arg2}
\polynomials*{arg1}{arg2}
\polynomials[size]{arg1}{arg2}



\diameter{arg1}
\diameter+{arg1}
\diameter+*{arg1}
\diameter+[size]{arg1}
\diameter-{arg1}
\diameter;

\normdiameter{arg1}{arg2}
\normdiameter+{arg1}{arg2}
\normdiameter+*{arg1}{arg2}
\normdiameter+[size]{arg1}{arg2}
\normdiameter-{arg1}{arg2}
\normdiameter;{arg1}





\ord{arg1}
\ord+{arg1}
\ord+*{arg1}
\ord+[size]{arg1}
\ord-{arg1}
\ord;


\quadraticform{arg1}{arg2}{arg3}
\quadraticform*{arg1}{arg2}{arg3}
\quadraticform[size]{arg1}{arg2}{arg3}


\ggt{arg1}
\ggt+{arg1}
\ggt+*{arg1}
\ggt+[size]{arg1}
\ggt-{arg1}
\ggt;




\evaluateat{content}{evaluation_point}

\evaluatebetween{content}{from}{to}


\inverse{arg1}
\inverse+{arg1}
\inverse+*{arg1}
\inverse+[size]{arg1}
\inverse-{arg1}
\inv{arg1}
\inv+{arg1}
\inv+*{arg1}
\inv+[size]{arg1}
\inv-{arg1}


\abs{arg1}
\abs*{arg1}
\abs[size]{arg1}

\norm{arg1}
\norm*{arg1}
\norm[size]{arg1}

\explicitnorm{arg1}{arg2}
\explicitnorm*{arg1}{arg2}
\explicitnorm[size]{arg1}{arg2}

\euclidiannorm{arg1}
\euclidiannorm*{arg1}
\euclidiannorm[size]{arg1}

\lebesguenorm{arg1}
\lebesguenorm*{arg1}
\lebesguenorm[size]{arg1}

\supnorm{arg1}
\supnorm*{arg1}
\supnorm[size]{arg1}

\operatornorm{arg1}
\operatornorm*{arg1}
\operatornorm[size]{arg1}

\ceil{arg1}
\ceil*{arg1}
\ceil[size]{arg1}

\floor{arg1}
\floor*{arg1}
\floor[size]{arg1}

\DeclarePairedDelimiter{\parens}{(}{)}
\let\p\parens 

\distance{arg1}{arg2}
\distance*{arg1}{arg2}

\lineangle{arg1}{arg2}
\lineangle+{arg1}{arg2}
\lineangle+*{arg1}{arg2}
\lineangle+[size]{arg1}{arg2}
\lineangle-{arg1}{arg2}
\lineangle;

\quotient{arg1}
\quot{arg1}

\newcommand{\logicaland}{\mathbin{\wedge}}
\newcommand{\logicalor}{\mathbin{\vee}}



\factorial{arg1}
\factorial+{arg1}
\factorial+*{arg1}
\factorial+[size]{arg1}
\factorial-{arg1}



\regelfunktionen{arg1}
\regelfunktionen+{arg1}
\regelfunktionen+*{arg1}
\regelfunktionen+[size]{arg1}
\regelfunktionen-{arg1}
\regelfunktionen;

\treppenfunktionen{arg1}
\treppenfunktionen+{arg1}
\treppenfunktionen+*{arg1}
\treppenfunktionen+[size]{arg1}
\treppenfunktionen-{arg1}
\treppenfunktionen;

\parendiff{arg1}{arg2}
\parendiff+{arg1}{arg2}
\parendiff+*{arg1}{arg2}
\parendiff+[size]{arg1}{arg2}
\parendiff-{arg1}{arg2}
\diracmeasure{arg1}{arg2}
\diracmeasure+{arg1}{arg2}
\diracmeasure+*{arg1}{arg2}
\diracmeasure+[size]{arg1}{arg2}
\diracmeasure-{arg1}{arg2}
\diracmeasure;{arg1}




\DeclarePairedDelimiterX{\scalarproduct}[2]{\langle}{\rangle}{#1,#2}
\DeclarePairedDelimiterX{\spatproduct}[3]{\lparen}{\rparen}{#1,#2,#3}
\compactification{arg1}
\fieldwithoutzero{arg1}
\fieldwithoutzero+{arg1}
\fieldwithoutzero+*{arg1}
\fieldwithoutzero+[size]{arg1}
\fieldwithoutzero-{arg1}
\projectioncone{arg1}
\projectioncone+{arg1}
\projectioncone+*{arg1}
\projectioncone+[size]{arg1}
\projectioncone-{arg1}
\projectioncone;

\projectionspace{arg1}
\projectionspace+{arg1}
\projectionspace+*{arg1}
\projectionspace+[size]{arg1}
\projectionspace-{arg1}
\projectionspace;

\projectionspaces{arg1}
\projectionspaces+{arg1}
\projectionspaces+*{arg1}
\projectionspaces+[size]{arg1}
\projectionspaces-{arg1}
\projectionspaces;

\projectionmap{arg1}
\projectionmap+{arg1}
\projectionmap+*{arg1}
\projectionmap+[size]{arg1}
\projectionmap-{arg1}
\projectionmap;

\projectionspaceover{arg1}{arg2}
\projectionspaceover+{arg1}{arg2}
\projectionspaceover+*{arg1}{arg2}
\projectionspaceover+[size]{arg1}{arg2}
\projectionspaceover-{arg1}{arg2}
\projectionspaceover;{arg1}

\orthogonalspace{arg1}
\orthogonalspace+{arg1}
\orthogonalspace+*{arg1}
\orthogonalspace+[size]{arg1}
\orthogonalspace-{arg1}

\dualspace{arg1}
\dualspace+{arg1}
\dualspace+*{arg1}
\dualspace+[size]{arg1}
\dualspace-{arg1}

\bidualspace{arg1}
\bidualspace+{arg1}
\bidualspace+*{arg1}
\bidualspace+[size]{arg1}
\bidualspace-{arg1}

\dualvector{arg1}
\dualvector+{arg1}
\dualvector+*{arg1}
\dualvector+[size]{arg1}
\dualvector-{arg1}

\equivclass{arg1}

\perpspace{arg1}
\perpspace+{arg1}
\perpspace+*{arg1}
\perpspace+[size]{arg1}
\perpspace-{arg1}

\transpose{arg1}
\transpose+{arg1}
\transpose+*{arg1}
\transpose+[size]{arg1}
\transpose-{arg1}


\basechange{orig_base}{function}{dest_base}



\texistsone
\tforall
\texists
\tnexists
\timplies
\tiff
\tto
