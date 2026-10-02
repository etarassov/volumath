---
id: "13043"
title: "102 cadeaux pour 100 gagnants"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 35
tags: [denombrement, factorielle, distribution, disjonction-de-cas]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, éliminatoires du test de rentrée 2015 (Coupe Animath d'automne), questionnaire lycéens"
  reference: "2017-09_coupe_automne_2015_elim_lycee.pdf, exercice 6 ; corrigé 2017-09_coupe_automne_2015_elim_lycee_corrige.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2015_elim_lycee.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2015_elim_lycee.pdf"
---

## Statement

On dispose de $102$ cadeaux, tous différents. On veut les distribuer tous aux $100$ gagnants d'un concours, de sorte que chaque gagnant reçoive au moins un cadeau. On note $N$ le nombre de façons de le faire.

Calculer
$$\frac{N \times 48}{1 \times 2 \times 3 \times \cdots \times 102} .$$

## Hints

1. Chaque gagnant reçoit au moins un cadeau, et il y a $2$ cadeaux de plus que de gagnants. Comment ces $2$ cadeaux « en trop » peuvent-ils se répartir ?
2. Il y a deux cas : un gagnant reçoit $3$ cadeaux et tous les autres $1$, ou bien deux gagnants reçoivent $2$ cadeaux et tous les autres $1$. Compte chaque cas séparément.
3. Pour compter les façons de choisir $3$ cadeaux parmi $102$, compte d'abord les choix faits **dans l'ordre**, puis demande-toi combien de fois chaque groupe de $3$ cadeaux a été compté.
4. Une fois servis les gagnants qui reçoivent plusieurs cadeaux, chacun des autres en reçoit un seul. De combien de façons peut-on donner $99$ cadeaux différents à $99$ personnes, un chacun ?

## Solution

On note $n! = 1 \times 2 \times 3 \times \cdots \times n$ (on lit « factorielle $n$ »). On cherche donc $\dfrac{48\,N}{102!}$.

**Deux outils.**

- Pour donner $k$ cadeaux différents à $k$ personnes, un chacun, la première personne a $k$ choix, la deuxième $k - 1$, et ainsi de suite : il y a $k!$ façons.
- Pour choisir $3$ cadeaux parmi $102$ **sans tenir compte de l'ordre**, on compte d'abord les choix dans l'ordre : $102 \times 101 \times 100$. Chaque groupe de $3$ cadeaux a été compté $3 \times 2 \times 1 = 6$ fois, une fois pour chaque ordre. Il y a donc $\dfrac{102 \times 101 \times 100}{6}$ groupes. De même, il y a $\dfrac{102 \times 101}{2}$ façons de choisir $2$ cadeaux parmi $102$, et $\dfrac{100 \times 99}{2}$ façons de choisir $2$ gagnants parmi $100$.

**Les deux cas possibles.** Si chaque gagnant reçoit un cadeau, il en reste $2$. Donc soit un gagnant reçoit $3$ cadeaux et les $99$ autres un seul, soit deux gagnants reçoivent $2$ cadeaux et les $98$ autres un seul.

**Premier cas : un gagnant reçoit $3$ cadeaux.** On choisit ce gagnant ($100$ façons), puis ses $3$ cadeaux, puis on donne les $99$ cadeaux restants aux $99$ autres gagnants. Cela fait
$$100 \times \frac{102 \times 101 \times 100}{6} \times 99! = \frac{100}{6} \times 102!,$$
car $102 \times 101 \times 100 \times 99! = 102!$.

**Deuxième cas : deux gagnants reçoivent $2$ cadeaux.** On choisit ces deux gagnants ($\dfrac{100 \times 99}{2} = 4950$ façons), et on appelle $X$ celui qui a le plus petit numéro de dossard et $Y$ l'autre. On choisit les $2$ cadeaux de $X$ parmi $102$, puis les $2$ cadeaux de $Y$ parmi les $100$ qui restent, puis on donne les $98$ cadeaux restants aux $98$ autres gagnants. Cela fait
$$4950 \times \frac{102 \times 101}{2} \times \frac{100 \times 99}{2} \times 98! = \frac{4950}{4} \times 102!,$$
car $102 \times 101 \times 100 \times 99 \times 98! = 102!$.

**Le total.** Les deux cas ne se chevauchent pas, donc
$$N = \left(\frac{100}{6} + \frac{4950}{4}\right) \times 102! .$$
Ainsi
$$\frac{48\,N}{102!} = 48 \times \frac{100}{6} + 48 \times \frac{4950}{4} = 8 \times 100 + 12 \times 4950 = 800 + 59400 = 60200 .$$

**Conclusion.** La valeur cherchée est $60200$.

## Going further

1. Faire le même calcul avec $5$ cadeaux pour $3$ gagnants, puis vérifier le résultat en écrivant toutes les répartitions possibles des nombres de cadeaux.
2. Combien y a-t-il de façons de distribuer $101$ cadeaux différents à $100$ gagnants, chacun en recevant au moins un ? Exprimer le résultat à l'aide de $101!$.
