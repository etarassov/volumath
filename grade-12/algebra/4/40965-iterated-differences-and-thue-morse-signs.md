---
id: "40965"
title: "Différences itérées : des signes qui effacent les puissances"
grade: 12
theme: algebra
difficulty: 4
duration_min: 55
tags: [polynome, differences-finies, recurrence, formule-du-binome, signes, puissances-de-deux, factorielle]
adapted_from: null
see_also: ["40964", "40966", "40967"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2026, mathématiques"
  reference: "cg-2026-s-sujet.pdf, exercice 2 « Sommes consécutives signées », partie 3 « Des différences finies itérées », questions 7 à 11"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2026-s-sujet.pdf"
---

## Statement

Dans cet exercice, on appelle *signe* un nombre égal à $+1$ ou à $-1$.

On appelle *fonction polynomiale à coefficients entiers de degré au plus $d$* une fonction $P$
définie sur $\mathbb{R}$ pour laquelle il existe des entiers relatifs $a_0, a_1, \ldots, a_d$ tels
que, pour tout réel $x$, $P(x) = a_0 + a_1 x + a_2 x^2 + \cdots + a_d x^d$.

Pour une fonction $f$ définie sur $\mathbb{R}$ et un réel $a$, on note $\Delta_a(f)$ la fonction
définie sur $\mathbb{R}$ par

$$(\Delta_a(f))(x) = f(x) - f(x + a).$$

1. Soit $a$ un entier relatif et $P$ une fonction polynomiale à coefficients entiers de degré au
   plus $d \geqslant 1$. Démontrer que $\Delta_a(P)$ est une fonction polynomiale à coefficients
   entiers de degré au plus $d - 1$.

Pour toute fonction $f$ définie sur $\mathbb{R}$, on définit la suite de fonctions
$(T_k(f))_{k \in \mathbb{N}}$ par $T_0(f) = f$ et, pour tout entier $k \geqslant 1$,
$T_k(f) = \Delta_{2^{k-1}}(T_{k-1}(f))$. Par exemple,
$T_3(f) = \Delta_4(\Delta_2(\Delta_1(f)))$.

2. Démontrer qu'il existe une suite de signes $(u_n)_{n \in \mathbb{N}}$ telle que, pour tout
   $k \geqslant 1$, toute fonction $f$ définie sur $\mathbb{R}$ et tout réel $x$,
$$(T_k(f))(x) = u_0 f(x) + u_1 f(x+1) + u_2 f(x+2) + \cdots + u_{2^k - 1} f(x + 2^k - 1).$$

On note désormais $(u_n)$ la suite de signes obtenue à la question 2.

3. Déterminer $u_0, u_1, \ldots, u_7$.
4. Démontrer que, pour tout entier $k \geqslant 0$, il existe un entier relatif $R_k$ tel que,
   pour tout entier $n \geqslant 1$,
$$u_0\,n^k + u_1\,(n+1)^k + \cdots + u_{2^k - 1}\,(n + 2^k - 1)^k = R_k.$$
5. Démontrer que, pour tout entier $k \geqslant 1$, $R_k = -k\,2^{k-1} R_{k-1}$. En déduire une
   expression de $R_k$ en fonction de $k$.

## Hints

1. **Question 1.** Il suffit de traiter $P(x) = x^j$ pour $j \leqslant d$. Développer
   $(x + a)^j$ avec la formule du binôme.
2. **Question 2.** Écrire $T_1(f)$, puis $T_2(f)$ en remplaçant $f$ par $T_1(f)$ dans la
   définition de $\Delta_2$. Comment les signes du second bloc se déduisent-ils de ceux du premier ?
3. **Question 2.** Poser $u_0 = 1$ et, pour $2^{k-1} \leqslant i < 2^k$,
   $u_i = -u_{i - 2^{k-1}}$, puis raisonner par récurrence sur $k$.
4. **Question 4.** La somme du membre de gauche est $T_k(p)(n)$ avec $p(x) = x^k$. Appliquer
   $k$ fois la question 1.
5. **Question 5.** La fonction $g = T_{k-1}(p)$ est de degré au plus $1$ : $g(x) = \alpha x + \beta$.
   Exprimer $R_k$ à l'aide de $\alpha$.
6. **Question 5.** Pour trouver $\alpha = g(x+1) - g(x)$, remarquer que
   $g(x) - g(x+1) = T_{k-1}(\Delta_1(p))(x)$, et que $\Delta_1(p)(x) = -k\,x^{k-1}$ plus
   des termes de degré au plus $k - 2$.

## Solution

**1.** Écrivons $P(x) = a_0 + a_1 x + \cdots + a_d x^d$. Alors

$$\Delta_a(P)(x) = \sum_{j=0}^{d} a_j (x^j - (x+a)^j).$$

Pour $j = 0$, le terme $x^0 - (x+a)^0$ est nul. Pour $j \geqslant 1$, la formule du binôme donne

$$(x+a)^j = x^j + \binom{j}{1} a\,x^{j-1} + \binom{j}{2} a^2 x^{j-2} + \cdots + a^j,$$

donc $x^j - (x+a)^j = -\binom{j}{1} a\,x^{j-1} - \cdots - a^j$. C'est une fonction polynomiale de
degré au plus $j - 1 \leqslant d - 1$, et ses coefficients sont entiers car les $\binom{j}{i}$ et
les puissances de $a$ le sont. En multipliant par les entiers $a_j$ et en ajoutant, on obtient le
résultat.

**Conclusion :** $\Delta_a(P)$ est polynomiale à coefficients entiers, de degré au plus $d - 1$.

On note aussi que si $P$ est constante, égale à $c$, alors $\Delta_a(P) = c - c = 0$.

**2.** Définissons $(u_n)$ par $u_0 = 1$ et, pour tout $k \geqslant 1$ et tout $i$ tel que
$2^{k-1} \leqslant i < 2^k$, $u_i = -u_{i - 2^{k-1}}$. Chaque $u_i$ est ainsi défini à partir d'un
terme d'indice plus petit, et c'est un signe. Montrons par récurrence sur $k \geqslant 1$ la
formule annoncée.

*Initialisation.* $T_1(f)(x) = f(x) - f(x+1)$, et $u_0 = 1$, $u_1 = -u_0 = -1$.

*Hérédité.* Supposons la formule vraie au rang $k$. Posons $h = 2^k$. Alors

$$T_{k+1}(f)(x) = T_k(f)(x) - T_k(f)(x + h) = \sum_{i=0}^{h-1} u_i f(x+i) + \sum_{i=0}^{h-1} (-u_i)\, f(x + h + i).$$

Dans la seconde somme, $-u_i = u_{h+i}$ par définition (car $h \leqslant h + i < 2h = 2^{k+1}$).
En posant $j = h + i$, elle s'écrit $\sum_{j=h}^{2h-1} u_j f(x+j)$, et les deux sommes réunies
donnent $\sum_{j=0}^{2^{k+1}-1} u_j f(x+j)$.

**Conclusion :** cette suite de signes convient pour tout $k \geqslant 1$.

**3.** $u_0 = 1$, $u_1 = -1$ ; puis $u_2 = -u_0 = -1$, $u_3 = -u_1 = 1$ ; puis
$u_4 = -u_0$, $u_5 = -u_1$, $u_6 = -u_2$, $u_7 = -u_3$. Donc

$$(u_0, \ldots, u_7) = (1, -1, -1, 1, -1, 1, 1, -1).$$

**4.** Pour $k = 0$, la somme se réduit à $u_0\,n^0 = 1$ : on prend $R_0 = 1$.

Soit $k \geqslant 1$ et $p(x) = x^k$, polynomiale à coefficients entiers de degré au plus $k$.
D'après la question 2, le membre de gauche vaut $T_k(p)(n)$. Or $T_1(p), T_2(p), \ldots, T_k(p)$
s'obtiennent en appliquant successivement $\Delta_1, \Delta_2, \ldots, \Delta_{2^{k-1}}$, avec des
entiers $2^{j}$. Par la question 1, $T_j(p)$ est polynomiale à coefficients entiers de degré au
plus $k - j$. Donc $T_k(p)$ est de degré au plus $0$ : c'est une constante entière, notée $R_k$.

**Conclusion :** $u_0\,n^k + \cdots + u_{2^k - 1}(n + 2^k - 1)^k = R_k$ pour tout $n$, et même
pour tout réel $n$.

**5.** Soit $k \geqslant 1$ et $p(x) = x^k$. D'après la question 4 (étape $j = k - 1$),
$g = T_{k-1}(p)$ est polynomiale de degré au plus $1$ : $g(x) = \alpha x + \beta$. Alors

$$R_k = T_k(p)(x) = g(x) - g(x + 2^{k-1}) = -2^{k-1}\alpha.$$

*Calcul de $\alpha$.* D'une part $g(x) - g(x+1) = -\alpha$. D'autre part, avec la formule de la
question 2 (ou $T_0(f) = f$ si $k = 1$),

$$g(x) - g(x+1) = \sum_{i} u_i (p(x+i) - p(x+i+1)) = T_{k-1}(q)(x), \qquad \text{où } q = \Delta_1(p).$$

Par la formule du binôme, $q(x) = x^k - (x+1)^k = -k\,x^{k-1} + r(x)$, où $r$ est polynomiale
à coefficients entiers de degré au plus $k - 2$ (et $r = 0$ si $k = 1$). La formule de la
question 2 montre que $T_{k-1}$ respecte les sommes et les multiplications par une constante. Or
$T_{k-1}(r) = 0$ : en appliquant $k - 1$ fois $\Delta$, la question 1 fait descendre le degré
jusqu'à $0$ au plus tard après $k - 2$ étapes, et la dernière étape transforme une constante en
$0$. Il reste

$$T_{k-1}(q) = -k\,T_{k-1}(x \mapsto x^{k-1}) = -k\,R_{k-1}.$$

Donc $-\alpha = -k R_{k-1}$, soit $\alpha = k R_{k-1}$, et

$$R_k = -k\,2^{k-1} R_{k-1}.$$

*Expression de $R_k$.* En multipliant ces égalités pour $1, 2, \ldots, k$, avec $R_0 = 1$ :

$$R_k = (-1)^k \times (1 \times 2 \times \cdots \times k) \times 2^{0 + 1 + \cdots + (k-1)} = (-1)^k\, k!\; 2^{k(k-1)/2}.$$

On vérifie : $R_1 = -1$ (en effet $n - (n+1) = -1$), $R_2 = 4$, $R_3 = -48$.

**Bilan.** Avec la suite de signes $1, -1, -1, 1, -1, 1, 1, -1, \ldots$ (chaque bloc suivi de son
opposé), la somme signée des puissances $k$-ièmes de $2^k$ entiers consécutifs ne dépend pas du
point de départ : elle vaut $R_k = (-1)^k\, k!\; 2^{k(k-1)/2}$, qui n'est jamais nul.

## Going further

- Vérifier à la main que $n^3 - (n+1)^3 - (n+2)^3 + (n+3)^3 - (n+4)^3 + (n+5)^3 + (n+6)^3 - (n+7)^3 = -48$.
- On peut montrer que $u_i = (-1)^{s(i)}$, où $s(i)$ est le nombre de chiffres $1$ dans
  l'écriture de $i$ en base $2$. C'est la suite de Thue-Morse.
- Dans la suite du sujet, ces blocs servaient à montrer que tout entier $M \geqslant 1$ s'écrit
  $\pm 1^k \pm 2^k \pm \cdots \pm n^k$ : voir l'exercice 40966.
