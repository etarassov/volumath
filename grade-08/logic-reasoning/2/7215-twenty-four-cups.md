---
id: "7215"
title: "Vingt-quatre tasses et quatre à la fois"
grade: 8
theme: logic-reasoning
difficulty: 2
duration_min: 15
tags: [invariant, parite, retournement]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2017"
  reference: "Poly-CJ-17.pdf, « Débutants », jeudi 26 matin (Yohann d'Anello), invariants, exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-CJ-17.pdf"
---

## Statement

$24$ tasses sont posées sur une table. Au départ, $3$ d'entre elles sont à l'envers, les $21$
autres à l'endroit.

À chaque étape, on choisit exactement $4$ tasses et on les retourne toutes les quatre : celles qui
étaient à l'envers se retrouvent à l'endroit, et inversement. On a le droit de choisir n'importe
quelles $4$ tasses, et de recommencer autant de fois qu'on veut.

Peut-on arriver à ce que les $24$ tasses soient toutes à l'endroit ?

## Hints

1. Ne compte que les tasses à l'envers. Combien y en a-t-il au départ ? Combien veut-on à la fin ?
2. Si parmi les $4$ tasses retournées, $k$ étaient à l'envers, combien y en a-t-il à l'envers
   après le retournement ?
3. De combien le nombre de tasses à l'envers varie-t-il ? Est-ce toujours pair, toujours impair ?

## Solution

**L'idée : suivre le nombre de tasses à l'envers.**

Notons $E$ le nombre de tasses à l'envers. Au départ, $E = 3$.

**Ce que fait une étape.**

On retourne $4$ tasses. Supposons que parmi ces $4$ tasses, $k$ soient à l'envers et donc $4-k$ à
l'endroit. Après le retournement, ce sont les $4-k$ autres qui sont à l'envers. Le nombre $E$
varie donc de
$$(4-k) - k = 4 - 2k .$$

C'est toujours un nombre **pair**.

**L'invariant.**

La parité de $E$ ne change donc jamais. Au départ $E = 3$, qui est impair. Donc :

**à tout moment, le nombre de tasses à l'envers est impair.**

**Conclusion.**

Pour que toutes les tasses soient à l'endroit, il faudrait $E = 0$, qui est pair. C'est
impossible.

**Non, on ne peut pas retourner toutes les tasses, quel que soit le nombre d'étapes.**

## Going further

Le nombre $24$ ne sert à rien : seul compte le fait qu'on retourne un nombre **pair** de tasses à
chaque étape, et qu'on parte d'un nombre **impair** de tasses à l'envers.

En revanche, si on avait le droit de retourner $3$ tasses à la fois, la parité changerait à chaque
étape et l'argument tomberait. On peut alors vérifier qu'on y arrive : par exemple, retourner les
$3$ tasses à l'envers suffit du premier coup.
