---
id: "8707"
title: "Trois quotients égaux"
grade: 10
theme: algebra
difficulty: 4
duration_min: 30
tags: [fractions, disjonction-de-cas, analyse-synthese, symetrie]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024"
  reference: "poly_valbonne_2024.pdf, Coupe Animath de printemps 2024, exercices collégiens, exercice 6"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Soient $x$, $y$, $z$ trois nombres réels tous non nuls, tels que

$$\frac{x+y}{z} = \frac{y+z}{x} = \frac{z+x}{y} .$$

Quelles valeurs le nombre

$$\frac{(x+y)(y+z)(z+x)}{xyz}$$

peut-il prendre ?

## Hints

1. Commence par un exemple : que valent les trois quotients si $x = y = z$ ? Et que vaut alors le nombre cherché ?
2. Est-ce la seule réponse ? Cherche un triplet où $x$, $y$, $z$ ne sont pas tous égaux. Essaie de rendre $x + y + z$ nul.
3. L'astuce de la démonstration : ajoute $1$ à chacun des trois quotients. Que devient le numérateur de chacun ?
4. Tu obtiens alors trois fractions égales dont le numérateur est le même. Deux cas se présentent selon que ce numérateur commun est nul ou non.
5. N'oublie pas la dernière étape : il faut aussi **vérifier** que chacune des valeurs trouvées est réellement atteinte, en exhibant un triplet.

## Solution

Notons $P = \dfrac{(x+y)(y+z)(z+x)}{xyz}$ le nombre cherché. On remarque tout de suite que

$$P = \frac{x+y}{z} \times \frac{y+z}{x} \times \frac{z+x}{y} ,$$

c'est-à-dire que $P$ est le **produit des trois quotients** de l'énoncé. Comme ces trois quotients sont égaux, si on les appelle tous $q$, alors

$$P = q^3 .$$

Tout se ramène donc à trouver les valeurs possibles de $q$.

### Analyse : quelles valeurs $q$ peut-il prendre ?

**L'astuce : ajouter $1$ partout.**

Ajoutons $1$ à chacun des trois quotients. Comme ils sont égaux, les résultats restent égaux. Et $1$ s'écrit $\dfrac{z}{z}$ dans le premier, $\dfrac{x}{x}$ dans le deuxième, $\dfrac{y}{y}$ dans le troisième :

$$\frac{x+y}{z} + \frac{z}{z} \;=\; \frac{y+z}{x} + \frac{x}{x} \;=\; \frac{z+x}{y} + \frac{y}{y} ,$$

c'est-à-dire

$$\frac{x+y+z}{z} \;=\; \frac{x+y+z}{x} \;=\; \frac{x+y+z}{y} .$$

Les trois fractions ont maintenant **le même numérateur**. Deux cas se présentent.

**Cas 1 : $x + y + z \neq 0$.**

On peut alors diviser les trois fractions par $x+y+z$, ce qui donne

$$\frac{1}{z} = \frac{1}{x} = \frac{1}{y} ,$$

donc $x = y = z$. Chaque quotient vaut alors

$$q = \frac{x+y}{z} = \frac{2x}{x} = 2 ,$$

et donc $P = 2^3 = 8$.

**Cas 2 : $x + y + z = 0$.**

Alors $x + y = -z$, et le premier quotient vaut

$$q = \frac{x+y}{z} = \frac{-z}{z} = -1 .$$

Donc $P = (-1)^3 = -1$.

À ce stade, on sait que **les seules valeurs possibles sont $8$ et $-1$**. Mais il reste à vérifier qu'elles sont réellement atteintes : rien ne garantit encore qu'il existe des triplets convenables.

### Synthèse : les deux valeurs sont bien atteintes

**La valeur $8$.** Prenons $x = y = z = 1$. Les trois quotients valent $\dfrac{2}{1} = 2$, ils sont bien égaux, et

$$P = 2 \times 2 \times 2 = 8 .$$

**La valeur $-1$.** Prenons $x = 1$, $y = -3$, $z = 2$ : ces trois nombres sont non nuls et leur somme est nulle. On vérifie :

$$\frac{x+y}{z} = \frac{-2}{2} = -1, \qquad \frac{y+z}{x} = \frac{-1}{1} = -1, \qquad \frac{z+x}{y} = \frac{3}{-3} = -1 .$$

Les trois quotients sont bien égaux, et

$$P = (-1) \times (-1) \times (-1) = -1 .$$

**Conclusion.** Le nombre $\dfrac{(x+y)(y+z)(z+x)}{xyz}$ peut prendre exactement deux valeurs : $\boxed{8}$ et $\boxed{-1}$.

## Going further

1. **Une autre route, sans disjonction de cas.** Posons $q = \dfrac{x+y}{z}$. Développe $q^3 = \dfrac{(x+y)(y+z)(z+x)}{xyz}$ en distribuant le produit du numérateur : tu verras apparaître $2xyz$ plus six termes qui se regroupent exactement en $\dfrac{x+y}{z} + \dfrac{y+z}{x} + \dfrac{z+x}{y} = 3q$. Tu obtiens donc l'équation

   $$q^3 = 3q + 2 .$$

   Vérifie que $q^3 - 3q - 2 = (q-2)(q+1)^2$, et retrouve $q = 2$ ou $q = -1$.

2. Un piège dans lequel beaucoup de candidats sont tombés : diviser par $x - y$ ou par $x+y+z$ sans vérifier que ce n'est pas nul. C'est précisément ce qui fait disparaître la solution $-1$. Chaque fois que tu divises par une expression, demande-toi si elle peut s'annuler.

3. Et si on demandait seulement que $x$, $y$, $z$ soient **strictement positifs** ? Combien de valeurs reste-t-il alors ?
