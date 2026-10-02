---
id: "2606"
title: "Racines conjuguées et racine réelle d'un polynôme de degré 3"
grade: 12
theme: algebra
difficulty: 4
duration_min: 35
tags: [nombres-complexes, conjugue, polynome, degre-trois]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School I Circle, Complex Numbers: a primer"
  reference: "Handout-593-712.pdf, challenge problems 3 a), b) et c)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-593-712.pdf"
---

## Statement

Soit $P(x) = a_n x^n + a_{n-1}x^{n-1} + \dots + a_1 x + a_0$ un polynôme dont **tous les coefficients $a_k$ sont réels**.

1. Montrer que si un nombre complexe $z$ est racine de $P$, alors son conjugué $\overline{z}$ est aussi racine de $P$.
2. En déduire que tout polynôme de degré $3$ à coefficients réels admet au moins une racine réelle.

On rappelle le théorème de d'Alembert–Gauss : tout polynôme de degré $n \geq 1$ à coefficients complexes admet exactement $n$ racines dans $\mathbb{C}$, comptées avec leur multiplicité.

## Hints

1. Rappelle-toi les deux règles de base du conjugué : $\overline{u + v} = \overline{u} + \overline{v}$ et $\overline{u \times v} = \overline{u} \times \overline{v}$. Que vaut alors $\overline{z^k}$ ?
2. Un nombre réel est son propre conjugué. C'est là que sert l'hypothèse sur les coefficients.
3. Pour la question 2 : un polynôme de degré $3$ a exactement trois racines complexes. Que se passe-t-il si aucune n'est réelle ?
4. Les racines non réelles vont par paires $\{z, \overline z\}$, et $z \neq \overline z$ quand $z$ n'est pas réel. Compte.

## Solution

**1. Le conjugué d'une racine est une racine.**

Rappelons deux propriétés de la conjugaison, valables pour tous complexes $u$ et $v$ :
$$\overline{u + v} = \overline{u} + \overline{v}, \qquad \overline{u \times v} = \overline{u} \times \overline{v}.$$

De la seconde, en l'appliquant plusieurs fois, on tire $\overline{z^k} = \left(\overline{z}\right)^k$ pour tout entier $k \geq 0$.

Supposons maintenant que $P(z) = 0$, c'est-à-dire
$$a_n z^n + a_{n-1}z^{n-1} + \dots + a_1 z + a_0 = 0.$$

Conjuguons les deux membres. À gauche, le conjugué d'une somme est la somme des conjugués :
$$\overline{a_n z^n} + \overline{a_{n-1}z^{n-1}} + \dots + \overline{a_1 z} + \overline{a_0} = \overline{0} = 0.$$

Dans chaque terme, le conjugué d'un produit est le produit des conjugués :
$$\overline{a_k z^k} = \overline{a_k} \cdot \overline{z^k} = \overline{a_k} \cdot \left(\overline{z}\right)^k .$$

C'est ici qu'intervient l'hypothèse : **les $a_k$ sont réels**, donc $\overline{a_k} = a_k$. Il reste
$$a_n \left(\overline{z}\right)^n + a_{n-1}\left(\overline{z}\right)^{n-1} + \dots + a_1 \overline{z} + a_0 = 0,$$
c'est-à-dire exactement $P\!\left(\overline{z}\right) = 0$.

**Donc $\overline{z}$ est aussi racine de $P$.**

**2. Un polynôme de degré 3 a une racine réelle.**

Soit $P$ de degré $3$ à coefficients réels. D'après le théorème de d'Alembert–Gauss, $P$ a exactement trois racines complexes, comptées avec leur multiplicité : appelons-les $z_1$, $z_2$, $z_3$.

Raisonnons par l'absurde et supposons qu'**aucune** de ces trois racines n'est réelle.

D'après la question 1, la conjugaison $z \mapsto \overline{z}$ envoie l'ensemble des racines de $P$ dans lui-même. De plus, elle ne fixe aucune de nos racines : un nombre complexe vérifie $z = \overline{z}$ si et seulement s'il est réel, et on a supposé qu'aucune racine ne l'est.

Les racines se regroupent donc en paires $\{z, \overline{z}\}$ de deux éléments distincts (avec la même multiplicité de part et d'autre, puisque le même argument s'applique à chaque facteur). Le nombre total de racines comptées avec multiplicité est donc **pair**.

Or ce nombre vaut $3$, qui est impair. **Contradiction.**

Donc l'hypothèse était fausse : au moins une des trois racines est réelle.

**Tout polynôme de degré $3$ à coefficients réels admet au moins une racine réelle.**

## Going further

Le même raisonnement marche pour tout **degré impair**. Il y a une autre démonstration, complètement différente et qui n'utilise pas les nombres complexes : si $a_n > 0$, la fonction $x \mapsto P(x)$ tend vers $-\infty$ en $-\infty$ et vers $+\infty$ en $+\infty$ ; elle est continue, donc elle s'annule quelque part d'après le théorème des valeurs intermédiaires. Deux mondes, un même résultat.
