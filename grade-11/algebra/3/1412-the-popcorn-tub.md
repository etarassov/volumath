---
id: "1412"
title: "Le seau de pop-corn"
grade: 11
theme: algebra
difficulty: 3
duration_min: 30
tags: [suites-arithmetiques, somme, nombres-impairs, carres]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 2, Winter Competition « Game »"
  reference: "Handout-3916-3573.pdf, partie 1 « Numbers », problème 3 (réponse dans Handout-3917-3573.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-3916-3573.pdf"
---

## Statement

Alex et Anna se partagent un seau de pop-corn, chacun leur tour, en commençant par Alex.

Alex prend $1$ grain, Anna en prend $2$, Alex en prend $3$, Anna en prend $4$, et ainsi de suite : à chaque tour on prend un grain de plus qu'au tour précédent.

Celui qui joue le **dernier tour** mange tout ce qui reste dans le seau, même s'il n'y a pas assez de grains pour faire un tour complet.

À la fin, Alex a mangé exactement $2017$ grains. Combien Anna en a-t-elle mangé ?

## Hints

1. Écrire la liste de ce que prend Alex : $1$, puis $3$, puis $5$... Et celle d'Anna : $2$, puis $4$, puis $6$...
2. Après $k$ tours complets d'Alex, combien de grains a-t-il pris en tout ? La somme $1 + 3 + 5 + \cdots + (2k-1)$ a une forme très simple, à deviner sur les premiers cas puis à démontrer.
3. Chercher le plus grand $k$ tel que cette somme ne dépasse pas $2017$.
4. On trouve un total un peu inférieur à $2017$, et le tour suivant d'Alex serait trop gros. Qu'est-ce que cela dit sur qui a terminé le seau ?
5. Une fois qu'on sait qu'Alex a joué le dernier tour, le compte d'Anna est une simple somme d'entiers pairs consécutifs.

## Solution

**Ce que prend chacun.**

Les tours se succèdent dans l'ordre : Alex $1$, Anna $2$, Alex $3$, Anna $4$, Alex $5$, ... Alex joue les tours de rang impair, Anna ceux de rang pair. Donc

- Alex prend successivement $1, 3, 5, 7, \ldots$, les nombres **impairs** ;
- Anna prend successivement $2, 4, 6, 8, \ldots$, les nombres **pairs**.

**La somme des premiers impairs.**

Si Alex a joué $k$ tours complets, il a mangé

$$1 + 3 + 5 + \cdots + (2k-1).$$

C'est la somme des $k$ premiers termes de la suite arithmétique de premier terme $1$ et de raison $2$ :

$$1 + 3 + \cdots + (2k-1) = k \times \frac{1 + (2k-1)}{2} = k \times k = k^2 .$$

La somme des $k$ premiers nombres impairs vaut donc $k^2$. (On le voit aussi en rangeant des jetons en carré : pour passer du carré $k \times k$ au carré $(k+1) \times (k+1)$, on ajoute une ligne, une colonne et un coin, soit $2k+1$ jetons.)

**Où s'arrête Alex.**

Cherchons le plus grand $k$ tel que $k^2 \leqslant 2017$. Comme

$$44^2 = 1936 \leqslant 2017 < 2025 = 45^2 ,$$

Alex a joué au moins $44$ tours complets, qui lui ont donné $1936$ grains. Son $45^{\text{e}}$ tour, s'il était complet, lui en apporterait $2 \times 45 - 1 = 89$ de plus, soit $2025$ grains en tout : c'est trop, puisqu'il n'en a mangé que $2017$.

Alex a donc bien entamé un $45^{\text{e}}$ tour, mais il n'a pas pu le finir : il n'a ramassé que

$$2017 - 1936 = 81 \text{ grains au lieu de } 89 .$$

D'après la règle, celui qui ne peut pas faire un tour complet est celui qui joue **le dernier tour** et qui vide le seau. C'est donc Alex qui a terminé le seau, et Anna n'a plus rien pris après lui.

**Le compte d'Anna.**

Anna a joué ses tours entre les tours d'Alex. Comme Alex a joué $45$ tours (les rangs $1, 3, 5, \ldots, 89$) et qu'Anna joue juste après chacun sauf le dernier, elle a joué $44$ tours complets, prenant

$$2 + 4 + 6 + \cdots + 88 = 2\,(1 + 2 + \cdots + 44) = 2 \times \frac{44 \times 45}{2} = 44 \times 45 = 1980 .$$

**Conclusion.** Anna a mangé $\boxed{1980}$ grains de pop-corn.

**Vérification.** Le seau contenait $2017 + 1980 = 3997$ grains. Les $88$ premiers tours complets consomment $1 + 2 + \cdots + 88 = \frac{88 \times 89}{2} = 3916$ grains, et il en reste alors $3997 - 3916 = 81$. Le tour suivant, celui d'Alex, demanderait $89$ grains : il ne peut pas être complet, Alex ramasse les $81$ restants et le jeu s'arrête. Tout concorde.

## Going further

1. Si Alex avait mangé exactement $2025$ grains, pourrait-on encore dire combien Anna en a mangé ? Donner un encadrement.
2. Si le seau contient exactement $10\,000$ grains, combien chacun en mange-t-il ?
3. Montrer qu'après un nombre pair de tours **complets**, Anna a toujours mangé strictement plus de grains qu'Alex.
