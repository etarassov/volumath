---
id: "40565"
title: "Un dé et les racines cubiques de l'unité"
grade: 12
theme: probability-statistics
difficulty: 2
duration_min: 45
tags: [nombres-complexes, maths-expertes, racines-de-lunite, triangle-equilateral, loi-binomiale, probabilite-conditionnelle, coefficients-binomiaux, marche-aleatoire]
adapted_from: null
see_also: ["40566"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2016, mathématiques, série S"
  reference: "cg-2016-s-sujet.pdf, problème III « Allons dans ℂ », questions 1 à 4"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2016.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2016-s-sujet.pdf"
---

## Statement

Dans tout l'exercice, $j$ désigne le nombre complexe $e^{2i\pi/3}$. La probabilité d'un événement
$A$ est notée $P(A)$.

1. a) Vérifier que $j^3 = 1$ et que $1 + j + j^2 = 0$.

   b) Que peut-on dire du triangle dont les sommets ont pour affixes $1$, $j$ et $j^2$ ?

   c) Montrer que si $a$, $b$, $c$ sont des nombres réels, alors $a + bj + cj^2 = 0$ si et seulement
   si $a = b = c$.

On lance un dé équilibré dont les six faces sont numérotées de $1$ à $6$. On note $F$ la variable
aléatoire donnant le numéro obtenu, et $Z$ la variable aléatoire $j^F$.

2. Montrer que $Z$ prend ses valeurs dans $\{1, j, j^2\}$ et que
   $P(Z = 1) = P(Z = j) = P(Z = j^2) = \frac{1}{3}$.

Soit $n \geqslant 1$ un entier. On lance le dé $n$ fois, les lancers étant indépendants. On note
$F_k$ le résultat du $k$-ième lancer, $Z_k = j^{F_k}$, puis
$$S_n = Z_1 + Z_2 + \cdots + Z_n \qquad \text{et} \qquad p_n = P(S_n = 0).$$
On note $U_n$ le nombre d'entiers $k$ entre $1$ et $n$ tels que $Z_k = 1$, $V_n$ le nombre de ceux
tels que $Z_k = j$, et $W_n$ le nombre de ceux tels que $Z_k = j^2$.

3. a) Que vaut $U_n + V_n + W_n$ ?

   b) Montrer que $S_n = U_n + jV_n + j^2 W_n$.

   c) Montrer que $S_n = 0$ si et seulement si $U_n = V_n = W_n$.

   d) En déduire que si $n$ n'est pas un multiple de $3$, alors $p_n = 0$.

4. On suppose dans cette question que $n = 3m$, où $m$ est un entier naturel non nul.

   a) Montrer que la variable aléatoire $U_n$ suit une loi binomiale, dont on précisera les
   paramètres.

   b) En déduire que $P(U_n = m) = \binom{3m}{m} \frac{2^{2m}}{3^{3m}}$.

   c) On note $P_{U_n = m}(V_n = m)$ la probabilité de l'événement $V_n = m$ sachant que
   $U_n = m$. Montrer que $P_{U_n = m}(V_n = m) = \frac{1}{2^{2m}} \binom{2m}{m}$.

   d) En déduire que $p_{3m} = \frac{1}{3^{3m}} \binom{3m}{m} \binom{2m}{m}$.

## Hints

1. **Question 1b.** Calculer les longueurs des trois côtés, ou se demander ce que fait la
   multiplication par $j$ aux trois sommets.
2. **Question 1c.** Grâce à la question 1a, remplacer $j^2$ par $-1 - j$, puis regarder la partie
   imaginaire.
3. **Question 2.** Comme $j^3 = 1$, la valeur de $j^F$ ne dépend que du reste de $F$ dans la
   division par $3$.
4. **Question 4c.** Calculer d'abord la probabilité de l'événement « $U_n = m$ et $V_n = m$ » : chaque
   suite de $3m$ valeurs prises dans $\{1, j, j^2\}$ a la même probabilité. Combien de ces suites
   contiennent exactement $m$ fois $1$ et $m$ fois $j$ ?
