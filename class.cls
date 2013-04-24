\ProvidesClass{class}[2013/04/08 v 0.1 class]

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

% Packet für bessere Randnotizen 
\usepackage{marginnote} 

% Automatische Labels für Überschriften 
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

% Definition von Variablen
\newcommand{\varErstbetreuer}{*** FEHLER: \textbackslash erstebetreuer\{\} nicht gesetzt ***}
\newcommand{\varZweitbetreuer}{*** FEHLER: \textbackslash zweitbetreuer\{\} nicht gesetzt ***}
\newcommand{\varMatrikelnr}{*** FEHLER: \textbackslash matrikelnr\{\} nicht gesetzt ***}
\newcommand{\varStudiengang}{*** FEHLER: \textbackslash studiengang\{\} nicht gesetzt ***}
\newcommand{\varHochschule}{*** FEHLER: \textbackslash hochschule\{\} nicht gesetzt ***}

% Setzen der Variablen
\newcommand{\erstbetreuer}[1]{\renewcommand{\varErstbetreuer}{#1}}
\newcommand{\zweitbetreuer}[1]{\renewcommand{\varZweitbetreuer}{#1}}
\newcommand{\matrikelnr}[1]{\renewcommand{\varMatrikelnr}{#1}} 
\newcommand{\studiengang}[1]{\renewcommand{\varStudiengang}{#1}} 
\newcommand{\hochschule}[1]{\renewcommand{\varHochschule}{#1}} 



%marginnote neu definieren, sodass automatisch der Abstand zw. Absätzen eingahalten wird 
\LetLtxMacro{\origmarginnote}{\marginnote}
\renewcommand{\marginnote}[2][]{
  \origmarginnote[#1]{#2}[\parskip]
}

