\LoadClass[a4paper,12pt]{article}

%--------------------- Packages de base ------------------------

\RequirePackage[french]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[section]{placeins}

% Maths et sciences
\RequirePackage{mathtools}
\RequirePackage{siunitx}

% Figures et mise en page
\RequirePackage{float}
\RequirePackage{graphicx}
\RequirePackage[justification=centering]{caption}
\RequirePackage{subcaption}
\RequirePackage{wallpaper}
\RequirePackage[left=3cm,right=3cm,top=3cm,bottom=2cm]{geometry}

% En-têtes et pieds de page
\RequirePackage{nomencl}
\makenomenclature
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyheadoffset{1cm}
\setlength{\headheight}{2cm}

% Hyperliens
\RequirePackage{url}
\RequirePackage[hidelinks]{hyperref}

% Polices
\RequirePackage{palatino}
\RequirePackage{pdfpages}

%--------------------- Packages pour config/ ------------------------

\RequirePackage{xcolor}
\RequirePackage{tikz}
\RequirePackage{pifont}
\RequirePackage{etoolbox}
\RequirePackage{minted}

%-------------------- Informations sur le rapport ----------------------

\newcommand{\mention}[1]{\renewcommand{\mention}{#1}}
\newcommand{\trigrammemention}[1]{\renewcommand{\trigrammemention}{#1}}
\newcommand{\master}[1]{\renewcommand{\master}{#1}}
\newcommand{\filiere}[1]{\renewcommand{\filiere}{#1}}
\newcommand{\titre}[1]{\renewcommand{\titre}{#1}}
\newcommand{\soustitre}[1]{\renewcommand{\soustitre}{#1}}
\newcommand{\eleve}[1]{\renewcommand{\eleve}{#1}}
\newcommand{\tuteurecole}[1]{\renewcommand{\tuteurecole}{#1}}
\newcommand{\tuteurentreprise}[1]{\renewcommand{\tuteurentreprise}{#1}}
\newcommand{\logoentreprise}[1]{\renewcommand{\logoentreprise}{#1}}
\newcommand{\destinataire}[1]{\renewcommand{\destinataire}{#1}}
\newcommand{\dates}[1]{\renewcommand{\dates}{#1}}

\newcommand{\fairemarges}{
\makenomenclature
\pagestyle{fancy}
\fancyheadoffset{0.5cm}
\rhead{\nouppercase{\leftmark}}
\rfoot{\thepage}
\cfoot{\textbf{\titre}}
}

\newcommand{\fairepagedegarde}{
\begin{titlepage}
\centering

% === LOGOS ===
\vspace*{-1cm}
\noindent
\begin{minipage}[t]{0.48\textwidth}
    \raggedright
    \includegraphics[height=2.2cm]{\logoentreprise}
\end{minipage}%
\hfill
\begin{minipage}[t]{0.48\textwidth}
    \raggedleft
    \includegraphics[height=2.2cm]{logos/logoCS.png}
\end{minipage}

\vfill

% === TITRE ===
\begin{center}
{\color{black!80}\rule{0.9\linewidth}{1.2pt}}\\[0.6cm]
{\Huge\bfseries \titre}\\[0.4cm]
\ifx\soustitre\empty\else
    {\Large \soustitre}\\[0.3cm]
\fi
{\color{black!80}\rule{0.9\linewidth}{1.2pt}}
\end{center}

\vfill

% === AUTEUR ===
\begin{flushleft}
\hspace{2cm}
\begin{minipage}{0.7\textwidth}
    {\large\textbf{Présenté par}}\\[0.3cm]
    {\LARGE\textsc{\eleve}}\\[0.2cm]
    {\normalsize\textit{\filiere}}
\end{minipage}
\end{flushleft}

\vfill

% === DESTINATAIRE ===
\begin{flushleft}
\hspace{2cm}
\begin{minipage}{0.7\textwidth}
    {\large\textbf{À l'attention de}}\\[0.3cm]
    {\Large\destinataire}
\end{minipage}
\end{flushleft}

\vfill
\vfill

% === DATE ===
{\large\dates}

\vspace{1cm}

\end{titlepage}
\newpage
}

\newcommand{\tabledematieres}{
\tableofcontents
\newpage
}

\newcommand{\insererfigure}[4]{
\begin{figure}[ht]
\centering
\includegraphics[height=#2]{#1}
\caption{#3}
\label{fig: #4}
\end{figure}
}
