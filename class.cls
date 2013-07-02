\ProvidesClass{shared-resources/class}[2013/04/08 v 0.1 class]

\LoadClassWithOptions{scrreprt}

% Setze Papiergröße auf A4
\usepackage[a4paper]{geometry}

% Neue deutsche Rechnschreibung
\usepackage[ngerman]{babel} 

% Nutze Fontbase tghereos
\usepackage{tgheros} 

% Provide features for AAT and OpenType fonts
\usepackage{fontspec}

% Paket für erweiterte sections—namely titles, headers und contents.
\usepackage{titlesec}

% Wie der Name sagt, Fancy Headers
\usepackage{fancyhdr}

% Ermöglicht das importieren von EPS Bilder
\usepackage{epstopdf} 

% Ermöglicht das Definieren der Zeilenabstände
\usepackage{setspace}

% Formatierung für Links aller Art
\usepackage{hyperref}

% Automatische Labels für die Section erzeugen, um Text auf diese referenzieren zu können 
\usepackage{letltxmacro}

% Ermöglicht das Überschreiben von sog. "Kernel-Commands" von Latex
\usepackage{etoolbox}

% Paket für bessere Randnotizen 
%\usepackage[fulladjust]{marginnote} 
\usepackage{marginnote} 

% Paket um mehrere Seiten PDF zu importieren 
\usepackage{pdfpages}

% für lange Tabellen
\usepackage{longtable}
\usepackage{multirow,array,booktabs}
\usepackage{ragged2e}
\usepackage{lscape}
\usepackage{rotating}
\usepackage{tabularx}

% einfache listen 
\usepackage[sharp]{easylist}

% Formatierungen 
\usepackage{soul}

% compactitem listen, sehen schöner aus als itemize
\usepackage{paralist}

% Bilder können somit in den Text "inline" eingebettet werden
\usepackage{float}