5. **Question 4d.** D'après la question 3c, l'événement $S_{3m} = 0$ est l'événement « $U_n = m$ et
   $V_n = m$ ».

## Solution

**1. a)** On a $j^3 = e^{3 \times 2i\pi/3} = e^{2i\pi} = 1$. Ensuite
$(j - 1)(1 + j + j^2) = j + j^2 + j^3 - 1 - j - j^2 = j^3 - 1 = 0$, et $j \neq 1$, donc
$1 + j + j^2 = 0$.

On peut aussi calculer : $j = -\frac{1}{2} + i\frac{\sqrt{3}}{2}$ et
$j^2 = e^{4i\pi/3} = -\frac{1}{2} - i\frac{\sqrt{3}}{2}$, dont la somme avec $1$ est nulle.

**b)** Avec les formes algébriques ci-dessus :
$$\lvert 1 - j \rvert = \left\lvert \frac{3}{2} - i\frac{\sqrt{3}}{2} \right\rvert = \sqrt{\frac{9}{4} + \frac{3}{4}} = \sqrt{3}, \qquad \lvert j - j^2 \rvert = \lvert i\sqrt{3} \rvert = \sqrt{3},$$
et $\lvert j^2 - 1 \rvert = \left\lvert -\frac{3}{2} - i\frac{\sqrt{3}}{2} \right\rvert = \sqrt{3}$.

**Conclusion :** le triangle est équilatéral, de côté $\sqrt{3}$, inscrit dans le cercle de centre
$O$ et de rayon $1$. (Autre argument : la multiplication par $j$ est la rotation de centre $O$ et
d'angle $\frac{2\pi}{3}$, et elle envoie $1$ sur $j$, $j$ sur $j^2$ et $j^2$ sur $j^3 = 1$.)

**c)** Si $a = b = c$, alors $a + bj + cj^2 = a(1 + j + j^2) = 0$.

Réciproquement, supposons $a + bj + cj^2 = 0$ avec $a$, $b$, $c$ réels. Comme $j^2 = -1 - j$,
$$a + bj + cj^2 = (a - c) + (b - c)\,j = (a - c) - \frac{b - c}{2} + i\,\frac{\sqrt{3}}{2}\,(b - c).$$
Cette expression est nulle, donc sa partie imaginaire aussi : $b - c = 0$. Il reste $a - c = 0$.

**Conclusion :** $a + bj + cj^2 = 0$ si et seulement si $a = b = c$.

**2.** Comme $j^3 = 1$, on a $j^4 = j$, $j^5 = j^2$ et $j^6 = 1$. Ainsi
$$Z = 1 \text{ si } F \in \{3, 6\}, \qquad Z = j \text{ si } F \in \{1, 4\}, \qquad Z = j^2 \text{ si } F \in \{2, 5\}.$$
Les trois nombres $1$, $j$, $j^2$ sont distincts, et chacun correspond à deux faces sur six. Le dé
est équilibré, donc $P(Z = 1) = P(Z = j) = P(Z = j^2) = \frac{2}{6} = \frac{1}{3}$.

**3. a)** Chaque $Z_k$ prend exactement une des trois valeurs $1$, $j$, $j^2$, donc
$U_n + V_n + W_n = n$.

**b)** Dans la somme $S_n = Z_1 + \cdots + Z_n$, regroupons les termes égaux : il y a $U_n$ termes
égaux à $1$, $V_n$ égaux à $j$ et $W_n$ égaux à $j^2$. Donc $S_n = U_n + jV_n + j^2 W_n$.

**c)** $U_n$, $V_n$, $W_n$ sont des nombres réels (des entiers), donc d'après la question 1c,
$S_n = U_n + jV_n + j^2 W_n = 0$ si et seulement si $U_n = V_n = W_n$.

**d)** Si $S_n = 0$, alors $U_n = V_n = W_n$, et $n = U_n + V_n + W_n = 3U_n$ est un multiple de $3$.
Si $n$ n'est pas un multiple de $3$, l'événement $S_n = 0$ est donc impossible : $p_n = 0$.

