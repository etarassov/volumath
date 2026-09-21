---
id: "8140"
title: "2018 nombres sans aucune suite arithmétique"
grade: 11
theme: combinatorics
difficulty: 5
duration_min: 45
tags: [base-trois, construction, suite-arithmetique, chiffres]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2018, cours de Groupe B"
  reference: "stage_ete_2018.pdf, Groupe B, « Combinatoire – Récurrence », exercice 5"
  url: "http://maths-olympiques.fr/wp-content/uploads/2019/02/stage_ete_2018.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2018.pdf"
---

## Statement

Peut-on trouver $2018$ entiers naturels, tous différents et tous strictement inférieurs à $150\,000$, tels qu'on ne puisse jamais en choisir trois, disons $a$, $b$, $c$ avec $a \neq c$, vérifiant

$$a + c = 2b \ ?$$

(Autrement dit : aucun des nombres choisis ne doit être la moyenne de deux autres.)

## Hints

1. La réponse est oui, et il faut construire l'ensemble. Ne cherche pas au hasard : cherche une règle d'écriture.
2. La condition $a + c = 2b$ parle d'addition et de doublement. Dans quelle base l'addition et le doublement sont-ils le plus faciles à contrôler ?
3. Essaie les entiers dont l'écriture en base $3$ n'utilise que les chiffres $0$ et $1$.
4. Avec de tels nombres, l'addition $a + c$ ne produit aucune retenue, et le doublement $2b$ non plus. Pourquoi ? Et qu'en déduis-tu, chiffre par chiffre ?
5. Reste à compter combien il y en a en dessous de $150\,000$ : combien de chiffres en base $3$ peux-tu t'autoriser ?

## Solution

**Oui, c'est possible.**

### La construction

Considérons l'ensemble $E$ des entiers naturels dont l'écriture en base $3$ compte au plus $11$ chiffres et n'utilise **que les chiffres $0$ et $1$** :

$$E = \left\{ \varepsilon_{10}\,3^{10} + \varepsilon_9\,3^9 + \cdots + \varepsilon_1\,3 + \varepsilon_0 \ : \ \text{chaque } \varepsilon_i \text{ vaut } 0 \text{ ou } 1 \right\}.$$

### Il y en a assez, et ils sont assez petits

**Combien ?** Il y a $11$ chiffres à choisir, chacun parmi deux valeurs, et deux choix différents donnent deux nombres différents (l'écriture en base $3$ est unique). Donc $E$ contient

$$2^{11} = 2048$$

entiers, ce qui est plus que $2018$.

**Quelle taille ?** Le plus grand élément de $E$ est celui dont tous les chiffres valent $1$ :

$$3^{10} + 3^9 + \cdots + 3 + 1 = \frac{3^{11} - 1}{2} = \frac{177\,147 - 1}{2} = 88\,573,$$

qui est bien strictement inférieur à $150\,000$.

### Aucune suite arithmétique

Soient $a$, $b$, $c$ trois éléments de $E$ tels que $a + c = 2b$. Montrons que $a = c$ ; cela prouvera qu'on ne peut pas en trouver trois avec $a \neq c$.

Notons $a_i$, $b_i$, $c_i$ les chiffres en base $3$ de $a$, $b$, $c$ ; ils valent tous $0$ ou $1$.

**Le membre de droite.** Comme chaque $b_i$ vaut $0$ ou $1$, chaque $2b_i$ vaut $0$ ou $2$ : c'est un chiffre valide en base $3$. Aucune retenue n'apparaît, donc les chiffres de $2b$ en base $3$ sont exactement les $2b_i$.

**Le membre de gauche.** Comme $a_i$ et $c_i$ valent $0$ ou $1$, chaque somme $a_i + c_i$ vaut $0$, $1$ ou $2$ : là non plus il n'y a pas de retenue. Donc les chiffres de $a+c$ en base $3$ sont exactement les $a_i + c_i$.

**La comparaison.** L'écriture d'un entier en base $3$ est unique. De $a + c = 2b$ on tire donc, pour chaque rang $i$,

$$a_i + c_i = 2 b_i.$$

Le membre de droite vaut $0$ ou $2$.

- S'il vaut $0$ : alors $a_i + c_i = 0$, donc $a_i = c_i = 0$.
- S'il vaut $2$ : alors $a_i + c_i = 2$ avec $a_i, c_i \leq 1$, donc $a_i = c_i = 1$.

Dans les deux cas $a_i = c_i$. Comme c'est vrai pour tout rang, $a = c$.

### Conclusion

N'importe quels $2018$ éléments de $E$ répondent à la question : ils sont deux à deux distincts, tous inférieurs à $88\,573 < 150\,000$, et aucun triplet $(a, b, c)$ avec $a \neq c$ ne vérifie $a + c = 2b$.

## Going further

La même construction, avec $k$ chiffres, donne $2^k$ entiers sans suite arithmétique, tous inférieurs à $3^k / 2$. Le nombre d'entiers obtenus est donc de l'ordre de $N^{\log 2 / \log 3} \approx N^{0{,}63}$ quand on se limite aux entiers inférieurs à $N$. On sait aujourd'hui faire nettement mieux, mais trouver le maximum exact reste un problème ouvert difficile.
