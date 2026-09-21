---
id: "7612"
title: "Le produit de quatre racines emboîtées"
grade: 12
theme: algebra
difficulty: 5
duration_min: 50
tags: [racines carrees, polynomes, racines d un polynome, produit des racines]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2013, test de mi-parcours"
  reference: "stage_ete_2013.pdf, chapitre IV « Test de mi-parcours », groupe B, exercice 4"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2013.pdf"
---

## Statement

On admet qu'il existe quatre nombres réels $a$, $b$, $c$, $d$ vérifiant

$$a = \sqrt{4 - \sqrt{5 - a}}, \qquad b = \sqrt{4 + \sqrt{5 - b}},$$
$$c = \sqrt{4 - \sqrt{5 + c}}, \qquad d = \sqrt{4 + \sqrt{5 + d}} .$$

Calculer leur produit $abcd$.

## Hints

1. Il n'est pas question de calculer $a$, $b$, $c$ et $d$ séparément. Cherchez plutôt une équation **polynomiale** vérifiée par chacun d'eux.
2. Élevez au carré une première fois, isolez la racine restante, puis élevez au carré une seconde fois.
3. Vous obtiendrez deux polynômes de degré $4$, l'un pour $a$ et $b$, l'autre pour $c$ et $d$. Comment passer du second au premier ? Essayez de remplacer l'inconnue par son opposé.
4. Si un polynôme unitaire de degré $4$ possède quatre racines réelles distinctes, que vaut leur produit ?
5. Il reste à vérifier que les quatre nombres que vous manipulez sont bien **distincts** deux à deux. Traitez séparément $a \neq b$ et $c \neq d$.

## Solution

**Étape 1 : chasser les racines carrées.**

Partons de $a = \sqrt{4 - \sqrt{5-a}}$. En élevant au carré :

$$a^2 = 4 - \sqrt{5-a}, \qquad \text{donc} \qquad 4 - a^2 = \sqrt{5-a} .$$

En élevant de nouveau au carré :

$$16 - 8a^2 + a^4 = 5 - a , \qquad \text{c'est-à-dire} \qquad a^4 - 8a^2 + a + 11 = 0 .$$

Posons

$$Q(X) = X^4 - 8X^2 + X + 11 .$$

Le nombre $a$ est donc racine de $Q$.

Faisons la même chose pour $b = \sqrt{4 + \sqrt{5-b}}$ : on obtient $b^2 - 4 = \sqrt{5-b}$, puis $b^4 - 8b^2 + 16 = 5 - b$, soit

$$b^4 - 8b^2 + b + 11 = 0 .$$

Le nombre $b$ est donc, lui aussi, racine de $Q$. Le changement de signe à l'intérieur a disparu au moment du second carré.

Pour $c = \sqrt{4 - \sqrt{5+c}}$ : $4 - c^2 = \sqrt{5+c}$, puis $c^4 - 8c^2 + 16 = 5 + c$, soit

$$c^4 - 8c^2 - c + 11 = 0 .$$

Ce n'est pas $Q$, à cause du signe devant le terme en $X$. Mais calculons $Q(-c)$ :

$$Q(-c) = c^4 - 8c^2 - c + 11 = 0 .$$

Donc **$-c$** est racine de $Q$. De même, en partant de $d$, on trouve $d^4 - 8d^2 - d + 11 = 0$, donc $-d$ est racine de $Q$.

Bilan : les quatre nombres

$$a, \quad b, \quad -c, \quad -d$$

sont tous racines du même polynôme $Q(X) = X^4 - 8X^2 + X + 11$.

**Étape 2 : ces quatre nombres sont distincts.**

D'abord, aucun des quatre n'est nul, puisque $Q(0) = 11 \neq 0$.

Ensuite, $a$, $b$, $c$, $d$ sont des racines carrées, donc positifs ou nuls ; comme ils ne sont pas nuls, ils sont **strictement positifs**. Par conséquent $a > 0$, $b > 0$, tandis que $-c < 0$ et $-d < 0$ : aucun nombre du premier groupe n'est égal à un nombre du second.

Reste à voir que $a \neq b$ et que $c \neq d$.

- Si l'on avait $a = b$, alors $4 - \sqrt{5-a}$ et $4 + \sqrt{5-a}$ seraient tous deux égaux à $a^2$, donc $\sqrt{5-a} = 0$, donc $a = 5$. Mais alors $a^2 = 4 - 0 = 4$, c'est-à-dire $25 = 4$ : absurde. Donc $a \neq b$.
- Si l'on avait $c = d$, le même raisonnement donnerait $\sqrt{5+c} = 0$, donc $c = -5$, ce qui contredit $c > 0$. Donc $c \neq d$.

Les quatre nombres $a$, $b$, $-c$, $-d$ sont donc bien deux à deux distincts.

**Étape 3 : le produit des racines.**

Le polynôme $Q$ est de degré $4$ et unitaire (son coefficient dominant vaut $1$). Il a au plus $4$ racines, et nous venons d'en exhiber $4$ distinctes. Ce sont donc **toutes** ses racines, et $Q$ se factorise :

$$Q(X) = (X - a)(X - b)(X + c)(X + d) .$$

Le terme constant s'obtient en faisant $X = 0$ des deux côtés :

$$Q(0) = (-a)(-b)(c)(d) = abcd .$$

Or $Q(0) = 11$.

**Conclusion.**

$$abcd = 11 .$$

## Going further

**Pourquoi ces quatre nombres existent-ils ?** L'énoncé le fait admettre, mais on peut le voir. Prenons le cas de $a$ : il s'agit de résoudre $f(a) = a$ avec $f(u) = \sqrt{4 - \sqrt{5-u}}$, fonction continue sur l'intervalle des $u$ tels que $u \leqslant 5$ et $\sqrt{5-u} \leqslant 4$, c'est-à-dire pour $-11 \leqslant u \leqslant 5$. La fonction $g(u) = f(u) - u$ vaut $g(0) = \sqrt{4-\sqrt5} > 0$ et $g(5) = 2 - 5 < 0$. Par le théorème des valeurs intermédiaires, $g$ s'annule quelque part entre $0$ et $5$ : ce zéro est le nombre $a$ cherché. Les trois autres se traitent de la même façon.

**La morale.** On n'a jamais eu besoin de la valeur de $a$, $b$, $c$ ou $d$ (elles sont d'ailleurs très laides). Le tour de force est d'avoir reconnu, derrière quatre équations d'apparence différente, **un seul et même polynôme**, puis d'avoir lu le produit cherché directement dans son terme constant.