% Automatische Labels für Überschriften ---------------------------------
% Begin
\LetLtxMacro{\origchapter}{\chapter}
\renewcommand{\chapter}[2][]{
  \ifstrempty{#1}{\origchapter{#2}}{\origchapter[#1]{#2}}  % only use optional arg if it is set 
  \label{chapter:#2}
  \ifstrempty{#1}{}{\label{chapter_short:#1}} % only set label for shortRef 
}

\LetLtxMacro{\origsection}{\section}
\renewcommand{\section}[2][]{
  \ifstrempty{#1}{\origsection{#2}}{\origsection[#1]{#2}}  % only use optional arg if it is set 
  \label{section:#2}
  \ifstrempty{#1}{}{\label{section_short:#1}} % only set label for shortRef 
}
%
\LetLtxMacro{\origsubsection}{\subsection}
\renewcommand{\subsection}[2][]{
  \ifstrempty{#1}{\origsubsection{#2}}{\origsubsection[#1]{#2}}  % only use optional arg if it is set 
  \label{subsection:#2}
  \ifstrempty{#1}{}{\label{subsection_short:#1}} % only set label for shortRef 
}
%
\LetLtxMacro{\origsubsubsection}{\subsubsection}
\renewcommand{\subsubsection}[2][]{
  \ifstrempty{#1}{\origsubsubsection{#2}}{\origsubsubsection[#1]{#2}}  % only use optional arg if it is set 
  \label{subsubsection:#2}
  \ifstrempty{#1}{}{\label{subsubsection_short:#1}} % only set label for shortRef 
}
%
\LetLtxMacro{\origparagraph}{\paragraph}
\renewcommand{\paragraph}[2][]{
  \ifstrempty{#1}{\origparagraph{#2}}{\origparagraph[#1]{#2}}  % only use optional arg if it is set 
  \label{paragraph:#2}
  \ifstrempty{#1}{}{\label{paragraph_short:#1}} % only set label for shortRef 
}
%
\LetLtxMacro{\origsubparagraph}{\subparagraph}
\renewcommand{\subparagraph}[2][]{
  \ifstrempty{#1}{\origsubparagraph{#2}}{\origsubparagraph[#1]{#2}}  % only use optional arg if it is set 
  \label{subparagraph:#2}
  \ifstrempty{#1}{}{\label{subparagraph_short:#1}} % only set label for shortRef 
}
% End

% Definition fullref 
\usepackage{shared-resources/substr}
\newcommand{\fullref}[1]{%
  \IfSubStringInString{chapter}{#1}{Kapitel \ref{#1}}{% else part - no chapter
    \IfSubStringInString{figure}{#1}{Abbildung \ref{#1}}{% else part - no figure
      \IfSubStringInString{table}{#1}{Tabelle \ref{#1}}{% else part - no table
        Abschnitt \ref{#1}%
}}}}


% Definition von Variablen
\newcommand{\varErstbetreuer}{*** FEHLER: \textbackslash erstebetreuer\{\} nicht gesetzt ***}
\newcommand{\varZweitbetreuer}{*** FEHLER: \textbackslash zweitbetreuer\{\} nicht gesetzt ***}
\newcommand{\varMatrikelnr}{*** FEHLER: \textbackslash matrikelnr\{\} nicht gesetzt ***}
\newcommand{\varAdresse}{*** FEHLER: \textbackslash adresse\{\} nicht gesetzt ***}
\newcommand{\varStudiengang}{*** FEHLER: \textbackslash studiengang\{\} nicht gesetzt ***}
\newcommand{\varFachbereich}{*** FEHLER: \textbackslash fachbereich\{\} nicht gesetzt ***}
\newcommand{\varHochschule}{*** FEHLER: \textbackslash hochschule\{\} nicht gesetzt ***}
\newcommand{\varProduktname}{*** FEHLER: \textbackslash produktname\{\} nicht gesetzt ***}




% Komandos zum Setzen der Variablen
\newcommand{\erstbetreuer}[1]{\renewcommand{\varErstbetreuer}{#1}}
\newcommand{\zweitbetreuer}[1]{\renewcommand{\varZweitbetreuer}{#1}}
\newcommand{\adresse}[1]{\renewcommand{\varAdresse}{#1}} 
\newcommand{\matrikelnr}[1]{\renewcommand{\varMatrikelnr}{#1}} 
\newcommand{\studiengang}[1]{\renewcommand{\varStudiengang}{#1}} 
\newcommand{\fachbereich}[1]{\renewcommand{\varFachbereich}{#1}} 
\newcommand{\hochschule}[1]{\renewcommand{\varHochschule}{#1}} 
\newcommand{\produktname}[1]{\renewcommand{\varProduktname}{#1}} 


%marginnote neu definieren, sodass automatisch der Abstand zw. Absätzen eingahalten wird 
\LetLtxMacro{\origmarginnote}{\marginnote}
\renewcommand{\marginnote}[2][]{
  \origmarginnote[#1]{#2}[\parskip]
}


\usepackage[usenames,dvipsnames,svgnames,table]{xcolor}


% Zitieren & Quellenangeban * * * * 

\newboolean{varCiteInFootnote}
\setboolean{varCiteInFootnote}{false}

% \DeclareOption{foo}{\setboolean{varCiteInFootnote}{true}}


\newcommand{\zitat}[1]{\glqq #1\grqq}

\usepackage{cite}

\LetLtxMacro{\origcite}{\cite}
\renewcommand{\cite}[3][]{
 \ifthenelse{\boolean{varCiteInFootnote}}{
   \footnote{ \ifstrempty{#1}{siehe}{#1} \ifstrempty{#3}{\origcite{#2}}{\origcite[#3]{#2}}}
 }{
   \ifstrempty{#1}{siehe}{#1} \ifstrempty{#3}{\origcite{#2}}{\origcite[#3]{#2}}
 }
}



% quelle automatisch an cation anhängen
\newcommand{\captionWithSource}[2]{
    \caption[#1]{#1\ifstrempty{#2}{}{\ifthenelse{\boolean{varCiteInFootnote}}{#2}{ (Quelle: #2)}}}
}

%grafiken einfacher einbinden  mit \grafik[grqphics optionen]{DATEINAME}{caption kurz}{caption erweiterung Qullenangabe für in cation}
\newcommand{\grafik}[4][]{
  %\begin{figure}[htb]
    \begin{figure}[H]
    \centering
    %etwas platz oberhalb  
    \vspace{0.5cm}
  
    \ifstrempty{#1}{\includegraphics[width = \textwidth]{#2}}{\includegraphics[#1]{#2}}
  
    \captionWithSource{#3}{#4}
    \label{figure:#2}
  \end{figure}
}

% Lorem ipsum Text für Test's 
\newcommand{\lorem}{Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.}


