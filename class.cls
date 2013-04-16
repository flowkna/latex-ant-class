\ProvidesClass{class}[2013/04/08 v 0.1 class]
\LoadClassWithOptions{article}

\usepackage[ngerman]{babel} % Neue deutsche Rechnschreibung


\usepackage{tgheros} % Nutze Fontbase tghereos
\usepackage{fontspec} % Provide features for AAT and OpenType fonts

\usepackage{titlesec}

\usepackage{fancyhdr}
\usepackage[a4paper]{geometry}


%% by Martin

\usepackage{hyperref}


%% automatisch Labels für die Section erzeugen -> braucht man um im text darauf zu referenzieren 
\usepackage{letltxmacro}
\usepackage{etoolbox}
%
\LetLtxMacro{\origsection}{\section}
\renewcommand{\section}[2][]{
  \ifstrempty{#1}{\origsection{#2}}{\origsection[#1]{#2}}  % only use optional arg if it is set 
  \label{section:#2}
  \ifstrempty{#1}{}{\label{secShort:#1}} % only set label for shortRef 
}

\LetLtxMacro{\origsubsection}{\subsection}
\renewcommand{\subsection}[2][]{
  \ifstrempty{#1}{\origsubsection{#2}}{\origsubsection[#1]{#2}}  % only use optional arg if it is set 
  \label{subsection:#2}
  \ifstrempty{#1}{}{\label{subsection_short:#1}} % only set label for shortRef 
}

\LetLtxMacro{\origsubsubsection}{\subsubsection}
\renewcommand{\subsubsection}[2][]{
  \ifstrempty{#1}{\origsubsubsection{#2}}{\origsubsubsection[#1]{#2}}  % only use optional arg if it is set 
  \label{subsubsection:#2}
  \ifstrempty{#1}{}{\label{subsubsection_short:#1}} % only set label for shortRef 
}


\LetLtxMacro{\origparagraph}{\paragraph}
\renewcommand{\paragraph}[2][]{
  \ifstrempty{#1}{\origparagraph{#2}}{\origparagraph[#1]{#2}}  % only use optional arg if it is set 
  \label{paragraph:#2}
  \ifstrempty{#1}{}{\label{paragraph_short:#1}} % only set label for shortRef 
}

 
\LetLtxMacro{\origsubparagraph}{\subparagraph}
\renewcommand{\subparagraph}[2][]{
  \ifstrempty{#1}{\origsubparagraph{#2}}{\origsubparagraph[#1]{#2}}  % only use optional arg if it is set 
  \label{subparagraph:#2}
  \ifstrempty{#1}{}{\label{subparagraph_short:#1}} % only set label for shortRef 
}






