---
id: "7329"
title: "Les entiers académiques"
grade: 10
theme: algebra
difficulty: 4
duration_min: 45
tags: [partition, somme, produit, factorisation, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Saint-Malo 2007 (Olympiades académiques 2004)"
  reference: "stage_ete_2007.pdf, « Les exercices du groupe B », en TD, exercice 39"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2007.pdf"
---

## Statement

Un entier $n \geqslant 2$ est dit **académique** si l'on peut ranger les nombres
$$1, \; 2, \; 3, \; \ldots, \; n$$
dans deux boîtes $S$ et $P$, toutes les deux non vides, chaque nombre allant dans une boîte et une seule, de telle sorte que

$$\text{la somme des nombres de } S \;=\; \text{le produit des nombres de } P .$$

Par exemple, $3$ est académique : on met $1$ et $2$ dans $S$, et $3$ tout seul dans $P$. La somme de $S$ vaut $1 + 2 = 3$, le produit de $P$ vaut $3$ : c'est gagné.

**Déterminer tous les entiers académiques.**

## Hints

1. Commence par essayer à la main $n = 2$, $n = 4$, $n = 5$, $n = 6$. Deux de ces quatre valeurs marchent.
2. Pour les grands $n$, il ne faut pas chercher au hasard : il faut une **recette** qui marche pour tous. Essaie de mettre très peu de nombres dans la boîte $P$, par exemple trois.
3. Pose $P = \{1, a, b\}$. Que vaut le produit de $P$ ? Que vaut la somme de $S$, sachant que $1 + 2 + \cdots + n = \frac{n(n+1)}{2}$ ?
4. Tu obtiens une équation en $a$ et $b$. Ajoute $1$ des deux côtés : le membre de gauche se factorise très joliment.
5. Il te reste à trouver deux facteurs de $\frac{n(n+1)}{2}$. Regarde séparément le cas $n$ pair et le cas $n$ impair : dans chaque cas, l'un des deux nombres $n$ et $n+1$ est celui qu'on divise par $2$.

## Solution

### Les petites valeurs

**$n = 2$.** Les deux répartitions possibles sont $P = \{1\}, S = \{2\}$ (produit $1$, somme $2$) et $P = \{2\}, S = \{1\}$ (produit $2$, somme $1$). Aucune ne marche : **$2$ n'est pas académique**.

**$n = 3$.** $S = \{1, 2\}$ et $P = \{3\}$ donnent $3 = 3$ : **$3$ est académique**.

**$n = 4$.** Ici la somme totale vaut $1+2+3+4 = 10$. Passons en revue toutes les boîtes $P$ possibles, en notant $p$ son produit et $s$ la somme de ce qui reste :

| $P$ | $p$ | $s$ | | $P$ | $p$ | $s$ |
|---|---|---|---|---|---|---|
| $\{1\}$ | $1$ | $9$ | | $\{2,3\}$ | $6$ | $5$ |
| $\{2\}$ | $2$ | $8$ | | $\{2,4\}$ | $8$ | $4$ |
| $\{3\}$ | $3$ | $7$ | | $\{3,4\}$ | $12$ | $3$ |
| $\{4\}$ | $4$ | $6$ | | $\{1,2,3\}$ | $6$ | $4$ |
| $\{1,2\}$ | $2$ | $7$ | | $\{1,2,4\}$ | $8$ | $3$ |
| $\{1,3\}$ | $3$ | $6$ | | $\{1,3,4\}$ | $12$ | $2$ |
| $\{1,4\}$ | $4$ | $5$ | | $\{2,3,4\}$ | $24$ | $1$ |

Jamais $p = s$ : **$4$ n'est pas académique**.

### Tous les entiers $n \geqslant 5$ sont académiques

Cherchons une recette générale. Mettons seulement trois nombres dans la boîte $P$, dont le $1$, qui ne coûte rien dans un produit :
$$P = \{1, a, b\} \quad \text{avec} \quad 1 < a < b \leqslant n .$$

Le produit de $P$ vaut $1 \times a \times b = ab$.

La boîte $S$ contient tout le reste, donc sa somme vaut
$$\frac{n(n+1)}{2} - 1 - a - b .$$

La condition « somme $=$ produit » s'écrit donc
$$ab = \frac{n(n+1)}{2} - 1 - a - b ,$$
c'est-à-dire
$$ab + a + b + 1 = \frac{n(n+1)}{2} .$$

Le membre de gauche se factorise :
$$ab + a + b + 1 = a(b+1) + (b+1) = (a+1)(b+1) .$$

Il nous faut donc simplement écrire $\dfrac{n(n+1)}{2}$ comme un produit de deux facteurs $(a+1)$ et $(b+1)$ convenables. Or $\dfrac{n(n+1)}{2}$ se présente tout seul comme un produit : parmi $n$ et $n+1$, l'un est pair, et c'est lui qu'on divise par $2$.

**Si $n$ est pair**, on écrit $\dfrac{n(n+1)}{2} = \dfrac{n}{2} \times (n+1)$, donc on choisit
$$a + 1 = \frac{n}{2}, \qquad b + 1 = n + 1, \qquad \text{soit} \qquad a = \frac{n}{2} - 1, \quad b = n .$$

**Si $n$ est impair**, c'est $n+1$ qui est pair, et on écrit $\dfrac{n(n+1)}{2} = n \times \dfrac{n+1}{2}$, donc
$$a + 1 = \frac{n+1}{2}, \qquad b + 1 = n, \qquad \text{soit} \qquad a = \frac{n-1}{2}, \quad b = n - 1 .$$

**Vérifions que ces choix sont licites**, c'est-à-dire que $1 < a < b \leqslant n$.

- $n$ pair, $n \geqslant 6$ : $a = \frac{n}{2} - 1 \geqslant 2$, donc $a > 1$ ; et $a < n = b \leqslant n$.
- $n$ impair, $n \geqslant 5$ : $a = \frac{n-1}{2} \geqslant 2$, donc $a > 1$ ; et $a = \frac{n-1}{2} < n - 1 = b$ dès que $n > 1$, avec $b \leqslant n$.

Tout entier $n \geqslant 5$ est donc académique.

**Deux exemples, pour voir la recette tourner.**

- $n = 5$ (impair) : $a = 2$, $b = 4$, donc $P = \{1, 2, 4\}$ et $S = \{3, 5\}$. Produit $8$, somme $8$.
- $n = 6$ (pair) : $a = 2$, $b = 6$, donc $P = \{1, 2, 6\}$ et $S = \{3, 4, 5\}$. Produit $12$, somme $12$.

### Conclusion

$$\boxed{\text{Les entiers académiques sont } 3 \text{ et tous les entiers } n \geqslant 5 .}$$

Autrement dit, les seuls entiers non académiques sont $2$ et $4$.

## Going further

1. Pour $n = 10$, la recette donne $P = \{1, 4, 10\}$. Trouve une **autre** répartition qui marche pour $n = 10$.
2. Le nombre de répartitions qui marchent augmente-t-il avec $n$ ? Compte-les pour $n = 5$, $6$, $7$, $8$.
3. Pour $n = 10$, la réponse à la question 1 met le $1$ dans la boîte $S$. Montre qu'au contraire, pour $n = 6$, toute répartition qui marche place forcément le $1$ dans la boîte $P$.
