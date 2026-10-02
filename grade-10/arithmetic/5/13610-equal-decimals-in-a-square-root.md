---
id: "13610"
title: "Des décimales toutes égales dans une racine carrée"
grade: 10
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [racine carree, ecriture decimale, inegalite, carre parfait, divisibilite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Coupe Animath de printemps 2010 (test de sélection du stage olympique de Grésillon, 3 juin 2010)"
  reference: "2017-09_coupe_printemps_2010_2.pdf, épreuve des secondes, exercice 5 (aussi exercice 5 de l'épreuve de première, 2017-09_coupe_printemps_2010_1.pdf) ; corrigé 2017-09_coupe_printemps_2010_corrige.pdf, exercice 5 (le corrigé affirme |2√n − ε| ≤ 2√n, ce qui est faux quand ε < 0, c'est-à-dire pour v = 9 en a) et dans la moitié des cas en b) ; les résultats restent vrais, la preuve est refaite ici)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_printemps_2010_2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_printemps_2010_2.pdf"
---

## Statement

Soit $n$ un entier strictement positif qui n'est pas un carré parfait, c'est-à-dire qui n'est pas le carré d'un entier. En regardant l'écriture décimale de $\sqrt{n}$, on constate que les $k$ premières décimales ont toutes la même valeur $v$, avec $k \geqslant 1$.

Par exemple, si $n = 48\,273\,160$, on a $\sqrt{n} = \text{6947,888888000440}\ldots$ : les six premières décimales sont égales à $8$, donc $k = 6$ et $v = 8$.

a) Si $v = 0$ ou $v = 9$, démontrer que $\sqrt{n} > \dfrac{10^k}{2}$.

b) Pour toutes les valeurs de $v$, démontrer que $\sqrt{n} > \dfrac{10^k}{144}$.

## Hints

1. Dans l'exemple, compare $\sqrt{n}$ avec $6947 + \frac{8}{9}$. Pourquoi le nombre $\text{0,888}\ldots$ (avec une infinité de $8$) vaut-il $\frac{8}{9}$ ?
2. Pour a) avec $v = 0$ : soit $m$ la partie entière de $\sqrt{n}$. Que peux-tu dire de $\sqrt{n} - m$ ? L'entier $n - m^2$ vaut au moins $1$ : écris-le comme un produit.
3. Pour a) avec $v = 9$ : fais la même chose avec $m + 1$ à la place de $m$.
4. Pour b) : pose $R = 9m + v$, de sorte que $\frac{R}{9}$ est très proche de $\sqrt{n}$. Explique pourquoi $81n \neq R^2$, puis écris $81n - R^2$ comme le produit de $9\sqrt{n} - R$ et de $9\sqrt{n} + R$. Sépare les cas $9\sqrt{n} > R$ et $9\sqrt{n} < R$.

## Solution

Notons $m$ la partie entière de $\sqrt{n}$ : c'est l'entier tel que $m \leqslant \sqrt{n} < m + 1$. Écrivons $\sqrt{n} = m + f$, où $f$ est la partie décimale, avec $0 \leqslant f < 1$. Comme $n$ n'est pas un carré parfait, $\sqrt{n} \neq m$, donc $f > 0$.

**Ce que veut dire l'hypothèse.** Notons $d$ le nombre qui s'écrit « $0$, virgule, puis $k$ chiffres $v$ ». Par exemple, pour $k = 3$ et $v = 8$, on a $d = \text{0,888}$. Dire que les $k$ premières décimales de $\sqrt{n}$ valent $v$, c'est dire que

$$d \leqslant f < d + 10^{-k} .$$

Calculons $d$. Pour $k = 3$, on a $9 \times \text{0,111} = \text{0,999} = 1 - 10^{-3}$. De la même façon, en général, $9 \times d = v \times (1 - 10^{-k})$, donc

$$d = \frac{v}{9} - \frac{v}{9} \times 10^{-k} .$$

En multipliant l'encadrement de $f$ par $9$, on obtient

$$-v \times 10^{-k} \leqslant 9f - v < (9 - v) \times 10^{-k} . \qquad (\star)$$

**Un fait sur les carrés.** Si $a$ et $b$ sont deux entiers différents, alors $|a - b| \geqslant 1$. On s'en servira avec des carrés : par exemple $n - m^2$ est un entier, et il n'est pas nul.

**a) Le cas $v = 0$.** Ici $(\star)$ donne $0 \leqslant f < 10^{-k}$, et on sait que $f > 0$. L'entier $n - m^2$ est strictement positif car $\sqrt{n} > m$, donc $n - m^2 \geqslant 1$. Or

$$n - m^2 = (\sqrt{n} - m)(\sqrt{n} + m) = f\,(\sqrt{n} + m) .$$

Comme $m \leqslant \sqrt{n}$, on a $\sqrt{n} + m \leqslant 2\sqrt{n}$, et donc

$$1 \leqslant n - m^2 = f\,(\sqrt{n} + m) < 10^{-k} \times 2\sqrt{n} .$$

On en tire $\sqrt{n} > \dfrac{10^k}{2}$.

**a) Le cas $v = 9$.** Ici $(\star)$ donne $9 - 9 \times 10^{-k} \leqslant 9f$, c'est-à-dire $f \geqslant 1 - 10^{-k}$. Posons $e = (m + 1) - \sqrt{n} = 1 - f$. On a donc $0 < e \leqslant 10^{-k}$ : cette fois, c'est l'entier $m + 1$ qui est très proche de $\sqrt{n}$, juste au-dessus.

