---
id: "5008"
title: "Le numéro à neuf chiffres"
grade: 9
theme: arithmetic
difficulty: 5
duration_min: 60
tags: [criteres-de-divisibilite, chiffres, disjonction-de-cas, unicite]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), « License Plates and Divisibility », Sonya Kohli, Philadelphia Area Math Teachers' Circle"
  reference: "Amazing-Numbers-PAMTC.pdf, questions 5 à 7"
  url: "https://mathcircles.org/activity/license-plates-and-divisibility/"
  original_language: "en"
  local_copy: "sources/originals/namc/Amazing-Numbers-PAMTC.pdf"
---

## Statement

Linda affirme que son numéro d'identification a une propriété remarquable. C'est un nombre de
neuf chiffres qui utilise chacun des chiffres $1, 2, 3, \ldots, 9$ **une fois et une seule**,
et tel que, pour chaque $k$ de $1$ à $9$, le nombre formé par les $k$ premiers chiffres (à
partir de la gauche) est divisible par $k$.

Retrouver le numéro de Linda et démontrer qu'il n'y en a qu'un seul.

## Hints

1. Note $c_1 c_2 \ldots c_9$ les neuf chiffres, dans l'ordre. Commence par le chiffre le plus
   contraint : le cinquième.
2. Regarde ensuite les places paires. Combien de chiffres pairs as-tu à ta disposition, et
   combien de places paires ?
3. Un nombre est divisible par $4$ quand le nombre formé par ses deux derniers chiffres l'est.
   Applique cela à $c_3c_4$, en te souvenant que $c_3$ est impair.
4. Un nombre est divisible par $8$ quand le nombre formé par ses trois derniers chiffres l'est.
   Applique cela à $c_6c_7c_8$. Le chiffre $c_6$ est pair : montre qu'il ne compte pas, et
   qu'il ne reste qu'une condition liant $c_7$ et $c_8$.
5. Tu devrais trouver que $c_4$ et $c_8$ occupent, dans un ordre à déterminer, les deux
   chiffres $2$ et $6$.
6. La somme $1 + 2 + \cdots + 9$ vaut $45$. Utilise le critère de divisibilité par $3$ sur les
   trois premiers chiffres, puis sur les six premiers.
7. Il ne restera plus qu'une dizaine de candidats. La divisibilité par $7$ n'a pas de critère
   simple : il faut poser les divisions.

## Solution

Notons $c_1 c_2 c_3 c_4 c_5 c_6 c_7 c_8 c_9$ les neuf chiffres. Ce sont les chiffres $1$ à $9$,
chacun utilisé une fois.

### Étape 1. Le cinquième chiffre

Le nombre $c_1 \ldots c_5$ est divisible par $5$, donc $c_5$ vaut $0$ ou $5$. Le chiffre $0$
n'est pas disponible :

$$c_5 = 5 .$$

### Étape 2. Les places paires portent les chiffres pairs

Le nombre $c_1 \ldots c_k$ est divisible par $k$ ; en particulier, pour $k = 2, 4, 6, 8$ il est
pair, donc son dernier chiffre est pair. Ainsi $c_2$, $c_4$, $c_6$, $c_8$ sont pairs.

Il n'y a que quatre chiffres pairs disponibles, $2$, $4$, $6$, $8$ : ils occupent donc
exactement les places $2$, $4$, $6$, $8$. Les quatre chiffres impairs restants, $1$, $3$, $7$,
$9$, occupent les places $1$, $3$, $7$, $9$.

$$\{c_2, c_4, c_6, c_8\} = \{2, 4, 6, 8\}, \qquad \{c_1, c_3, c_7, c_9\} = \{1, 3, 7, 9\} .$$

Au passage : le nombre entier a pour somme des chiffres $45$, donc il est divisible par $9$.
La condition $k = 9$ est automatiquement vérifiée.

### Étape 3. Le quatrième chiffre, grâce à 4

