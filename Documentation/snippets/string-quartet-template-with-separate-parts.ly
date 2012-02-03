%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.14.0"

\header {
  lsrtags = "unfretted-strings, template"

%% Translation of GIT committish: 6977ddc9a3b63ea810eaecb864269c7d847ccf98
  texidoces = "
El fragmento de código @qq{Plantilla de cuarteto de cuerda} produce un
resultado satisfactorio para el cuarteto, pero ¿y si tenemos que
imprimir las particellas? Esta nueva plantilla muestra cómo usar la
funcionalidad @code{\\tag} (etiqueta) para dividir fácilmente una
pieza en particellas indicviduales.

Tenemos que dividir esta plantilla en archivos independientes; los
nombres de archivo están dentro de los comentarios al principio de
cada archivo. @file{piece.ly} contiene todas las definiciones de
música. Los otros archivos (@file{score.ly}, @file{vn1.ly},
@file{vn2.ly}, @file{vla.ly} y @file{vlc.ly}) producen la particella
correspondiente.

¡No olvide quitar los comentarios que hemos especificado cuando use
los archivos independientes!

"
  doctitlees = "Plantilla de cuarteto de cuerda con particellas independientes"


%% Translation of GIT committish: fa1aa6efe68346f465cfdb9565ffe35083797b86
  texidocja = "
\"弦楽四重奏テンプレート\" は適切な弦楽四重奏の楽譜を作り出しますが、個々の@c
パート譜を譜刻する必要がある場合はどうでしょうか？今度の新しいテンプレートは
@code{@bs{}tag} 機能を用いて容易に楽曲を個々のパートに分ける方法を示しています。

このテンプレートは別々のファイルに分ける必要があります。ファイル名は各ファイル@c
の開始部分のコメントの中に記述されています。@code{piece.ly} はすべての音楽定義@c
を保持しています。他のファイル - @code{score.ly}, @code{vn1.ly}, @code{vn2.ly},
@code{vla.ly} それに @code{vlc.ly} - は対応するパートを作り出します。


別々のファイルに分ける場合は、指定されたコメントを外すことを忘れないでください！
"

%% Translation of GIT committish: c3b519f0dd5ff0f8ccfc9a39ed1fe8df8b43741c
  texidocit = "
Il frammento di codice del @qq{Modello per quartetto d'archi} crea un bel
quartetto, ma cosa fare se si ha bisogno di creare le singole parti? Questo
nuovo modello mostra come usare la funzionalità @code{\\tag} per dividere
facilmente un pezzo in parti staccate.

Occorre dividere questo modello in file separati; i nomi dei file sono
indicati nei commenti all'inizio di ogni file. @code{piece.ly}
contiene tutte le definizioni musicali. Gli altri file – @code{score.ly},
@code{vn1.ly}, @code{vn2.ly}, @code{vla.ly} e @code{vlc.ly} –
creano ciascuna parte.


Non dimenticare di togliere i commenti quando usi i file separati!

"
  doctitleit = "Modello per quartetto d'archi con parti separate"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Mit diesem Beispiel können Sie ein schönes Streichquartett notieren,
aber wie gehen Sie vor, wenn Sie Stimmen brauchen? Das Beispiel
oben hat gezeigt, wie Sie mit Variablen einzelne Abschnitte getrennt
voneinander notieren können. Im nächsten Beispiel wird nun
gezeigt, wie Sie mit diesen Variablen einzelne Stimmen erstellen.

Sie müssen das Beispiel in einzelne Dateien aufteilen; die Dateinamen
sind in den Kommentaren am Anfang jeder Datei enthalten.  @file{piece.ly}
enthält die Noten. Die anderen Dateien -- @file{score.ly},
@file{vn1.ly}, @file{vn2.ly}, @file{vla.ly} und
@file{vlc.ly} -- erstellen daraus die entsprechenden Stimmen bzw. die
Partitur (@file{score.ly}). Mit @code{\\tag} wird den Stimmen ein Name
zugewiesen, auf den zurückgegriffen werden kann.
"

  doctitlede = "Vorlage für Streichquartett mit einzelnen Stimmen"


%% Translation of GIT committish: 3b125956b08d27ef39cd48bfa3a2f1e1bb2ae8b4
  texidocfr = "
Grâce à ce canevas, vous pouvez obtenir une partition d'excellente
facture pour quatuor à cordes mais aussi, si le besoin s'en faisait
sentir, une partie séparée par instrument.  Par ailleurs, cet exemple
illustre l'utilisation de la fonction @code{\\tag} dans le but
d'extraire des parties séparées.

Il vous faudra découper ce canevas en plusieurs fichiers séparés@tie{};
leur nom respectif est indiqué en commentaire@tie{}: @file{piece.ly}
comporte tout ce qui a trait à la musique, les autres fichiers --
@file{score.ly}, @file{vn1.ly}, @file{vn2.ly}, @file{vla.ly}, et
@file{vlc.ly} -- vous permettront d'obtenir les parties selon le
pupitre.

N'oubliez pas de supprimer les commentaires superflus des fichiers
individualisés@tie{}!

"
  doctitlefr = "Quatuor à cordes avec parties séparées"

  texidoc = "
The @qq{String quartet template} snippet produces a nice string
quartet, but what if you needed to print parts? This new template
demonstrates how to use the @code{\\tag} feature to easily split a
piece into individual parts.

You need to split this template into separate files; the filenames are
contained in comments at the beginning of each file. @code{piece.ly}
contains all the music definitions. The other files – @code{score.ly},
@code{vn1.ly}, @code{vn2.ly}, @code{vla.ly}, and @code{vlc.ly} –
produce the appropriate part.


Do not forget to remove specified comments when using separate files!

"
  doctitle = "String quartet template with separate parts"
} % begin verbatim

%%%%% piece.ly
%%%%% (This is the global definitions file)

global= {
  \time 4/4
  \key c \major
}

Violinone = \new Voice { \relative c''{
  \set Staff.instrumentName = #"Violin 1 "

  c2 d e1

\bar "|." }}   %*********************************
Violintwo = \new Voice { \relative c''{
  \set Staff.instrumentName = #"Violin 2 "

  g2 f e1

\bar "|." }}   %*********************************
Viola = \new Voice { \relative c' {
  \set Staff.instrumentName = #"Viola "
  \clef alto

  e2 d c1

\bar "|." }}   %*********************************
Cello = \new Voice { \relative c' {
  \set Staff.instrumentName = #"Cello "
  \clef bass

  c2 b a1

\bar "|."}}   %**********************************

