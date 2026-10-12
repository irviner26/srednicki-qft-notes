#import "@preview/physica:0.9.8": ket

#let stateket() = $ket(psi"," t)$
#let lorentzmatrix(a, b) = $Lambda^(#a)_(#b)$
#let conjugate(a) = $#a^dagger$
#let commute(a, b) = $[#a, #b]$
#let anticommute(a, b) = ${#a, #b}$
