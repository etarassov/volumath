---
id: "8932"
title: "Une somme de carrés qui ne fait que grandir"
grade: 11
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [monovariant, invariant, identites-remarquables, processus]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2026, Groupe C"
  reference: "Poly-Valbonne-2026.pdf, chapitre V « Groupe C », entraînement de fin de parcours, exercice 1"
  url: "https://maths-olympiques.fr/wp-content/uploads/2026/09/Poly-Valbonne-2026.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-Valbonne-2026.pdf"
---

## Statement

Antoine écrit au tableau $n$ nombres réels $x_1, x_2, \ldots, x_n$, tous **non nuls**.

Toutes les minutes, il choisit deux nombres $a$ et $b$ écrits au tableau, les efface, et écrit à leur place les deux nombres

$$a - \dfrac{b}{2} \qquad \text{et} \qquad b + \dfrac{a}{2}.$$

Il y a donc toujours $n$ nombres au tableau.

Montrer que, quels que soient ses choix, Antoine ne retrouvera jamais la configuration de départ.

## Hints

1. Pour montrer qu'un état ne revient jamais, on cherche une quantité qui évolue **toujours dans le même sens** : on parle de *monovariant*.
2. Quelle quantité essayer ? L'opération mélange deux nombres de façon un peu tordue, mais les coefficients $1$ et $\tfrac{1}{2}$ font penser à quelque chose de quadratique.
3. Calculez $\left(a - \dfrac{b}{2}\right)^2 + \left(b + \dfrac{a}{2}\right)^2$ et comparez à $a^2 + b^2$. Les termes croisés s'annulent-ils ?
4. Regardez bien le premier coup : pourquoi l'hypothèse « tous les nombres sont non nuls » est-elle indispensable là, et seulement là ?

## Solution

**L'idée : suivre la somme des carrés de tous les nombres écrits au tableau.**

### Le calcul central

Soient $a$ et $b$ les deux nombres effacés. Développons la somme des carrés des deux nombres écrits à leur place :

$$\left(a - \dfrac{b}{2}\right)^2 + \left(b + \dfrac{a}{2}\right)^2 = \left(a^2 - ab + \dfrac{b^2}{4}\right) + \left(b^2 + ab + \dfrac{a^2}{4}\right).$$

Les deux termes croisés $-ab$ et $+ab$ se suppriment, et il reste

$$\left(a - \dfrac{b}{2}\right)^2 + \left(b + \dfrac{a}{2}\right)^2 = a^2 + b^2 + \dfrac{a^2}{4} + \dfrac{b^2}{4}.$$

### Ce que cela dit de la somme des carrés

Notons $S$ la somme des carrés des $n$ nombres écrits au tableau. Les $n-2$ nombres non touchés ne changent pas, donc, après un coup, $S$ augmente exactement de

$$\dfrac{a^2}{4} + \dfrac{b^2}{4} \geq 0.$$

Donc $S$ **ne diminue jamais**. Et cette augmentation est **strictement positive** dès que $a$ ou $b$ est non nul.

### Le premier coup décide de tout

Au départ, tous les nombres écrits sont non nuls. Les deux nombres $a$ et $b$ choisis à la première minute sont donc non nuls, et l'augmentation

$$\dfrac{a^2}{4} + \dfrac{b^2}{4}$$

est strictement positive. Notons $S_0$ la valeur de départ de $S$. Après le premier coup, $S > S_0$.

Ensuite, quoi qu'il arrive, $S$ ne peut plus redescendre. Donc, à tout instant après le premier coup,

$$S > S_0.$$

### Conclusion

Si Antoine retrouvait un jour exactement la configuration de départ, la somme des carrés vaudrait de nouveau $S_0$, ce qui vient d'être exclu.

$$\boxed{\text{La configuration de départ ne peut jamais réapparaître.}}$$

*Invariant ou monovariant ?* Un **invariant** est une quantité qui ne change jamais ; elle sert à montrer qu'un état est inaccessible depuis un autre. Un **monovariant** est une quantité qui évolue toujours dans le même sens ; elle sert à montrer qu'on ne revient jamais en arrière, ou qu'un processus finit par s'arrêter. Ici, la somme des carrés est un monovariant croissant, et cela suffit.

## Going further

1. Que se passerait-il si l'un des nombres de départ valait $0$ ? Trouvez un exemple où Antoine retrouve sa configuration de départ.
2. Remplacez l'opération par $a \mapsto a - b$ et $b \mapsto b + a$. La somme des carrés est-elle encore un monovariant ?
