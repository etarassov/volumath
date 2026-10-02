---
id: "11429"
title: "Des compagnies aériennes et k + 2 groupes de villes"
grade: 10
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [graphe, coloriage, absurde, double-comptage]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 4 (combinatoire)"
  reference: "2022-02_sujet-envoi-4.pdf, Exercices Juniors, exercice 9 ; corrigé 2022-04_corrige-envoi-4.pdf ; le corrigé écrit b² − b + 5 au lieu de b² − b + 6, sans effet sur la conclusion"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/sujet-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-02_sujet-envoi-4.pdf"
---

## Statement

Un pays compte $n \geqslant 1$ villes et $k \geqslant 1$ compagnies aériennes. Certaines paires de
villes sont reliées par une **ligne** aérienne, qui fonctionne dans les deux sens. Chaque ligne
appartient à une seule compagnie.

On sait que si une compagnie possède deux lignes, ces deux lignes ont une ville en commun.

Montrer qu'on peut répartir les $n$ villes en **au plus $k + 2$ groupes**, de sorte que deux villes
d'un même groupe ne soient jamais reliées par une ligne.

## Hints

1. Dessine les lignes d'une seule compagnie. Quelles formes sont possibles ? Essaie avec deux lignes,
   puis trois, puis quatre.
2. Les lignes d'une compagnie ont toutes une ville en commun, ou bien elles forment un triangle.
   Pour une compagnie du premier type, que se passe-t-il si l'on met cette ville commune seule dans
   un groupe ?
3. Il reste des compagnies en triangle, disons $b$, avec au plus $3b$ lignes. Prends une répartition
   des villes restantes avec le **moins de groupes possible**. Entre deux de ses groupes, y a-t-il
   forcément une ligne ?
4. Avec $m$ groupes, il y a $\dfrac{m(m-1)}{2}$ paires de groupes. Compare avec $3b$.

## Solution

### Étape 1 : la forme des lignes d'une compagnie

Prenons une compagnie qui possède au moins une ligne, et une de ses lignes, entre les villes $A$ et
$B$. Toute autre ligne de la compagnie a une ville commune avec celle-ci : elle part de $A$ ou de $B$.

- Si toutes les lignes de la compagnie passent par $A$, on dit que la compagnie est une **étoile** de
  centre $A$. De même si toutes passent par $B$.
- Sinon, la compagnie a une ligne $A$–$C$ qui ne passe pas par $B$, et une ligne $B$–$D$ qui ne passe
  pas par $A$. Ces deux lignes ont une ville en commun. Ce n'est ni $A$ (la seconde ne passe pas par
  $A$) ni $B$ (la première ne passe pas par $B$), donc $C = D$. La compagnie possède alors les trois
  lignes $A$–$B$, $A$–$C$ et $B$–$C$.

  Elle n'en a pas d'autre. Une autre ligne partirait de $A$ ou de $B$, disons de $A$ vers une ville
  $E$. Elle devrait avoir une ville commune avec $B$–$C$, donc $E = B$ ou $E = C$ : c'est une ligne
  déjà comptée. On dit que la compagnie est un **triangle**.

Une compagnie qui n'a qu'une seule ligne est une étoile : on prend pour centre l'une des deux villes,
au choix.

Appelons $a$ le nombre de compagnies étoiles et $b$ le nombre de compagnies triangles. Les compagnies
sans ligne ne gênent personne, donc $a + b \leqslant k$.

### Étape 2 : régler le cas des étoiles

Pour chaque compagnie étoile, on met son centre **seul dans un groupe**. Si plusieurs étoiles ont le
même centre, il n'y a qu'un groupe pour lui. Cela fait au plus $a$ groupes, chacun d'une seule ville,
donc sans ligne à l'intérieur.

Toute ligne d'une compagnie étoile passe par le centre de cette étoile. Elle relie donc une ville de
ces petits groupes à une autre ville : elle ne peut pas relier deux villes d'un même groupe, quels
que soient les groupes que l'on fera ensuite avec les autres villes.

Il reste à répartir les autres villes. Les lignes qui relient deux de ces villes appartiennent toutes
à des compagnies triangles : il y en a **au plus $3b$**.

### Étape 3 : au plus $b + 2$ groupes pour les villes restantes

Parmi toutes les façons de répartir les villes restantes en groupes sans ligne à l'intérieur, il en
existe au moins une : mettre chaque ville seule. Choisissons-en une qui utilise **le moins de groupes
possible**, disons $m$ groupes.

**Entre deux groupes quelconques, il y a au moins une ligne.** Sinon, on pourrait réunir ces deux
groupes en un seul : aucune ligne ne serait à l'intérieur, et on aurait un groupe de moins, ce qui
contredit le choix de $m$.

Il y a $\dfrac{m(m-1)}{2}$ paires de groupes, et chaque ligne relie au plus une paire de groupes. Il y
a donc au moins $\dfrac{m(m-1)}{2}$ lignes entre les villes restantes, et au plus $3b$ :

$$\frac{m(m-1)}{2} \leqslant 3b .$$

**Supposons que $m \geqslant b + 3$.** Alors $m - 1 \geqslant b + 2$, et

$$\frac{(b+3)(b+2)}{2} \leqslant \frac{m(m-1)}{2} \leqslant 3b, \qquad \text{donc} \qquad b^2 + 5b + 6 \leqslant 6b, \qquad \text{donc} \qquad b^2 - b + 6 \leqslant 0 .$$

Mais $b^2 - b = b(b - 1)$ est le produit de deux entiers consécutifs, positifs ou nuls, donc
$b^2 - b \geqslant 0$ et $b^2 - b + 6 \geqslant 6$. C'est une contradiction.

Donc $m \leqslant b + 2$.

### Conclusion

On a réparti toutes les villes en au plus $a$ groupes pour les centres des étoiles, plus au plus
$b + 2$ groupes pour les autres, soit au plus

$$a + b + 2 \leqslant k + 2$$

groupes, et deux villes d'un même groupe ne sont jamais reliées par une ligne. **On peut donc
répartir les villes en au plus $k + 2$ groupes**, comme demandé.

## Going further

Le nombre $k + 2$ ne peut pas être remplacé par $k + 1$ pour tout $k$. Avec $k = 1$ et une seule
compagnie triangle entre trois villes, il faut $3 = k + 2$ groupes, puisque les trois villes sont
reliées deux à deux.
