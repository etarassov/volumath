---
id: "7503"
title: "Faire 21 avec 1, 5, 6 et 7"
grade: 8
theme: logic-reasoning
difficulty: 3
duration_min: 25
tags: [calcul, fractions, recherche, quatre-operations]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 11 (solution p. 240, résolu par Adrien Lemercier)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

On dispose des quatre nombres $1$, $5$, $6$ et $7$. Chacun doit être utilisé **exactement une fois**.

On a le droit aux quatre opérations $+$, $-$, $\times$, $\div$ et à autant de parenthèses qu'on veut.

Peut-on obtenir $21$ ?

## Hints

1. Essaie d'abord sans division. Tu vas voir que tu n'y arrives pas : les sommes et produits de $1$, $5$, $6$, $7$ tombent rarement sur $21$.
2. $21 = 3 \times 7$, et aussi $21 = 6 \times 3{,}5$. Est-ce que l'un de ces deux découpages aide ?
3. Pour qu'une division donne un résultat plus **grand** que le nombre de départ, il faut diviser par un nombre plus petit que $1$.
4. Cherche à écrire $21 = \dfrac{6}{\text{quelque chose}}$. Que doit valoir ce « quelque chose » ? Peux-tu le fabriquer avec $1$, $5$ et $7$ ?

## Solution

Oui, c'est possible. Voici une façon :

$$\frac{6}{\;1 - \dfrac{5}{7}\;} \;=\; 21.$$

**Vérification.**

On calcule d'abord le dénominateur :

$$1 - \frac{5}{7} \;=\; \frac{7}{7} - \frac{5}{7} \;=\; \frac{2}{7}.$$

Puis on divise :

$$\frac{6}{\;\tfrac{2}{7}\;} \;=\; 6 \times \frac{7}{2} \;=\; \frac{42}{2} \;=\; 21.$$

Les quatre nombres $1$, $5$, $6$ et $7$ ont bien été utilisés une fois chacun, et on n'a employé que la soustraction et la division.

**Comment on trouve cette écriture.**

On cherche $21$, qui est bien plus grand que chacun des quatre nombres de départ. Avec des additions et des multiplications de $1$, $5$, $6$, $7$ on dépasse vite ou on rate ; la division est donc le bon outil, à condition de diviser par un nombre **plus petit que 1**, ce qui fait grandir le résultat.

On essaie de diviser $6$ par quelque chose. Il faut alors

$$\frac{6}{x} = 21, \qquad \text{c'est-à-dire} \qquad x = \frac{6}{21} = \frac{2}{7}.$$

Reste à fabriquer $\dfrac{2}{7}$ avec $1$, $5$ et $7$. Comme $\dfrac{2}{7} = \dfrac{7-5}{7}$, on écrit $1 - \dfrac{5}{7}$, et c'est gagné.

## Going further

La même méthode marche pour beaucoup de casse-têtes de ce type : quand le but est nettement plus grand que les nombres disponibles, on écrit but $=$ nombre $\div$ petite fraction, et on cherche à construire cette petite fraction.

Essaie maintenant d'obtenir $24$ à partir de $1$, $3$, $4$ et $6$ : c'est le plus célèbre de ces casse-têtes, et la solution utilise exactement le même truc.
