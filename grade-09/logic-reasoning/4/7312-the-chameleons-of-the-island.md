---
id: "7312"
title: "Les caméléons de l'île déserte"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [invariant, modulo, couleurs, processus]
adapted_from: null
see_also: ["8852"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2007"
  reference: "stage_ete_2007.pdf, « En colle », stratégies de base, exercice 20 (donné à Amélie Héliou et Adrien Laroche)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2007.pdf"
---

## Statement

Sur une île déserte vivent $34$ caméléons : $7$ jaunes, $10$ rouges et $17$ verts.

Quand deux caméléons **de couleurs différentes** se rencontrent, ils prennent tous les deux la troisième couleur. (Par exemple, un jaune et un rouge qui se rencontrent deviennent tous les deux verts.) Quand deux caméléons de la même couleur se rencontrent, il ne se passe rien.

Au bout d'un an, tous les caméléons sont devenus de la même couleur.

Laquelle ?

## Hints

1. Regarde une rencontre et note comment les trois effectifs changent. Une couleur perd un caméléon, une autre en perd un, et la troisième en gagne deux.
2. Les effectifs eux-mêmes changent tout le temps. Cherche plutôt une quantité **construite à partir des effectifs** qui, elle, ne change pas ou change très peu.
3. Essaie la **différence** entre deux effectifs, par exemple (nombre de jaunes) $-$ (nombre de rouges). De combien varie-t-elle à chaque type de rencontre ?
4. Tu devrais trouver que cette différence varie de $0$, de $+3$ ou de $-3$. Que peut-on en déduire sur son reste dans la division par $3$ ?
5. Calcule les trois différences au départ, regarde leurs restes modulo $3$, et compare avec ce que vaudrait chaque différence si tous les caméléons finissaient d'une couleur donnée.

## Solution

Notons $j$, $r$ et $v$ les nombres de caméléons jaunes, rouges et verts. Au départ,
$$j = 7, \qquad r = 10, \qquad v = 17 .$$

**Ce que fait une rencontre.**

Il y a trois types de rencontres entre caméléons de couleurs différentes.

| rencontre | effet sur $(j, r, v)$ | effet sur $j - r$ |
|---|---|---|
| jaune $+$ rouge | $j-1$, $r-1$, $v+2$ | inchangé |
| jaune $+$ vert | $j-1$, $r+2$, $v-1$ | $-3$ |
| rouge $+$ vert | $j+2$, $r-1$, $v-1$ | $+3$ |

Et une rencontre entre deux caméléons de même couleur ne change rien du tout.

**L'invariant.**

La différence $j - r$ ne varie donc que par sauts de $3$ (ou ne varie pas). Son **reste dans la division par $3$ ne change jamais**.

Au départ, $j - r = 7 - 10 = -3$, qui est un multiple de $3$. Donc **à tout instant, $j - r$ est un multiple de $3$**.

Le même raisonnement vaut pour les deux autres différences (les rôles des trois couleurs sont interchangeables). Calculons leurs restes de départ :
$$j - r = -3 \equiv 0 \pmod 3, \qquad v - r = 17 - 10 = 7 \equiv 1 \pmod 3, \qquad v - j = 17 - 7 = 10 \equiv 1 \pmod 3 .$$

Ces trois restes ne changeront jamais.

**On élimine deux couleurs.**

Supposons qu'à la fin tous les caméléons soient **jaunes**. Alors $j = 34$, $r = 0$, $v = 0$, donc $j - r = 34$. Or $34 = 3 \times 11 + 1$ n'est pas un multiple de $3$, alors que $j - r$ doit toujours en être un. **Impossible.**

Supposons qu'à la fin tous les caméléons soient **rouges**. Alors $j = 0$, $r = 34$, $v = 0$, donc $j - r = -34$, qui n'est pas non plus un multiple de $3$. **Impossible.**

Il ne reste qu'une possibilité : **tous les caméléons sont verts**.

Vérifions la cohérence : si $v = 34$ et $j = r = 0$, alors $j - r = 0$ est bien un multiple de $3$, $v - r = 34 \equiv 1 \pmod 3$ et $v - j = 34 \equiv 1 \pmod 3$. Les trois restes sont les bons.

**Est-ce vraiment réalisable ?**

Oui, et on peut le montrer en donnant une suite de rencontres :

- les $7$ jaunes rencontrent $7$ des rouges : il reste $0$ jaune, $3$ rouges et $17 + 14 = 31$ verts ;
- un vert rencontre un rouge : il reste $2$ jaunes, $2$ rouges et $30$ verts ;
- enfin les $2$ rouges rencontrent les $2$ jaunes : il reste $0$ jaune, $0$ rouge et $34$ verts.

**Conclusion.** Tous les caméléons sont devenus **verts**.

## Going further

1. Avec $7$ jaunes, $10$ rouges et $17$ verts, peut-on au moins amener tous les caméléons à être d'une même couleur ? On vient de voir que oui. Et avec $1$ jaune, $2$ rouges et $3$ verts ?
2. Montre que, partant de $j$, $r$, $v$ caméléons, il est impossible d'uniformiser la population si les trois nombres ont des restes deux à deux différents modulo $3$.
3. À l'inverse, si deux des trois effectifs ont le même reste modulo $3$, montre qu'on peut toujours uniformiser.
