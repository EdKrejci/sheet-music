\version "2.24.0"

\header {
  title = "Help Friend"
  subtitle = "My Help Comes from You — A Psalm of Ascent"
  composer = "by Edward Krejci as inspired by Psalms 121"
  arranger = "Melody & arrangement from provided notes"
  tagline = "D Phrygian Dominant (Ahavah Rabbah) • Lento rubato ≈ 66 BPM"
}

global = {
  \key d \minor          % closest conventional key; accidentals handle Phrygian Dominant
  \cadenzaOn             % free rhythm / chant style
  \override Score.TimeSignature.stencil = ##f
}

% ========== VOCAL MELODY ==========
vocal = \relative c' {
  \clef treble
  \tempo "Lento, rubato" 4 = 66

  % Verse 1
  d4 d fis g | a bes a g fis | g a bes c | d c bes a \bar "||"
  % Verse 2
  a d c bes | a g fis g | a bes a g fis d \bar "||"
  % Verse 3
  d fis g a | bes a g fis g a | bes c d c bes a | g fis ees d \bar "||"
  % Verse 4
  g a bes c | d c bes a | d ees d c | bes a g fis d \bar "||"
  % Verse 5
  a g a | bes a | g fis g a bes | a g fis d \bar "||"
  % Verse 6
  bes' a g fis g a | g fis ees d \bar "||"
  % Verse 7
  g a bes a | g fis d \bar "||"
  % Verse 8
  fis g a | bes a d | c bes a | g fis ees d \bar "|."
}

