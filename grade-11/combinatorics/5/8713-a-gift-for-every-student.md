---
id: "8713"
title: "Un cadeau pour chaque élève"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 60
tags: [principe-des-tiroirs, algorithme-glouton, optimum, inegalite, rangement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2024"
  reference: "poly_valbonne_2024.pdf, Coupe Animath de printemps 2024, exercices lycéens, exercice 15"
  url: "https://maths-olympiques.fr/wp-content/uploads/2024/09/poly_valbonne_2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/poly_valbonne_2024.pdf"
---

## Statement

Au stage il y a $n$ élèves, numérotés de $1$ à $n$, avec $n \geqslant 2$.

Théo dispose d'une réserve de cadeaux tous différents, et chaque cadeau n'existe qu'en un seul exemplaire. L'élève numéro $i$ aime exactement $x_i$ cadeaux de la réserve, où $x_i$ est un entier strictement positif. Théo connaît toutes ces listes.

Théo voudrait donner un cadeau à chaque élève, de façon que chaque élève reçoive un cadeau qu'il aime. Deux élèves ne peuvent évidemment pas recevoir le même cadeau.

Déterminer le plus grand réel $c > 0$ ayant la propriété suivante :

> quelles que soient les listes des élèves, dès que
> $$\frac{1}{x_1} + \frac{1}{x_2} + \cdots + \frac{1}{x_n} < c ,$$
> Théo réussit à coup sûr.

## Hints

1. Une question « quel est le plus grand $c$ ? » demande deux démonstrations. D'abord : trouver une situation d'échec avec une somme aussi petite que possible, ce qui majore $c$. Ensuite : montrer qu'en dessous de cette valeur, Théo réussit toujours.
2. Pour la majoration, il faut faire échouer Théo. Quand est-ce impossible de servir $n$ élèves ? Quand ils veulent tous piocher dans un trop petit ensemble commun. Fais aimer à tous les élèves exactement les **mêmes** $n-1$ cadeaux.
3. Pour la seconde partie, range les élèves de sorte que $x_1 \leqslant x_2 \leqslant \cdots \leqslant x_n$, puis sers-les dans cet ordre, en donnant à chacun n'importe quel cadeau encore libre qu'il aime.
4. Pour que ce procédé marche, il suffit d'avoir $x_k \geqslant k$ pour tout $k$. Pourquoi ? Et comment la petitesse de la somme des $\frac{1}{x_i}$ garantit-elle cela ?
5. Démontre d'abord le lemme : pour tout $k$ compris entre $1$ et $n-1$, il y a au plus $k$ élèves dont la liste contient au plus $k$ cadeaux. Raisonne par l'absurde et minore la somme.

## Solution

**Réponse : $c = \dfrac{n}{n-1}$.**

### Partie 1 : $c$ ne peut pas dépasser $\dfrac{n}{n-1}$

Il suffit d'exhiber une situation où la somme vaut exactement $\dfrac{n}{n-1}$ et où Théo échoue. Si $c$ était strictement plus grand que $\dfrac{n}{n-1}$, cette situation vérifierait la condition « somme $< c$ » sans que Théo puisse réussir, ce qui contredirait la propriété.

Prenons donc $n-1$ cadeaux et décrétons que **tous les élèves aiment exactement ces $n-1$ cadeaux-là**, et aucun autre. Alors

$$x_1 = x_2 = \cdots = x_n = n-1, \qquad \text{donc} \qquad \frac{1}{x_1} + \cdots + \frac{1}{x_n} = \frac{n}{n-1} .$$

Théo doit servir $n$ élèves en piochant dans un ensemble de $n-1$ cadeaux, sans répétition. C'est impossible : il y a plus d'élèves que de cadeaux disponibles.

Donc $c \leqslant \dfrac{n}{n-1}$.

### Partie 2 : la valeur $\dfrac{n}{n-1}$ convient

Supposons maintenant que

$$\frac{1}{x_1} + \frac{1}{x_2} + \cdots + \frac{1}{x_n} < \frac{n}{n-1} ,$$

et montrons que Théo réussit toujours.

Quitte à renuméroter les élèves, supposons les listes rangées par taille croissante :

$$x_1 \leqslant x_2 \leqslant \cdots \leqslant x_n .$$

**Le lemme.**

> Pour tout entier $k$ avec $1 \leqslant k \leqslant n-1$, il y a **au plus $k$ élèves** dont la liste contient au plus $k$ cadeaux.

*Démonstration.* Supposons le contraire : il existe $k+1$ élèves dont la liste contient au plus $k$ cadeaux. Pour chacun de ces $k+1$ élèves, $x_i \leqslant k$, donc $\dfrac{1}{x_i} \geqslant \dfrac{1}{k}$. Tous les autres termes de la somme sont positifs, donc

$$\frac{1}{x_1} + \cdots + \frac{1}{x_n} \;\geqslant\; \frac{k+1}{k} \;=\; 1 + \frac{1}{k} .$$

Or $k \leqslant n-1$, donc $\dfrac{1}{k} \geqslant \dfrac{1}{n-1}$, et

$$1 + \frac{1}{k} \;\geqslant\; 1 + \frac{1}{n-1} \;=\; \frac{n}{n-1} .$$

La somme serait donc supérieure ou égale à $\dfrac{n}{n-1}$, ce qui contredit l'hypothèse. Le lemme est démontré.

**Conséquence : $x_k \geqslant k$ pour tout $k$.**

Soit $k$ entre $1$ et $n$, et supposons par l'absurde que $x_k \leqslant k-1$.

Comme les listes sont rangées par taille croissante, les élèves $1, 2, \ldots, k$ ont tous une liste de taille au plus $k-1$ : cela fait $k$ élèves dont la liste contient au plus $k-1$ cadeaux.

Appliquons le lemme avec l'entier $k-1$. C'est légitime : on a $k-1 \geqslant 1$ (car $x_k \leqslant k-1$ et $x_k \geqslant 1$ forcent $k \geqslant 2$) et $k - 1 \leqslant n-1$. Le lemme dit qu'il y a au plus $k-1$ tels élèves. Or on en a trouvé $k$. Contradiction.

Donc $x_k \geqslant k$ pour tout $k$ de $1$ à $n$.

**La distribution.**

Théo sert les élèves dans l'ordre $1, 2, \ldots, n$, en donnant à chacun n'importe quel cadeau qu'il aime et qui n'a pas encore été donné.

Vérifions que c'est toujours possible. Au moment de servir l'élève $k$, exactement $k-1$ cadeaux ont déjà été distribués. L'élève $k$ aime $x_k \geqslant k$ cadeaux. Comme $k > k-1$, sa liste contient au moins un cadeau qui n'a pas encore été donné. Théo lui donne celui-là.

De proche en proche, les $n$ élèves reçoivent chacun un cadeau qu'ils aiment, et tous différents.

### Conclusion

La valeur $\dfrac{n}{n-1}$ marche, et aucune valeur plus grande ne marche. Le plus grand réel cherché est donc

$$\boxed{\,c = \frac{n}{n-1}\,} .$$

*Deux remarques de méthode.* La première partie est la plus facile des deux et c'est pourtant celle que la plupart des candidats ont ratée : trouver un seul exemple d'échec suffisait. La seconde partie repose entièrement sur le fait $x_k \geqslant k$ : c'est le pont entre une hypothèse sur une **somme** et une conclusion sur un **rangement**.

## Going further

1. Attention à un raccourci tentant et faux : « si $x_k \geqslant k$ pour tout $k$, il est clair qu'on peut distribuer ». Ce n'est pas clair du tout, c'est justement le dernier paragraphe de la démonstration, et il faut servir les élèves **dans le bon ordre**. Que se passe-t-il si Théo sert d'abord l'élève ayant la plus longue liste ?

2. La condition $x_k \geqslant k$ après rangement est en fait équivalente à la condition suivante, bien plus parlante : pour tout groupe d'élèves, la réunion de leurs listes contient au moins autant de cadeaux que le groupe contient d'élèves. Ce résultat général s'appelle le **théorème des mariages de Hall**. Essaie de démontrer qu'ici les deux conditions disent la même chose.

3. Reprends la question avec $n = 3$ : $c = \frac{3}{2}$. Trouve toutes les familles $(x_1, x_2, x_3)$ d'entiers dont la somme des inverses est exactement $\frac{3}{2}$, et regarde lesquelles permettent quand même à Théo de réussir.
