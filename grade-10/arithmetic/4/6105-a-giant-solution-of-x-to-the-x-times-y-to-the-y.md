---
id: "6105"
title: "Une solution géante en puissances"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [puissances, decomposition-en-facteurs-premiers, exposants, factorisation]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), MTCircular Winter 2013 et Summer 2013, rubrique « Problem Circle »"
  reference: "MTCircularWinter2013.pdf, « Problem Circle: Simple, Or Impossible? » (Joshua Zucker, d'après Alon Amit) pose la question ; MTCircularSummer2013.pdf, page 17, publie la solution x = 2^12·3^6, y = 2^8·3^8, z = 2^11·3^7 sans aucune vérification. Exposants relus à 150 dpi sur la page rendue, l'extraction de texte les aplatit."
  url: "https://mathteacherscircle.org/newsletter"
  original_language: "en"
  local_copy: "sources/originals/namc/MTCircularWinter2013.pdf"
---

## Statement

On cherche trois entiers $x$, $y$ et $z$, tous strictement plus grands que $1$, tels que

$$x^x \times y^y = z^z .$$

On peut essayer longtemps avec de petits nombres sans jamais tomber juste. Voici pourtant une solution :

$$x = 2^{12} \times 3^6, \qquad y = 2^8 \times 3^8, \qquad z = 2^{11} \times 3^7 .$$

Autrement dit $x = 2\,985\,984$, $y = 1\,679\,616$ et $z = 4\,478\,976$.

Ces trois nombres sont déjà gros, mais $z^z$ s'écrit avec près de trente millions de chiffres. Aucune calculatrice, aucun ordinateur de poche ne peut poser ce calcul.

Démontrer quand même que $x^x \times y^y = z^z$.

## Hints

1. Renonce tout de suite à calculer : il faut travailler sur les **exposants**, jamais sur les nombres.
2. Écris $x^x$ en n'utilisant que des puissances de $2$ et de $3$ : $x^x = \left(2^{12} \times 3^6\right)^x = 2^{12x} \times 3^{6x}$. Fais de même pour $y^y$ et $z^z$.
3. Les deux membres de l'égalité sont alors de la forme $2^{\text{quelque chose}} \times 3^{\text{autre chose}}$. Il suffit donc de vérifier **deux** égalités d'entiers : celle des exposants de $2$, puis celle des exposants de $3$.
4. Pour vérifier $12x + 8y = 11z$, ne calcule surtout pas $12x$ et $8y$ séparément. Remplace $12$ par $2^2 \times 3$ et $8$ par $2^3$, et regarde ce que tu peux mettre en facteur.

## Solution

**Étape 1 : tout écrire en puissances de $2$ et de $3$.**

Comme $x = 2^{12} \times 3^6$,

$$x^x = \left(2^{12} \times 3^6\right)^x = 2^{12x} \times 3^{6x} .$$

De même

$$y^y = \left(2^{8} \times 3^8\right)^y = 2^{8y} \times 3^{8y}, \qquad z^z = \left(2^{11} \times 3^7\right)^z = 2^{11z} \times 3^{7z} .$$

Donc

$$x^x \times y^y = 2^{\,12x + 8y} \times 3^{\,6x + 8y}, \qquad z^z = 2^{\,11z} \times 3^{\,7z} .$$

Un entier ne se décompose en produit de nombres premiers que d'une seule façon. Les deux membres seront donc égaux si et seulement si

$$12x + 8y = 11z \qquad \text{et} \qquad 6x + 8y = 7z .$$

Il ne reste que deux égalités d'entiers à vérifier — et c'est beaucoup plus facile qu'il n'y paraît.

**Étape 2 : l'exposant de $2$.**

$$12x = \left(2^2 \times 3\right) \times 2^{12} \times 3^6 = 2^{14} \times 3^{7},$$

$$8y = 2^3 \times 2^{8} \times 3^8 = 2^{11} \times 3^{8} .$$

Les deux résultats contiennent $2^{11} \times 3^7$. Mettons-le en facteur :

$$12x + 8y = 2^{11} \times 3^{7} \times \left(2^{3} + 3\right) = 2^{11} \times 3^{7} \times 11 = 11 z .$$

La première égalité est vérifiée : tout tient dans le fait que $8 + 3 = 11$.

**Étape 3 : l'exposant de $3$.**

$$6x = \left(2 \times 3\right) \times 2^{12} \times 3^6 = 2^{13} \times 3^{7},$$

et $8y = 2^{11} \times 3^{8}$ comme ci-dessus. En mettant encore $2^{11} \times 3^7$ en facteur :

$$6x + 8y = 2^{11} \times 3^{7} \times \left(2^{2} + 3\right) = 2^{11} \times 3^{7} \times 7 = 7 z .$$

La seconde égalité est vérifiée, et cette fois c'est $4 + 3 = 7$ qui fait tout.

**Conclusion.**

Les deux exposants coïncident, donc

$$x^x \times y^y = 2^{\,11z} \times 3^{\,7z} = z^z .$$

Les trois nombres $x = 2^{12} \times 3^6$, $y = 2^8 \times 3^8$ et $z = 2^{11} \times 3^7$ sont bien une solution de $x^x \times y^y = z^z$ avec $x, y, z > 1$.

## Going further

Remarque la structure de la solution : $z = 2^{11} \times 3^7$ apparaît en facteur dans les deux calculs, et les nombres $11$ et $7$ qui restent sont précisément les exposants de $z$. Ce n'est pas un hasard : c'est en écrivant cette condition que l'on trouve la solution au lieu de la deviner.

Le magazine offrait un livre à qui enverrait une **autre** solution. Si l'on cherche $x$, $y$ et $z$ de la forme $2^a \times 3^b$ avec tous les exposants inférieurs à $19$, celle-ci est la seule (aux rôles de $x$ et $y$ près). Pour en trouver d'autres, il faut donc soit monter beaucoup plus haut dans les exposants, soit faire entrer un troisième nombre premier dans la danse.
