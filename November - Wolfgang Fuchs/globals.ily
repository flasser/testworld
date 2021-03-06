\version "2.18.2"

\header {
  title = "November"
  composer = "Wolfgang Fuchs"
  instrument = "Piano & Violine"
}

globalSettings= {
  \key a \major
  \time 4/4
  \tempo 4=66
  \partial 4
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
}

#(define (override-color-for-all-grobs color)
  (lambda (context)
   (let loop ((x all-grob-descriptions))
    (if (not (null? x))
     (let ((grob-name (caar x)))
      (ly:context-pushpop-property context grob-name 'color color)
      (loop (cdr x)))))))

