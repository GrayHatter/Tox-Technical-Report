\ProvidesClass{tox} 
\ProcessOptions\LoadClass[a4paper,oneside]{article} 

\RequirePackage{graphicx}

\newcommand{\HRule}{\rule{\linewidth}{0.5mm}}

\def\abstract#1     {\gdef\@abstract{#1}}
\def\author#1		{\gdef\@author{#1}}
\def\data#1			{\gdef\@data{#1}}

\renewcommand{\maketitle}{
	\begin{titlepage}
		\begin{center}
			\begin{figure}[h!]
				\begin{center}
					\leavevmode
					\includegraphics[scale=1, trim = 0mm 0mm 0mm 0mm, clip]{ToxLogo.png}
				\end{center}
			\end{figure}

			\HRule \\[0.4cm]{
				\huge \bfseries \@title\\[0.5cm]
			}\vspace{0.7cm}
			
			\begin{minipage}{0.9\textwidth}
			    \begin{flushleft}
			        \large
			        \@abstract
			        \newline
			        \newline
			    \end{flushleft}
			\end{minipage}
			
			\HRule \\[0cm]
			
			\vfill
			\begin{minipage}{1.0\textwidth}
				\begin{center}
					\large
					\@author
				\end{center}
			\end{minipage}
		\end{center}
	\end{titlepage}

	\setcounter{page}{2}
}