% ========== HARP (broken arpeggios) ==========
harp = \relative c {
  \clef bass
  % simple repeating pattern in D Phrygian Dominant
  \repeat unfold 8 {
    d,8 a' d ees fis | d a d ees fis
  }
  % continue pattern adapted to phrases (shortened for length)
  \repeat unfold 20 { d,8 a' d ees fis }
}

% ========== FLUTE (light countermelody / ornament) ==========
flute = \relative c'' {
  \clef treble
  % gentle echoing and rising figures
  r2. fis4 | g2 a4 bes | a2. g4 | fis2. r4 |
  a2. d4 | c2 bes4 a | g2 fis4 g | a1 |
  % continue with stepwise rising material matching verses
  d,2 fis4 g | a2 bes4 a | g2. fis4 | g2 a |
  bes2 c4 d | c2 bes4 a | g2 fis4 ees | d1 |
  % quieter later verses
  a2 g4 a | bes2 a | g2 fis4 g | a2. r4 |
  bes2 a4 g | fis2 g4 a | g2 fis4 ees | d1 |
  g2 a4 bes | a2 g4 fis | d1 |
  fis2 g4 a | bes2 a4 d | c2 bes4 a | g2 fis4 ees | d1
}

% ========== SHOFAR (simple calls / sustained tones) ==========
shofar = \relative c {
  \clef bass
  \override NoteHead.style = #'cross   % optional ancient look; remove if preferred
  d1~\pp | d1 | d2. r4 | r1 |
  d1~ | d2. r4 | r1 | r1 |
  d1~\mp | d1 | d2. r4 | d1 |
  r1 | d1~ | d2. r4 | r1 |
  d1\pp | r1 | r1 | r1 |
  d1~ | d2. r4 | r1 |
  d1~\p | d1 | r1 | d1~ | d1
}

% ========== LYRICS ==========
hebrewLyrics = \lyricmode {
  % Simplified syllable matching (full Hebrew can be refined)
  בְּהַבִּיטִי אֶל הָאֶתְגָּר הַהֲרָרִי וְהָעָצוּם הַזֶּה מִי יוֹשִׁיט עֶזְרָה
  עֶזְרִי מֵאִתְּךָ בּוֹרֵא הַבְּרִיאָה אוֹהֵב הָעוֹלָם
  אַתָּה מַנְחֶה אֶת רַגְלַי בִּשְׁבִיל הַמַּעֲלוֹת וְהַשְׁגָּחָתְךָ עוֹטֶפֶת אוֹתִי וְאֵינָהּ כּוֹשֶׁלֶת לְעוֹלָם
  עֵינַי מִתְמַלְּאוֹת בִּכְבוֹדְךָ וְלִבִּי בְּךָ הַשּׁוֹמֵר אֲשֶׁר לֹא יָנוּם וְלֹא יִישָׁן
  אֲדוֹנִי שׁוֹמְרִי תָּמִיד בְּמַעֲמָדִי הַשּׁוֹאֵף אֵלֶיךָ
  שׁוֹמְרִי מִשֶּׁמֶשׁ קוֹדַחַת וּמִקּוֹר הַלְּבָנָה
  מוֹשִׁיעִי מֵחֵטְא שׁוֹמֵר נַפְשִׁי
  יְדִידִי אֲדוֹנִי לְכָל יָמַי וּלְעוֹלְמֵי עַד
}

translitLyrics = \lyricmode {
  Be -- ha -- bi -- TI el ha -- et -- GAR ha -- ha -- ra -- RI ve -- ha -- a -- TZUM ha -- ZEH, MI yo -- SHIT ez -- RAH?
  Ez -- RI me -- it -- KHA; Bo -- REI ha -- bri -- AH, O -- HEV ha -- o -- LAM.
  A -- TAH man -- KHEH et rag -- LAI bi -- SHVIL ha -- ma -- a -- LOT, ve -- hash -- ga -- khat -- KHA o -- TE -- fet o -- TI ve -- ei -- NAH ko -- SHE -- let le -- o -- LAM.
  Ei -- NAI mit -- mal -- OT bi -- khvod -- KHA, ve -- li -- BI be -- KHA, ha -- Sho -- MER a -- SHER LO ya -- NUM ve -- LO yi -- SHAN.
  A -- do -- NI, Shom -- RI, ta -- MID be -- ma -- a -- ma -- DI ha -- sho -- EF ei -- LEI -- kha.
  Shom -- RI mi -- SHE -- mesh ko -- DA -- khat u -- mi -- KOR ha -- le -- va -- NAH.
  Mo -- shi -- I me -- KHET, Sho -- MER naf -- SHI.
  Ye -- di -- DI, A -- do -- NI, le -- KHOL ya -- MAI u -- le -- ol -- MEI AD.
}

englishLyrics = \lyricmode {
  As I survey this mountainous, overwhelming challenge, Who will lend help?
  My help comes from You; Creation’s Maker, Lover of the World.
  You guide my feet on the ascending trail, Your guard covers me never failing.
  My eyes fill with Your Glory, my heart with You Who never sleeps.
  My Lord, my Guardian, always in my reaches out to You.
  My Guardian from burning sun and moonlight’s cold.
  My Rescuer from sin, Guardian of my soul.
  My Friend, my Lord, for all my time and through eternity.
}

% ========== SCORE ==========
\score {
  <<
    \new Staff \with {
      instrumentName = "Voice"
      shortInstrumentName = "V."
    } {
      \global
      \new Voice = "vocal" { \vocal }
    }
    \new Lyrics \lyricsto "vocal" { \hebrewLyrics }
    \new Lyrics \lyricsto "vocal" { \translitLyrics }
    \new Lyrics \lyricsto "vocal" { \englishLyrics }

    \new Staff \with {
      instrumentName = "Harp / Lyre"
      shortInstrumentName = "Hp."
    } {
      \global
      \harp
    }

    \new Staff \with {
      instrumentName = "Flute"
      shortInstrumentName = "Fl."
    } {
      \global
      \flute
    }

    \new Staff \with {
      instrumentName = "Shofar"
      shortInstrumentName = "Sh."
    } {
      \global
      \shofar
    }
  >>

  \layout {
    \context {
      \Score
      \override LyricText.font-size = #-1
      \override SystemStartBrace.collapse-height = #4
    }
    \context {
      \Staff
      \RemoveEmptyStaves
    }
  }

  \midi {
    \tempo 4 = 66
  }
}