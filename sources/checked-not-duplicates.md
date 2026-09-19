# Title pairs that `vm.py check` flags, and that are not duplicates

`check` compares titles word by word, so problems that share ordinary words like *triangle*,
*carré*, *nombres premiers* or *degrés* get flagged. Every pair below was read in full and
is a genuinely different problem. The note stays, because loosening the detector would risk
hiding a real duplicate; this list just saves the next person from reading them again.

Checked 2026-09-19, after the Lyon club import.

| Pair | Why they are different |
|---|---|
| 0685 / 0876 | list the primes under 50, against find all p with p, p+2, p+4 prime |
| 0686 / 0876 | two primes 11 apart, against three primes in arithmetic progression |
| 0876 / 0762 | finding primes, against proving two large numbers are composite |
| 0158 / 0253 | the sum of the first n odd numbers, against a sum of two odd squares |
| 0654 / 0910 | a 35° isosceles angle chase, against a 30° one, different configurations |
| 0660 / 0002 | the angle at an equilateral point in a square, against an area that does not move |
| 0152 / 0258 | the largest rectangle of given perimeter, against a perimeter divisible by 4 |
| 0883 / 0893 | when n divides 2^n, against when n + p is a power of n |
| 0886 / 0809 | recognising a 60° angle, against a 60° angle with a perimeter condition |
