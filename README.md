# Metody-numeryczne-MN-2
## Obliczanie całki oznaczonej metodą Romberga

Implementacja numerycznego obliczania całki oznaczonej za pomocą metody Romberga w środowisku Octave.
Funkcja podcałkowa:\
f(x) = 2 / (1 + x)\
Przedział całkowania: [0, 0.6]\
Wartość dokładna (analityczna): 0.940007258491471


## Porównanie wyników całkowania metodą Romberga z dokładnością do:
a) 10⁻⁴ \
b) 10⁻⁶

z wynikiem uzyskanym za pomocą funkcji quad w Octave.


## Pliki w repozytorium
- `fun.m` – definicja funkcji podcałkowej
- `Romberg.m` – implementacja metody Romberga
- `MNC6KP0801.pdf` – sprawozdanie z obliczeniami i analizą
- `sprawozdanie8.txt` – zapis sesji w Octave z wynikami

## Wyniki
Dla dokładności 10⁻⁴:
- Wynik Romberga: 0.940007276622470
- Liczba iteracji: 4
- Błąd metody: 3.6794 × 10⁻⁶
- Różnica z quad: 1.8131 × 10⁻⁸

Dla dokładności 10⁻⁶:
- Wynik Romberga: 0.940007276622470
- Liczba iteracji: 4
- Błąd metody: 3.6794 × 10⁻⁶
- Różnica z quad: 1.8131 × 10⁻⁸


## Użycie
W Octave/MATLAB:\
`[wynik, blad] = Romberg(@fun, 0, 0.6, 1e-4);`