Comme $100$ est un multiple de $4$, un nombre est divisible par $4$ exactement quand le nombre
formé par ses deux derniers chiffres l'est. Il faut donc que $\overline{c_3c_4} = 10c_3 + c_4$
soit un multiple de $4$.

Or $10 c_3 = 8c_3 + 2c_3$, et $8c_3$ est un multiple de $4$. Il reste la condition : $2c_3 + c_4$
est un multiple de $4$. Comme $c_3$ est impair, $2c_3$ laisse le reste $2$ dans la division par
$4$. Donc $c_4$ doit lui aussi laisser le reste $2$ :

$$c_4 \in \{2, 6\} .$$

### Étape 4. Le huitième chiffre, grâce à 8

Comme $1000$ est un multiple de $8$, un nombre est divisible par $8$ exactement quand le nombre
formé par ses trois derniers chiffres l'est. Il faut donc que
$\overline{c_6c_7c_8} = 100c_6 + 10c_7 + c_8$ soit un multiple de $8$.

Or $100 c_6 = 96 c_6 + 4 c_6$, et $96 c_6$ est un multiple de $8$. Comme $c_6$ est pair,
$4 c_6$ est un multiple de $8$ lui aussi. Le chiffre $c_6$ ne joue donc aucun rôle, et la
condition devient : $10c_7 + c_8$ est un multiple de $8$, c'est-à-dire, en retirant $8c_7$,

$$2c_7 + c_8 \text{ est un multiple de } 8 .$$

Le chiffre $c_7$ est impair, donc $c_7 \in \{1, 3, 7, 9\}$, et $c_8$ est pair.

| $c_7$ | $1$ | $3$ | $7$ | $9$ |
|---|---|---|---|---|
| $2c_7$ | $2$ | $6$ | $14$ | $18$ |
| $c_8$ pair tel que $2c_7 + c_8$ soit multiple de $8$ | $6$ | $2$ | $2$ | $6$ |

Donc $c_8 \in \{2, 6\}$ également.

### Étape 5. Les places $4$ et $8$ portent $2$ et $6$

Les chiffres $c_4$ et $c_8$ sont tous les deux dans $\{2, 6\}$ et ils sont différents, donc

$$\{c_4, c_8\} = \{2, 6\} \qquad \text{et par conséquent} \qquad \{c_2, c_6\} = \{4, 8\} .$$

### Étape 6. Le critère de divisibilité par 3, deux fois

Le nombre $c_1c_2c_3$ est divisible par $3$, donc $c_1 + c_2 + c_3$ est un multiple de $3$.
Le nombre $c_1 \ldots c_6$ est divisible par $6$, donc aussi par $3$, donc
$c_1 + c_2 + \cdots + c_6$ est un multiple de $3$. En soustrayant :