music = {
  <<
    \tag #'score \tag #'vn1 \new Staff { << \global \Violinone >> }
    \tag #'score \tag #'vn2 \new Staff { << \global \Violintwo>> }
    \tag #'score \tag #'vla \new Staff { << \global \Viola>> }
    \tag #'score \tag #'vlc \new Staff { << \global \Cello>> }
  >>
}

%%% These are the other files you need to save on your computer

%%%%% score.ly
%%%%% (This is the main file)

%%% uncomment the line below when using a separate file
%\include "piece.ly"
#(set-global-staff-size 14)
\score {
  \new StaffGroup \keepWithTag #'score \music
  \layout { }
  \midi { }
}


%{ Uncomment this block when using separate files

%%%%% vn1.ly
%%%%% (This is the Violin 1 part file)

\include "piece.ly"
\score {
  \keepWithTag #'vn1 \music
  \layout { }
}


%%%%% vn2.ly
%%%%% (This is the Violin 2 part file)

\include "piece.ly"
\score {
  \keepWithTag #'vn2 \music
  \layout { }
}


%%%%% vla.ly
%%%%% (This is the Viola part file)

\include "piece.ly"
\score {
  \keepWithTag #'vla \music
  \layout { }
}


%%%%% vlc.ly
%%%%% (This is the Cello part file)

\include "piece.ly"
\score {
  \keepWithTag #'vlc \music
  \layout { }
}

%}

