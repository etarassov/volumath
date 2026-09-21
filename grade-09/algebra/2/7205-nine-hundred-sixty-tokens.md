---
id: "7205"
title: "Neuf cent soixante jetons pour la classe"
grade: 9
theme: algebra
difficulty: 2
duration_min: 15
tags: [equation, diviseurs, mise en equation]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Première journée », exercices d'échauffement, exercice 7"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

Dans une classe, les élèves jouent avec $960$ jetons. Au début, ces $960$ jetons ont été
partagés entre les élèves, chaque élève en recevant le même nombre.

Puis le professeur vient jouer avec eux. Chaque élève lui donne alors $4$ jetons. On constate
qu'après cela, tout le monde — les élèves et le professeur — a de nouveau le même nombre de
jetons.

Combien y a-t-il d'élèves dans la classe ?

## Hints

1. Appelle $n$ le nombre d'élèves. Combien de jetons chaque élève avait-il au départ ?
2. Combien de jetons le professeur reçoit-il en tout ?
3. Après l'opération, un élève et le professeur ont le même nombre de jetons. Écris cette égalité.

## Solution

**Mise en équation.**

Notons $n$ le nombre d'élèves. Les $960$ jetons sont partagés équitablement entre eux, donc
chaque élève a au départ
$$\frac{960}{n} \text{ jetons.}$$

Chaque élève donne ensuite $4$ jetons au professeur. Il reste donc à chaque élève
$$\frac{960}{n} - 4 \text{ jetons},$$
et le professeur, qui a reçu $4$ jetons de chacun des $n$ élèves, en a
$$4n .$$

L'énoncé dit que ces deux nombres sont égaux :
$$\frac{960}{n} - 4 = 4n .$$

**Résolution.**

Multiplions par $n$ (qui n'est pas nul) :
$$960 - 4n = 4n^2 ,$$
puis divisons par $4$ :
$$240 - n = n^2, \qquad \text{c'est-à-dire} \qquad n^2 + n = 240,$$
soit
$$n(n+1) = 240 .$$

Il faut donc trouver deux entiers consécutifs dont le produit vaut $240$. Comme
$15 \times 16 = 240$, la valeur $n = 15$ convient. C'est la seule solution positive : si
$n \leqslant 14$ alors $n(n+1) \leqslant 14 \times 15 = 210 < 240$, et si $n \geqslant 16$ alors
$n(n+1) \geqslant 16 \times 17 = 272 > 240$.

**Vérification.** Avec $15$ élèves : chacun a $960 / 15 = 64$ jetons, il en donne $4$ et lui en
reste $60$. Le professeur reçoit $4 \times 15 = 60$ jetons. Tout le monde a bien $60$ jetons.

**Il y a $15$ élèves dans la classe.**