$$c_4 + c_5 + c_6 \text{ est un multiple de } 3, \quad \text{c'est-à-dire} \quad c_4 + c_6 + 5 \text{ est un multiple de } 3 .$$

On essaie les quatre combinaisons, avec $c_4 \in \{2, 6\}$ et $c_6 \in \{4, 8\}$ :

| $c_4$ | $c_6$ | $c_4 + c_6 + 5$ | multiple de $3$ ? |
|---|---|---|---|
| $2$ | $4$ | $11$ | non |
| $2$ | $8$ | $15$ | **oui** |
| $6$ | $4$ | $15$ | **oui** |
| $6$ | $8$ | $19$ | non |

Il reste donc deux cas.

- **Cas A :** $c_4 = 2$, $c_6 = 8$, et donc $c_8 = 6$, $c_2 = 4$.
- **Cas B :** $c_4 = 6$, $c_6 = 4$, et donc $c_8 = 2$, $c_2 = 8$.

### Étape 7. Le cas A

Ici $c_8 = 6$, donc d'après le tableau de l'étape 4, $c_7 \in \{1, 9\}$.

La condition « $c_1 + c_2 + c_3$ multiple de $3$ » avec $c_2 = 4$ donne : $c_1 + c_3$ laisse le
reste $2$ dans la division par $3$. Les restes des chiffres impairs sont

$$1 \to 1, \qquad 3 \to 0, \qquad 7 \to 1, \qquad 9 \to 0 .$$

Pour que la somme de deux d'entre eux laisse le reste $2$, il faut prendre les deux chiffres de
reste $1$, c'est-à-dire $\{c_1, c_3\} = \{1, 7\}$. Alors $\{c_7, c_9\} = \{3, 9\}$, et comme
$c_7 \in \{1, 9\}$, on a $c_7 = 9$ et $c_9 = 3$.

Le nombre est donc $c_1\,4\,c_3\,2\,5\,8\,9\,6\,3$ avec $\{c_1, c_3\} = \{1, 7\}$ : deux
candidats seulement.

### Étape 8. Le cas B

Ici $c_8 = 2$, donc $c_7 \in \{3, 7\}$.

La condition « $c_1 + c_2 + c_3$ multiple de $3$ » avec $c_2 = 8$ donne : $c_1 + c_3$ laisse le
reste $1$ dans la division par $3$. Il faut donc un chiffre de reste $1$ (soit $1$, soit $7$) et
un chiffre de reste $0$ (soit $3$, soit $9$).

- Si $c_7 = 3$, il reste $\{c_1, c_3, c_9\} = \{1, 7, 9\}$, et la paire $\{c_1, c_3\}$ doit
  contenir $9$ : c'est $\{1, 9\}$ ou $\{7, 9\}$.
- Si $c_7 = 7$, il reste $\{c_1, c_3, c_9\} = \{1, 3, 9\}$, et la paire $\{c_1, c_3\}$ doit
  contenir exactement un chiffre de reste $1$, donc le $1$ : c'est $\{1, 3\}$ ou $\{1, 9\}$.

Cela fait quatre paires, chacune dans deux ordres : huit candidats.

### Étape 9. La divisibilité par 7 tranche

Il n'existe pas de critère simple pour $7$ : il faut poser les divisions. Il reste dix
candidats au total, et pour chacun on ne teste que les **sept premiers chiffres**.

| candidat ($7$ premiers chiffres) | reste dans la division par $7$ |
|---|---|
| $1472589$ | $6$ |
| $7412589$ | $2$ |
| $1896543$ | $5$ |
| $9816543$ | $2$ |
| $7896543$ | $4$ |
| $9876543$ | $5$ |
| $1836547$ | $6$ |
| $3816547$ | $\mathbf{0}$ |
| $1896547$ | $2$ |
| $9816547$ | $6$ |

Un seul survit : $3816547$, qui vaut $7 \times 545\,221$.

### Conclusion

Le seul nombre possible est

$$\boxed{381\,654\,729} .$$

Vérification complète :

| $k$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ |
|---|---|---|---|---|---|---|---|---|---|
| $k$ premiers chiffres | $3$ | $38$ | $381$ | $3816$ | $38165$ | $381654$ | $3816547$ | $38165472$ | $381654729$ |
| quotient par $k$ | $3$ | $19$ | $127$ | $954$ | $7633$ | $63\,609$ | $545\,221$ | $4\,770\,684$ | $42\,406\,081$ |

## Going further

On peut aller plus loin et utiliser les **dix** chiffres $0, 1, \ldots, 9$, chacun une fois, en
demandant en plus que le nombre entier de dix chiffres soit divisible par $10$.

Être divisible par $10$ veut dire se terminer par $0$. Le chiffre $0$ est donc en dernière
position, et les neuf premiers chiffres forment exactement un nombre du problème précédent. Il
n'y a donc qu'une seule réponse :

$$3\,816\,547\,290 .$$

Et si on voulait continuer jusqu'à $11$, $12$, ... ? Ce n'est plus possible avec des chiffres
tous distincts, puisqu'il n'y a que dix chiffres. Mais on peut poser la question sans exiger
que les chiffres soient distincts : quel est le plus long nombre dont les $k$ premiers chiffres
sont divisibles par $k$ pour tout $k$ ? La réponse est connue : il a $25$ chiffres, et c'est
$3\,608\,528\,850\,368\,400\,786\,036\,725$.
