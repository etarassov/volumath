---
id: "3207"
title: "Une fraction géante écrite en base deux"
grade: 11
theme: arithmetic
difficulty: 5
duration_min: 45
tags: [puissances-de-deux, base-deux, factorisation, somme-geometrique, divisibilite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Math Competitions Training, Algebra review"
  reference: "Handout-4789-4966.pdf, section 2.2, exercice 10, d'après AMC 10A 2022, problème 21 (réponse dans Handout-4792-4966.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4789-4966.pdf"
---

## Statement

Tout entier naturel s'écrit d'une seule façon comme somme de puissances de $2$ **toutes différentes** : c'est son écriture en base deux. Par exemple $13 = 2^3 + 2^2 + 2^0$.

On considère le nombre

$$N = \frac{2^{289} + 1}{2^{17} + 1}.$$

On admet que $N$ est un entier. Son écriture en base deux comporte $k$ puissances de $2$ :

$$N = 2^{a_1} + 2^{a_2} + \cdots + 2^{a_k}, \qquad a_1 < a_2 < \cdots < a_k .$$

Combien vaut $k$ ?

## Hints

1. Pose $y = 2^{17}$. Que devient $2^{289}$ ? (Regarde $289 = 17 \times 17$.)
2. Pour $n$ **impair**, on connaît la factorisation
   $$y^n + 1 = (y+1)\left( y^{n-1} - y^{n-2} + y^{n-3} - \cdots - y + 1 \right).$$
   Applique-la avec $n = 17$.
3. Tu obtiens $N$ comme une somme alternée de $17$ termes. Les signes moins empêchent de lire une écriture en base deux : il faut s'en débarrasser.
4. Regroupe les termes **deux par deux** en partant du plus grand. Que vaut $y^{2k} - y^{2k-1}$ ?
5. Un facteur $y - 1 = 2^{17} - 1$ apparaît. Or $2^{17} - 1 = 2^{16} + 2^{15} + \cdots + 2 + 1$. Combien de puissances de $2$ cela fait-il ?
6. Compte les paquets, puis vérifie que deux paquets différents ne produisent jamais la même puissance de $2$.

## Solution

**On change de variable.**

Comme $289 = 17 \times 17$, en posant $y = 2^{17}$ on a $2^{289} = y^{17}$, et

$$N = \frac{y^{17} + 1}{y + 1}.$$

**La factorisation d'une somme de puissances impaires.**

Pour $n$ impair,

$$y^n + 1 = (y+1)\left( y^{n-1} - y^{n-2} + \cdots - y + 1 \right).$$

Avec $n = 17$ cela donne directement

$$N = y^{16} - y^{15} + y^{14} - y^{13} + \cdots + y^2 - y + 1 .$$

C'est une somme alternée de $17$ termes : les huit termes de rang pair sont positifs, les huit de rang impair sont négatifs, et il reste le $+1$ final.

**On supprime les signes moins.**

Regroupons deux par deux, en laissant le $1$ de côté :

$$N = \left( y^{16} - y^{15} \right) + \left( y^{14} - y^{13} \right) + \cdots + \left( y^{2} - y \right) + 1 .$$

Il y a exactement **huit** paquets. Chacun s'écrit, pour $j = 1, 2, \ldots, 8$ :

$$y^{2j} - y^{2j-1} = y^{2j-1}\left( y - 1 \right).$$

**On revient aux puissances de $2$.**

Ici $y - 1 = 2^{17} - 1$, et on sait que

$$2^{17} - 1 = 2^{16} + 2^{15} + \cdots + 2^{1} + 2^{0},$$

c'est-à-dire une somme de **17** puissances de $2$ consécutives (c'est le nombre qui s'écrit avec dix-sept $1$ en base deux).

Par ailleurs $y^{2j-1} = 2^{17(2j-1)}$. Donc le $j$-ième paquet vaut

$$2^{17(2j-1)}\left( 2^{16} + 2^{15} + \cdots + 2^0 \right) = 2^{17(2j-1)+16} + 2^{17(2j-1)+15} + \cdots + 2^{17(2j-1)} .$$

C'est une somme de $17$ puissances de $2$ dont les exposants sont les $17$ entiers consécutifs

$$17(2j-1), \ 17(2j-1)+1, \ \ldots, \ 17(2j-1)+16 .$$

**Les paquets ne se chevauchent pas.**

Pour $j = 1, 2, \ldots, 8$, ces blocs d'exposants sont

$$[17,\,33],\quad [51,\,67],\quad [85,\,101],\quad [119,\,135],$$
$$[153,\,169],\quad [187,\,203],\quad [221,\,237],\quad [255,\,271].$$

Deux blocs consécutifs sont séparés par un trou (par exemple entre $33$ et $51$), donc ils sont deux à deux disjoints. Et aucun ne contient l'exposant $0$, qui est celui du terme $+1$ resté de côté.

Toutes les puissances de $2$ apparaissant dans $N$ sont donc **différentes**, ce qui signifie qu'on a bien obtenu l'écriture en base deux de $N$.

**On compte.**

$$k = \underbrace{8}_{\text{paquets}} \times \underbrace{17}_{\text{puissances par paquet}} + \underbrace{1}_{\text{le terme } 2^0} = 136 + 1 = 137 .$$

**Conclusion.** $k = 137$.

## Going further

1. Justifier que $N$ est bien un entier, c'est-à-dire que $2^{17}+1$ divise $2^{289}+1$.
2. Où la démonstration se casserait-elle si l'on remplaçait $289 = 17 \times 17$ par $17 \times 16$ ? (Le quotient est-il encore un entier ?)
3. Écrire en base deux le petit frère du problème : $\dfrac{2^{25}+1}{2^{5}+1}$. Combien de puissances de $2$ y trouve-t-on ? Vérifier que la formule $ (\tfrac{n-1}{2}) \times n + 1$ avec $n = 5$ donne le bon compte.
