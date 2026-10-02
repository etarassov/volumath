---
id: "11218"
title: "Trois entiers de somme nulle"
grade: 12
theme: combinatorics
difficulty: 4
duration_min: 45
tags: [recurrence, tiroirs, entiers, somme, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2014-2015 n° 1 (combinatoire)"
  reference: "2017-10_ofm-2014-2015-envoi-1.pdf, Exercices communs, exercice 4 ; corrigé 2017-10_ofm-2014-2015-envoi-1-solutions.pdf (dans le second cas, le corrigé écrit « au moins n éléments de A » et découpe A = {1, …, 2n − 1} en n − 1 paires ; il en faut n + 1, et le nombre n reste seul. La preuve ci-dessous est réorganisée)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/10/ofm-2014-2015-envoi-1.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2017-10_ofm-2014-2015-envoi-1.pdf"
---

## Statement

Soit $n$ un entier strictement positif. On choisit $2n + 1$ entiers **différents**, compris au sens
large entre $-2n + 1$ et $2n - 1$.

Montrer que l'on peut toujours trouver, parmi les entiers choisis, trois entiers différents dont la
somme est nulle.

## Hints

1. Vérifie l'énoncé pour $n = 1$, puis raisonne par récurrence sur $n$.
2. Pour passer de $n$ à $n + 1$, on choisit $2n + 3$ entiers entre $-2n - 1$ et $2n + 1$. Si
   $2n + 1$ d'entre eux sont entre $-2n + 1$ et $2n - 1$, c'est fini. Sinon, combien des quatre
   nombres $-2n - 1$, $-2n$, $2n$, $2n + 1$ sont choisis ?
3. Si $2n + 1$ et $-2n - 1$ sont tous les deux choisis, range les nombres de $1$ à $2n$ en paires de
   somme $2n + 1$, et fais de même pour les nombres négatifs.
4. Sinon, on peut supposer (quitte à changer tous les signes) que $2n + 1$, $2n$ et $-2n$ sont
   choisis. Range les autres nombres en groupes : paires de somme $2n$ chez les positifs, paires de
   somme $-2n - 1$ chez les négatifs. Il reste un nombre tout seul.

## Solution

Notons $\mathcal{P}(n)$ la propriété : « parmi $2n + 1$ entiers différents compris entre $-2n + 1$
et $2n - 1$, on en trouve toujours trois différents de somme nulle ». Montrons-la par récurrence.

**Initialisation.** Pour $n = 1$, on choisit $3$ entiers différents parmi $-1$, $0$, $1$ : ce sont
forcément ces trois nombres, et $-1 + 0 + 1 = 0$.

**Hérédité.** Supposons $\mathcal{P}(n)$ vraie pour un certain $n \geqslant 1$. On choisit
$2n + 3$ entiers différents compris entre $-2n - 1$ et $2n + 1$, et on cherche trois d'entre eux de
somme nulle.

Les entiers de $-2n - 1$ à $2n + 1$ sont ceux de $-2n + 1$ à $2n - 1$, plus les quatre nombres
« du bord » : $-2n - 1$, $-2n$, $2n$ et $2n + 1$.

*Premier cas : au moins $2n + 1$ des entiers choisis sont entre $-2n + 1$ et $2n - 1$.* L'hypothèse
de récurrence, appliquée à $2n + 1$ d'entre eux, donne trois entiers de somme nulle.

*Sinon*, au plus $2n$ des entiers choisis sont entre $-2n + 1$ et $2n - 1$, donc au moins $3$ sont
parmi les quatre nombres du bord.

*Si $0$ est choisi.* Les quatre nombres du bord forment deux paires, $\{2n, -2n\}$ et
$\{2n + 1, -2n - 1\}$. Trois d'entre eux sont choisis, donc l'une des deux paires est complète. Avec
$0$, elle donne trois nombres de somme nulle. **On suppose désormais que $0$ n'est pas choisi.**

*Deuxième cas : $2n + 1$ et $-2n - 1$ sont tous les deux choisis.* Les $2n + 1$ autres nombres
choisis sont entre $-2n$ et $2n$, et différents de $0$. Rangeons ces $4n$ nombres en $2n$ paires. Les $n$ paires
$$\{1, 2n\}, \ \{2, 2n - 1\}, \ \ldots, \ \{n, n + 1\}$$
ont pour somme $2n + 1$, et les $n$ paires
$$\{-1, -2n\}, \ \{-2, -2n + 1\}, \ \ldots, \ \{-n, -n - 1\}$$
ont pour somme $-2n - 1$.
On place $2n + 1$ nombres dans $2n$ paires, donc une paire est complète (principe des tiroirs). Si
c'est une paire de somme $2n + 1$, on lui ajoute $-2n - 1$. Si c'est une paire de somme $-2n - 1$, on
lui ajoute $2n + 1$. Dans les deux cas, la somme est nulle.

*Troisième cas : $2n + 1$ et $-2n - 1$ ne sont pas choisis tous les deux.* Comme trois nombres du bord
sont choisis, exactement l'un des deux manque. Si l'on change le signe de tous les nombres, l'énoncé
ne change pas : on peut donc supposer que c'est $-2n - 1$ qui manque. Alors $2n + 1$, $2n$ et $-2n$
sont choisis.

- Si $-1$ est choisi : $(-1) + (-2n) + (2n + 1) = 0$, c'est fini.
- Sinon, ni $0$, ni $-1$, ni $-2n - 1$ ne sont choisis. Les $2n + 3 - 3 = 2n$ autres nombres choisis
  sont entre $-2n + 1$ et $2n - 1$, et différents de $0$ et de $-1$. Rangeons ces nombres possibles en
  groupes. Chez les positifs, les $n - 1$ paires
  $$\{1, 2n - 1\}, \ \{2, 2n - 2\}, \ \ldots, \ \{n - 1, n + 1\}$$
  ont pour somme $2n$, et il reste le nombre $n$ tout seul, qui forme le groupe $\{n\}$. Chez les
  négatifs, les $n - 1$ paires
  $$\{-2, -2n + 1\}, \ \{-3, -2n + 2\}, \ \ldots, \ \{-n, -n - 1\}$$
  ont pour somme $-2n - 1$. Cela fait $n - 1$ paires positives, le nombre $n$ tout seul, et $n - 1$ paires négatives, soit
  $2n - 1$ groupes. On place $2n$ nombres dans $2n - 1$ groupes, donc deux d'entre eux sont dans le
  même groupe. Ce groupe n'est pas $\{n\}$, qui n'a qu'un élément : c'est une paire complète. Si
  c'est une paire de somme $2n$, on lui ajoute $-2n$. Si c'est une paire de somme $-2n - 1$, on lui
  ajoute $2n + 1$. La somme est nulle.

Dans tous les cas, on a trouvé trois entiers différents de somme nulle : $\mathcal{P}(n + 1)$ est
vraie.

**Conclusion : par récurrence, pour tout $n \geqslant 1$, parmi $2n + 1$ entiers différents compris
entre $-2n + 1$ et $2n - 1$, on peut toujours en trouver trois dont la somme est nulle.**

## Going further

Le nombre $2n + 1$ ne peut pas être remplacé par $2n$. Les nombres impairs de $-2n + 1$ à $2n - 1$
sont au nombre de $2n$, et la somme de trois nombres impairs est toujours impaire, donc jamais
nulle.
