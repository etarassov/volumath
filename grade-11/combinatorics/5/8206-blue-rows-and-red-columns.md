---
id: "8206"
title: "Lignes à majorité bleue, colonnes à majorité rouge"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [double comptage, grille, majorite, construction, inegalites]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2019, Coupe Animath de printemps 2019"
  reference: "PolycopieV1-1.pdf, chapitre II « Coupe Animath de printemps 2019 », énoncés destinés aux élèves de lycée, exercice 8"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/08/PolycopieV1-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/PolycopieV1-1.pdf"
---

## Statement

Soient $m$ et $n$ deux entiers **impairs**, tous deux supérieurs ou égaux à $3$.

On colorie chaque case d'une grille de $m$ lignes et $n$ colonnes en bleu ou en rouge.

On note :

- $A$ le nombre de lignes où les cases bleues sont **strictement majoritaires** ;
- $B$ le nombre de colonnes où les cases rouges sont **strictement majoritaires**.

Comme $m$ et $n$ sont impairs, il n'y a jamais d'égalité : dans chaque ligne, l'une des deux couleurs est majoritaire, et de même dans chaque colonne.

Quelle est la plus grande valeur possible de $A + B$ ?

## Hints

1. Fais d'abord un petit cas à la main, par exemple $m = n = 3$, pour deviner la réponse. Essaie de « pousser » $A$ et $B$ le plus haut possible en même temps.
2. Peut-on avoir $A = m$ **et** $B = n$ ? Compte alors le nombre total de cases bleues, puis le nombre total de cases rouges, et compare.
3. Cela montre déjà que $A + B \le m + n - 1$. Pour la construction, vise $A = m - 1$ et $B = n - 1$ : il faut sacrifier une ligne et une colonne.
4. Une idée de construction : mets du bleu en haut à gauche et en bas à droite, du rouge ailleurs, et réserve la ligne du milieu.
5. Pour écarter $A + B = m + n - 1$, on peut supposer $A = m$ (l'autre cas, $B = n$, se traite en échangeant le rôle des lignes et des colonnes **et** celui des couleurs).
6. Avec $A = m$, chaque ligne contient au moins $\tfrac{n+1}{2}$ cases bleues. Déduis-en une **majoration** du nombre total de cases rouges. Puis, avec $B = n-1$, déduis-en une **minoration** du même nombre. Les deux se contredisent.

## Solution

La réponse est

$$A + B = m + n - 2 .$$

**Première partie : cette valeur est atteinte.**

Voici la construction, écrite ici pour $m = 5$ et $n = 7$, avec `B` pour bleu et `R` pour rouge :

```
B B B B R R R
B B B B R R R
R R R R R R R
R R R B B B B
R R R B B B B
```

Regardons ce qu'elle donne.

*Les lignes.* Les deux lignes du haut contiennent $4$ cases bleues sur $7$ : le bleu y est majoritaire. Idem pour les deux lignes du bas. La ligne du milieu est entièrement rouge. Donc $A = 4 = m - 1$.

*Les colonnes.* Les colonnes $1$, $2$ et $3$ contiennent $2$ cases bleues et $3$ rouges : le rouge y est majoritaire. Les colonnes $5$, $6$ et $7$ aussi. Seule la colonne $4$, celle du milieu, contient $4$ bleues et $1$ rouge. Donc $B = 6 = n - 1$.

Au total $A + B = 4 + 6 = 10 = m + n - 2$.

*Le cas général.* La construction se décrit ainsi pour $m$ et $n$ impairs quelconques. Posons $p = \tfrac{m-1}{2}$ et $q = \tfrac{n+1}{2}$.

- Les $p$ premières lignes sont bleues sur les colonnes $1$ à $q$, rouges ensuite.
- La ligne du milieu (la $(p+1)$-ième) est entièrement rouge.
- Les $p$ dernières lignes sont rouges sur les colonnes $1$ à $q - 1$, bleues ensuite.

Vérifions. Une ligne du haut a $q = \tfrac{n+1}{2}$ cases bleues, donc strictement plus que la moitié de $n$ : le bleu y est majoritaire. Une ligne du bas a $n - q + 1 = \tfrac{n+1}{2}$ cases bleues : même conclusion. Donc $A = 2p = m - 1$.

Une colonne $j$ avec $j < q$ est bleue exactement sur les $p$ lignes du haut, donc elle a $p = \tfrac{m-1}{2}$ bleues et $\tfrac{m+1}{2}$ rouges : le rouge y est majoritaire. Une colonne $j$ avec $j > q$ est bleue exactement sur les $p$ lignes du bas : même conclusion. Seule la colonne $q$ échappe au compte : elle est bleue en haut **et** en bas, soit $m - 1$ bleues contre $1$ rouge. Donc $B = n - 1$.

Bilan : $A + B = m + n - 2$.

**Deuxième partie : $A + B = m + n$ est impossible.**

Supposons $A = m$ et $B = n$.

Comme $A = m$, le bleu est majoritaire dans **chaque** ligne. En additionnant sur toutes les lignes, il y a strictement plus de cases bleues que de cases rouges dans toute la grille.

Comme $B = n$, le rouge est majoritaire dans **chaque** colonne. En additionnant sur toutes les colonnes, il y a strictement plus de cases rouges que de cases bleues.

Les deux conclusions se contredisent. Donc $A + B \le m + n - 1$.

**Troisième partie : $A + B = m + n - 1$ est impossible.**

Si $A + B = m + n - 1$, alors, puisque $A \le m$ et $B \le n$, on a soit $A = m$ et $B = n - 1$, soit $A = m - 1$ et $B = n$.

Ces deux cas se déduisent l'un de l'autre : en échangeant les lignes et les colonnes (ce qui transpose la grille) **et** en échangeant les deux couleurs, une configuration du second type devient une configuration du premier type, avec $m$ et $n$ échangés. Il suffit donc de traiter le cas

$$A = m \qquad \text{et} \qquad B = n - 1 ,$$

et on va compter le nombre total $R$ de cases rouges de deux manières.

*Majoration de $R$ par les lignes.* Comme $A = m$, le bleu est majoritaire dans chaque ligne. Une ligne a $n$ cases avec $n$ impair : « majoritaire » veut donc dire au moins $\tfrac{n+1}{2}$ cases bleues. Au total il y a donc au moins $\dfrac{m(n+1)}{2}$ cases bleues, et comme la grille a $mn$ cases,

$$R \ \le\ mn - \frac{m(n+1)}{2} = \frac{2mn - mn - m}{2} = \frac{m(n-1)}{2} .$$

*Minoration de $R$ par les colonnes.* Il y a $n - 1$ colonnes où le rouge est majoritaire. Une colonne a $m$ cases avec $m$ impair, donc chacune de ces colonnes contient au moins $\tfrac{m+1}{2}$ cases rouges. En ne comptant que celles-là,

$$R \ \ge\ \frac{(n-1)(m+1)}{2} .$$

*La contradiction.* En combinant,

$$\frac{(n-1)(m+1)}{2} \ \le\ R \ \le\ \frac{m(n-1)}{2} ,$$

d'où $(n-1)(m+1) \le m(n-1)$. Comme $n \ge 3$, on a $n - 1 > 0$ et on peut diviser par $n-1$ :

$$m + 1 \le m ,$$

ce qui est faux. Le cas $A + B = m + n - 1$ est donc impossible.

**Conclusion.** La plus grande valeur possible est

$$\boxed{A + B = m + n - 2} .$$

## Going further

Que devient le problème si $m$ et $n$ sont **pairs** ? Il faut alors décider ce que signifie « majoritaire » en cas d'égalité. Traiter les deux conventions : majorité stricte, puis majorité large.
