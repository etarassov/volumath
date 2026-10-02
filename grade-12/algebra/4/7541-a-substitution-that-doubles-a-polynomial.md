---
id: "7541"
title: "Une substitution qui double le polynôme"
grade: 12
theme: algebra
difficulty: 4
duration_min: 40
tags: [polynome, deux-variables, identification-des-coefficients, substitution, homogeneite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2012, La Muraille"
  reference: "stage_ete_2012.pdf, chapitre V « La Muraille », exercice 121. Le polycopié ne donne aucune solution pour cet exercice ; la démonstration ci-dessous a été écrite pour le club."
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2012.pdf"
---

## Statement

Un **polynôme à deux variables** est une somme finie de termes de la forme $c\,x^i y^j$, où $c$ est un réel et $i$, $j$ des entiers naturels. Par exemple $P(x,y) = 3x^2 y - y + 5$ en est un.

Trouver tous les polynômes $P$ à deux variables, à coefficients réels, tels que

$$P(x+y,\; x-y) \;=\; 2\,P(x,y) \qquad \text{pour tous réels } x \text{ et } y .$$

## Hints

1. Vérifie d'abord que $P(x,y) = x^2 + y^2$ convient. Y en a-t-il d'autres du même genre ?
2. L'équation transforme $(x,y)$ en $(x+y,\, x-y)$. Que se passe-t-il si on applique cette transformation **deux fois de suite** ?
3. Applique l'équation au couple $(x+y,\, x-y)$ à la place de $(x,y)$. Tu obtiendras une relation entre $P(2x, 2y)$ et $P(x,y)$.
4. Tu devrais trouver $P(2x,2y) = 4\,P(x,y)$. Écris $P$ comme somme de termes $c_{ij}\, x^i y^j$ et identifie les coefficients : que vaut $c_{ij}$ quand $i+j \neq 2$ ?
5. Il ne reste que $P(x,y) = \alpha x^2 + \beta xy + \gamma y^2$. Reporte dans l'équation de départ et identifie.

## Solution

**Réponse.** Les solutions sont exactement les polynômes

$$P(x,y) = \alpha x^2 + \beta xy + \gamma y^2 \qquad \text{avec} \qquad \alpha = \beta + \gamma ,$$

autrement dit tous les

$$P(x,y) = \lambda\,(x^2 + xy) + \mu\,(x^2 + y^2), \qquad \lambda, \mu \in \mathbb{R}.$$

**Étape 0. Un outil : l'identification des coefficients.**

On utilisera plusieurs fois le fait suivant. *Si un polynôme $Q$ à deux variables vérifie $Q(x,y) = 0$ pour tous réels $x$ et $y$, alors tous ses coefficients sont nuls.*

*Pourquoi.* Écrivons $Q(x,y) = \sum_i q_i(y)\, x^i$, où chaque $q_i$ est un polynôme en $y$. Fixons un réel $y_0$. Le polynôme d'une variable $x \mapsto Q(x, y_0)$ s'annule en tout réel, donc il est nul et tous ses coefficients $q_i(y_0)$ sont nuls. Ceci vaut pour tout $y_0$, donc chaque $q_i$ s'annule partout, donc chaque $q_i$ est le polynôme nul.

Deux polynômes qui coïncident pour tous réels $x$, $y$ ont donc les mêmes coefficients.

**Étape 1. On applique la transformation deux fois.**

Notons $T(x,y) = (x+y,\; x-y)$. L'hypothèse s'écrit $P\big(T(x,y)\big) = 2 P(x,y)$.

Appliquons-la au couple $T(x,y) = (x+y,\, x-y)$ au lieu de $(x,y)$ :

$$P\Big(T\big(T(x,y)\big)\Big) = 2\, P\big(T(x,y)\big) = 4\,P(x,y).$$

Or

$$T\big(T(x,y)\big) = T(x+y,\; x-y) = \big((x+y) + (x-y),\; (x+y) - (x-y)\big) = (2x,\; 2y).$$

On obtient donc, pour tous réels $x$ et $y$,

$$(\star) \qquad P(2x,\, 2y) = 4\,P(x,y).$$

**Étape 2. $P$ est homogène de degré $2$.**

Écrivons $P(x,y) = \displaystyle\sum_{i,j} c_{ij}\, x^i y^j$. Alors

$$P(2x, 2y) = \sum_{i,j} c_{ij}\, 2^{i}x^{i}\, 2^{j}y^{j} = \sum_{i,j} 2^{\,i+j}\, c_{ij}\, x^i y^j .$$

L'égalité $(\star)$ et l'identification des coefficients donnent, pour tout couple $(i,j)$ :

$$2^{\,i+j}\, c_{ij} = 4\, c_{ij}, \qquad \text{c'est-à-dire} \qquad \big(2^{\,i+j} - 4\big)\, c_{ij} = 0 .$$

Si $i + j \neq 2$, alors $2^{\,i+j} \neq 4$ et donc $c_{ij} = 0$.

Il ne reste que les termes avec $i+j = 2$ :

$$P(x,y) = \alpha x^2 + \beta xy + \gamma y^2 .$$

**Étape 3. On revient à l'équation de départ.**

Développons :

$$P(x+y,\, x-y) = \alpha (x+y)^2 + \beta (x+y)(x-y) + \gamma (x-y)^2 .$$

Terme par terme :

$$\alpha (x^2 + 2xy + y^2) + \beta (x^2 - y^2) + \gamma (x^2 - 2xy + y^2)$$
$$= (\alpha + \beta + \gamma)\,x^2 \;+\; (2\alpha - 2\gamma)\,xy \;+\; (\alpha - \beta + \gamma)\,y^2 .$$

Ceci doit valoir $2P(x,y) = 2\alpha x^2 + 2\beta xy + 2\gamma y^2$. En identifiant :

| coefficient | équation | après simplification |
|---|---|---|
| de $x^2$ | $\alpha + \beta + \gamma = 2\alpha$ | $\alpha = \beta + \gamma$ |
| de $xy$ | $2\alpha - 2\gamma = 2\beta$ | $\alpha = \beta + \gamma$ |
| de $y^2$ | $\alpha - \beta + \gamma = 2\gamma$ | $\alpha = \beta + \gamma$ |

Les trois conditions sont **la même**. La seule contrainte est donc $\alpha = \beta + \gamma$, et $\beta$, $\gamma$ restent libres.

**Étape 4. Vérification.**

Prenons $\alpha = \beta + \gamma$ et posons $P(x,y) = (\beta+\gamma)x^2 + \beta xy + \gamma y^2$. Le calcul de l'étape 3 donne

$$P(x+y, x-y) = \big(2\beta + 2\gamma\big)x^2 + 2\beta\, xy + 2\gamma\, y^2 = 2P(x,y). \quad \checkmark$$

**Conclusion.** Les polynômes cherchés sont exactement

$$\boxed{P(x,y) = \lambda\,(x^2 + xy) + \mu\,(x^2 + y^2)}, \qquad \lambda, \mu \in \mathbb{R},$$

en posant $\lambda = \beta$ et $\mu = \gamma$. En particulier le polynôme nul convient, et $x^2+y^2$ et $x^2+xy$ sont les deux solutions « de base ».

## Going further

L'étape 2 mérite d'être retenue pour elle-même. Une relation du type $P(tx, ty) = t^{\,k} P(x,y)$ force le polynôme à n'avoir que des termes de degré total $k$ ; on dit alors que $P$ est **homogène de degré $k$**. Ici on n'avait la relation que pour $t = 2$, et cela a suffi, parce que $2^{\,i+j} = 4$ n'a qu'une solution en $i+j$.

Deux variantes à chercher :

1. Que deviennent les solutions si on remplace $2P(x,y)$ par $4P(x,y)$ au second membre ? Et par $P(x,y)$ ?
2. Même question avec la transformation $(x,y) \mapsto (x+y,\, y)$ au lieu de $(x+y,\, x-y)$. Attention : appliquée deux fois, elle ne donne plus une simple multiplication, et l'argument de l'étape 1 s'effondre.
