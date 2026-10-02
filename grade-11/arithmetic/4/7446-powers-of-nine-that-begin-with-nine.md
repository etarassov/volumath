---
id: "7446"
title: "Les puissances de 9 qui commencent par 9"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 40
tags: [puissances, nombre-de-chiffres, denombrement, encadrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2011, chasse au trésor"
  reference: "stage_ete_2011.pdf, « Chasse au trésor », exercices des moyens, exercice 8"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2011.pdf"
---

## Statement

On considère la liste des $4001$ nombres
$$9^0, \ 9^1, \ 9^2, \ \ldots, \ 9^{4000}.$$

On sait que $9^{4000}$ s'écrit avec $3817$ chiffres.

Combien de nombres de cette liste commencent par le chiffre $9$ ?

## Hints

1. Ne cherche pas à calculer ces nombres. Suis plutôt **le nombre de chiffres** de $9^k$ quand
   $k$ augmente de $1$.
2. Multiplier par $9$, c'est presque multiplier par $10$. De combien le nombre de chiffres
   peut-il augmenter à chaque étape ?
3. La question est en fait : combien de fois le nombre de chiffres **n'augmente pas** ? Essaie de
   voir que c'est exactement dans ce cas-là que le nombre suivant commence par $9$.
4. Compte ensuite : tu connais le nombre de chiffres au départ et à l'arrivée, et tu connais le
   nombre d'étapes.

## Solution

Pour chaque $k$ de $0$ à $4000$, notons $d_k$ le nombre de chiffres de $9^k$.

On sait que $d_0 = 1$ (car $9^0 = 1$) et que $d_{4000} = 3817$.

### Le nombre de chiffres augmente de $0$ ou de $1$

Rappelons qu'un entier $N$ a exactement $d$ chiffres lorsque
$$10^{d-1} \leqslant N < 10^{d}.$$

Passons de $9^k$ à $9^{k+1} = 9 \times 9^k$. Si $9^k$ a $d$ chiffres, alors
$$9^{k+1} = 9 \times 9^k < 9 \times 10^{d} < 10^{d+1},$$
donc $9^{k+1}$ a au plus $d+1$ chiffres. Et comme $9^{k+1} > 9^k$, il en a au moins $d$. Donc
$$d_{k+1} - d_k \in \{0 \, ; \, 1\}.$$

C'est le point de départ : multiplier par $9$ fait gagner un chiffre, ou aucun, jamais deux.

### Quand le nombre de chiffres n'augmente pas, le nombre commence par $9$

Montrons l'équivalence
$$d_{k+1} = d_k \qquad \Longleftrightarrow \qquad 9^{k+1} \text{ commence par le chiffre } 9.$$

**Sens direct.** Supposons $d_{k+1} = d_k = d$. Alors $9^k \geqslant 10^{d-1}$, donc
$$9^{k+1} = 9 \times 9^k \geqslant 9 \times 10^{d-1}.$$
Par ailleurs $9^{k+1}$ a $d$ chiffres, donc $9^{k+1} < 10^{d}$. Ainsi
$$9 \times 10^{d-1} \leqslant 9^{k+1} < 10^{d},$$
et un entier de $d$ chiffres situé dans cet intervalle commence forcément par $9$.

**Sens réciproque.** Supposons que $9^{k+1}$ commence par $9$, et notons $d = d_{k+1}$ son nombre
de chiffres. Alors
$$9^{k+1} \geqslant 9 \times 10^{d-1}, \qquad \text{donc} \qquad 9^k = \frac{9^{k+1}}{9} \geqslant 10^{d-1},$$
ce qui montre que $9^k$ a au moins $d$ chiffres. Et $9^k < 9^{k+1} < 10^{d}$ montre qu'il en a au
plus $d$. Donc $d_k = d = d_{k+1}$.

### Le comptage

Reprenons la suite $d_0, d_1, \ldots, d_{4000}$. Elle part de $1$, arrive à $3817$, et à chaque
pas elle augmente de $0$ ou de $1$. Elle prend donc **toutes** les valeurs entières entre $1$ et
$3817$, et chacune d'elles est atteinte au moins une fois.

Comptons les indices $k$ de deux façons.

- Il y a $4001$ indices en tout, de $0$ à $4000$.
- Pour chaque valeur $d$ entre $1$ et $3817$, appelons « premier de son groupe » le plus petit
  indice $k$ tel que $d_k = d$. Cela fait exactement $3817$ indices, un par valeur.
- Tous les autres indices $k$ sont ceux qui vérifient $d_k = d_{k-1}$, c'est-à-dire, d'après le
  paragraphe précédent, ceux pour lesquels $9^k$ commence par $9$.

Il y en a donc
$$4001 - 3817 = 184.$$

*(Le cas $k = 0$ est bien traité : $9^0 = 1$ ne commence pas par $9$ et c'est le premier de son
groupe, celui des nombres à un chiffre.)*

### Conclusion

$$\boxed{184}$$

**Le raisonnement en une phrase.** Chaque multiplication par $9$ fait soit gagner un chiffre,
soit commencer le résultat par un $9$, jamais les deux. Il y a $4000$ multiplications, elles font
gagner $3817 - 1 = 3816$ chiffres, donc les $4000 - 3816 = 184$ autres produisent un nombre qui
commence par $9$.

## Going further

Reprendre le raisonnement avec les puissances de $2$ : parmi $2^0, 2^1, \ldots, 2^{1000}$,
combien commencent par le chiffre $1$ ? On donne : $2^{1000}$ s'écrit avec $302$ chiffres.

Ici l'équivalence se retourne : montrer que $2^{k+1}$ commence par $1$ **exactement quand** le
nombre de chiffres augmente, c'est-à-dire quand $d_{k+1} = d_k + 1$. Sans oublier que $2^0 = 1$
commence lui aussi par $1$.