L'entier $(m+1)^2 - n$ est strictement positif, donc au moins égal à $1$. Comme $\sqrt{n} < m + 1$ :

$$1 \leqslant (m+1)^2 - n = e\,(m + 1 + \sqrt{n}) < e \times 2(m+1) \leqslant 10^{-k} \times 2(m+1) .$$

Donc $m + 1 > \dfrac{10^k}{2}$. Or $\dfrac{10^k}{2} = 5 \times 10^{k-1}$ est un entier, car $k \geqslant 1$. L'entier $m + 1$ est strictement plus grand que cet entier, donc $m + 1 \geqslant \dfrac{10^k}{2} + 1$. Finalement

$$\sqrt{n} = (m + 1) - e \geqslant \frac{10^k}{2} + 1 - 10^{-k} > \frac{10^k}{2} ,$$

car $10^{-k} < 1$.

**b)** Si $v = 0$ ou $v = 9$, la question a) donne $\sqrt{n} > \dfrac{10^k}{2} > \dfrac{10^k}{144}$. Il reste les cas où $v$ est entre $1$ et $8$.

D'après l'indication, $\sqrt{n} = m + f$ est proche de $m + \frac{v}{9}$. Pour ne manipuler que des entiers, on multiplie par $9$ : posons

$$R = 9m + v \qquad \text{et} \qquad h = 9\sqrt{n} - R = 9f - v .$$

D'après $(\star)$, et comme $1 \leqslant v \leqslant 8$, on a $-8 \times 10^{-k} \leqslant h < 8 \times 10^{-k}$.

*Les entiers $81n$ et $R^2$ sont différents.* Supposons $R^2 = 81n$. Alors $3$ divise $R^2$, et comme $3$ est premier, $3$ divise $R$. Écrivons $R = 3S$ : on obtient $9S^2 = 81n$, soit $S^2 = 9n$. De même $3$ divise $S$, et en écrivant $S = 3T$, on obtient $T^2 = n$. Alors $n$ serait un carré parfait, ce qui est faux. Donc $81n \neq R^2$, et ces deux entiers vérifient $|81n - R^2| \geqslant 1$. En particulier $h \neq 0$.

*Une factorisation.* $81n - R^2 = (9\sqrt{n})^2 - R^2 = (9\sqrt{n} - R)(9\sqrt{n} + R) = h\,(9\sqrt{n} + R)$.

*Premier cas : $h > 0$.* Alors $R < 9\sqrt{n}$, donc $9\sqrt{n} + R < 18\sqrt{n}$, et

$$1 \leqslant 81n - R^2 = h\,(9\sqrt{n} + R) < 8 \times 10^{-k} \times 18\sqrt{n} = 144 \times 10^{-k} \sqrt{n} .$$

Donc $\sqrt{n} > \dfrac{10^k}{144}$.

*Second cas : $h < 0$.* Alors $R > 9\sqrt{n}$, donc $9\sqrt{n} + R < 2R$. En notant $|h| = -h$, on a $0 < |h| \leqslant 8 \times 10^{-k}$ et

$$1 \leqslant R^2 - 81n = |h|\,(9\sqrt{n} + R) < 8 \times 10^{-k} \times 2R = 16 \times 10^{-k} R .$$

Donc $R > \dfrac{10^k}{16}$. Ce n'est pas encore ce qu'on veut, car $9\sqrt{n} = R - |h|$ est un peu plus petit que $R$. On utilise encore que $R$ est entier.

- Si $k = 1$, il n'y a rien à faire : $n \geqslant 2$ car $1$ est un carré, donc $\sqrt{n} > 1 > \frac{10}{144}$.
- Si $k \geqslant 2$, posons $x = \dfrac{10^k}{16}$. Alors $4x = 25 \times 10^{k-2}$ est un entier. Comme $R > x$, on a $4R > 4x$ entre deux entiers, donc $4R \geqslant 4x + 1$, c'est-à-dire $R \geqslant x + \frac{1}{4}$. Par suite

$$9\sqrt{n} = R - |h| \geqslant x + \frac{1}{4} - 8 \times 10^{-k} \geqslant x + \frac{1}{4} - \frac{8}{100} > x = \frac{10^k}{16} .$$

Donc $\sqrt{n} > \dfrac{10^k}{9 \times 16} = \dfrac{10^k}{144}$.

**Conclusion.** Si les $k$ premières décimales de $\sqrt{n}$ valent $0$ ou $9$, alors $\sqrt{n} > \frac{10^k}{2}$. Et quelle que soit leur valeur commune $v$, on a $\sqrt{n} > \frac{10^k}{144}$.

**Vérification sur l'exemple.** Pour $n = 48\,273\,160$, on a $m = 6947$, $v = 8$ et $R = 9 \times 6947 + 8 = 62\,531$. On trouve $R^2 = 3\,910\,125\,961$ et $81n = 3\,910\,125\,960$ : ces deux entiers ne diffèrent que de $1$, le plus petit écart possible. C'est pour cela que $\sqrt{n}$ est si proche de $6947 + \frac{8}{9}$. Et on a bien $\sqrt{n} \approx 6948 > \frac{10^6}{144} \approx 6944$.

## Going further

L'exemple montre que la borne de b) est presque atteinte : avec $k = 6$, on a $\sqrt{n} \approx 6948$, à peine plus que $\frac{10^6}{144} \approx \text{6944,4}$. Pour la question a), essaie $n = 25\,000\,001$ : combien de ses premières décimales valent $0$, et que donne la borne $\frac{10^k}{2}$ ?
