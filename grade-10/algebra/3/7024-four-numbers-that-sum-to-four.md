---
id: "7024"
title: "Quatre nombres dont la somme vaut 4"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [inegalite, factorisation, carre positif]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2010"
  reference: "stage_junior_2010.pdf, lundi 25 octobre, exercices d'échauffement, exercice 5 ; la même inégalité revient jeudi 28 octobre (algèbre), exercices de l'après-midi, exercice 4, avec la somme 1"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2010.pdf"
---

## Statement

Soient $a$, $b$, $c$, $d$ quatre nombres positifs tels que
$$a + b + c + d = 4 .$$

Montrer que
$$ab + bc + cd + da \leq 4 .$$

Pour quelles valeurs de $a$, $b$, $c$, $d$ a-t-on l'égalité ?

## Hints

1. Regarde bien la somme $ab + bc + cd + da$. Elle n'est pas symétrique : ce sont les quatre
   produits « voisins », pas les six produits possibles. Essaie de la factoriser.
2. Regroupe les termes deux par deux : $ab + ad$ d'un côté, $bc + cd$ de l'autre.
3. Tu obtiens un produit de deux nombres dont la somme est connue. Quel est le plus grand
   produit possible de deux nombres de somme $4$ ?

## Solution

**La factorisation.**

Regroupons les quatre termes :
$$ab + bc + cd + da = (ab + ad) + (bc + cd) = a(b+d) + c(b+d) = (a+c)(b+d) .$$

C'est la clé de l'exercice : la quantité à majorer est simplement le produit de $a + c$ par
$b + d$.

**Le maximum d'un produit à somme fixée.**

Posons $x = a + c$. Comme $a+b+c+d = 4$, on a $b + d = 4 - x$, et il s'agit de montrer que
$$x(4-x) \leq 4 .$$

Calculons la différence :
$$4 - x(4-x) = x^2 - 4x + 4 = (x-2)^2 \geq 0 ,$$
car un carré est toujours positif ou nul. Donc $x(4-x) \leq 4$.

**Conclusion.**
$$ab + bc + cd + da = (a+c)(b+d) = x(4-x) \leq 4 . \qquad \blacksquare$$

**Le cas d'égalité.** L'inégalité $(x-2)^2 \geq 0$ est une égalité exactement quand $x = 2$,
c'est-à-dire quand
$$a + c = 2 \qquad \text{et} \qquad b + d = 2 .$$
Par exemple $a = b = c = d = 1$, mais aussi $a = 2$, $c = 0$, $b = \tfrac12$, $d = \tfrac32$ :
il y a une infinité de cas d'égalité.

## Going further

La même démonstration, avec $a+b+c+d = 1$, donne
$$ab + bc + cd + da \leq \frac14 ,$$
avec égalité lorsque $a + c = b + d = \tfrac12$.

Plus généralement, on vient de redémontrer un fait très utile : **parmi tous les couples de
nombres de somme $s$, celui dont le produit est le plus grand est $\left(\tfrac s2, \tfrac
s2\right)$, et ce produit vaut $\tfrac{s^2}{4}$.**

Attention au piège : l'inégalité est fausse pour $ab + ac + bd + cd$ ou pour
$ab + ac + ad + bc + bd + cd$. Le regroupement en « voisins » est essentiel.