**4. a)** Les lancers sont indépendants, et à chaque lancer l'événement « $Z_k = 1$ » a la
probabilité $\frac{1}{3}$ (question 2). $U_n$ compte le nombre de réalisations de cet événement au
cours de $3m$ épreuves indépendantes et identiques.

**Conclusion :** $U_n$ suit la loi binomiale de paramètres $3m$ et $\frac{1}{3}$.

**b)** Par la formule de la loi binomiale,
$$P(U_n = m) = \binom{3m}{m} \left(\frac{1}{3}\right)^{m} \left(\frac{2}{3}\right)^{2m} = \binom{3m}{m} \frac{2^{2m}}{3^{3m}}.$$

**c)** Le résultat de l'expérience est la suite $(Z_1, \ldots, Z_{3m})$ de $3m$ valeurs prises dans
$\{1, j, j^2\}$. Les $Z_k$ sont indépendantes et chacune prend chaque valeur avec la probabilité
$\frac{1}{3}$, donc chacune des $3^{3m}$ suites possibles a la probabilité $\frac{1}{3^{3m}}$.

Comptons les suites qui contiennent exactement $m$ fois $1$ et $m$ fois $j$, donc aussi $m$ fois
$j^2$. On choisit les $m$ places des $1$ parmi les $3m$ places : $\binom{3m}{m}$ choix. Puis on
choisit les $m$ places des $j$ parmi les $2m$ places restantes : $\binom{2m}{m}$ choix. Les $m$
places qui restent reçoivent $j^2$. Donc
$$P(U_n = m \text{ et } V_n = m) = \frac{1}{3^{3m}} \binom{3m}{m} \binom{2m}{m}.$$
Par définition de la probabilité conditionnelle, avec la question 4b,
$$P_{U_n = m}(V_n = m) = \frac{P(U_n = m \text{ et } V_n = m)}{P(U_n = m)} = \frac{\binom{3m}{m}\binom{2m}{m}}{3^{3m}} \times \frac{3^{3m}}{\binom{3m}{m}\, 2^{2m}} = \frac{1}{2^{2m}} \binom{2m}{m}.$$

On peut le comprendre ainsi : sachant que $m$ lancers ont donné $1$, chacun des $2m$ autres lancers
a donné $j$ ou $j^2$ avec la même chance, comme $2m$ lancers d'une pièce.

**d)** D'après la question 3c, $S_{3m} = 0$ équivaut à $U_n = V_n = W_n$. Comme
$U_n + V_n + W_n = 3m$, cela équivaut à « $U_n = m$ et $V_n = m$ » (et alors $W_n = m$). Donc
$$p_{3m} = P(U_n = m) \times P_{U_n = m}(V_n = m) = \binom{3m}{m} \frac{2^{2m}}{3^{3m}} \times \frac{1}{2^{2m}}\binom{2m}{m} = \frac{1}{3^{3m}} \binom{3m}{m}\binom{2m}{m}.$$

Par exemple, $p_3 = \frac{3 \times 2}{27} = \frac{2}{9}$ et $p_6 = \frac{15 \times 6}{729} = \frac{10}{81}$.

**Bilan.** La somme $S_n$ ne peut être nulle que si $n$ est un multiple de $3$, et dans ce cas, il
faut que les trois valeurs $1$, $j$, $j^2$ soient sorties autant de fois chacune. On en déduit la
formule exacte $p_{3m} = \frac{1}{3^{3m}} \binom{3m}{m}\binom{2m}{m}$.

## Going further

- Le point d'affixe $S_k$ se déplace dans le plan : à chaque lancer, il fait un pas de longueur $1$
  dans l'une des trois directions $1$, $j$, $j^2$. La probabilité $p_n$ est celle d'être revenu au
  point de départ après $n$ pas.
- Vérifier que, pour tout $m \geqslant 1$,
  $$\frac{p_{3m+3}}{p_{3m}} = \frac{(3m+2)(3m+1)}{9(m+1)^2}.$$
- Dans la suite du sujet, on montrait que le point revient presque sûrement à son point de départ :
  la probabilité qu'il y soit revenu au moins une fois avant le $n$-ième pas tend vers $1$. Voir
  l'exercice 40566.
