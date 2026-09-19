---
id: "1011"
title: "Des chiffres 1 et 2, et une puissance de 2"
grade: 12
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [recurrence, divisibilite, numeration decimale, unicite, parite]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Induction and Peano Axioms"
  reference: "Handout-4785-4955.pdf, problème 5.2 (problème communiqué par Nikita Gladkov)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4785-4955.pdf"
---

## Statement

Cherchons des nombres dont **tous les chiffres sont des $1$ ou des $2$**, et qui sont divisibles par une puissance de $2$ égale au nombre de leurs chiffres.

- À un chiffre : $2$ est divisible par $2^{1} = 2$.
- À deux chiffres : $12$ est divisible par $2^{2} = 4$.
- À trois chiffres : $112$ est divisible par $2^{3} = 8$.
- À quatre chiffres : $2112$ est divisible par $2^{4} = 16$.

Montrer que pour tout entier $n \geqslant 1$, il existe **exactement un** nombre de $n$ chiffres, tous égaux à $1$ ou à $2$, divisible par $2^{n}$.

## Hints

1. Continuez la liste à la main : quel est le nombre à cinq chiffres ? Que remarquez-vous en comparant $112$, $2112$ et votre réponse ?
2. On passe d'un terme au suivant en ajoutant un chiffre **devant**. Écrivez cela avec une formule : si $N$ a $n$ chiffres et si l'on place le chiffre $a$ devant, quel nombre obtient-on ?
3. Récurrence sur $n$. Supposons connu l'unique nombre $N$ de $n$ chiffres convenant. Pour le rang $n+1$, il n'y a que deux candidats : $1 \times 10^{n} + N$ et $2 \times 10^{n} + N$. Montrez qu'exactement l'un des deux marche.
4. Écrivez $N = 2^{n} m$ et $10^{n} = 2^{n} \times 5^{n}$. Que devient la condition « divisible par $2^{n+1}$ » ?
5. $5^{n}$ est impair. C'est le point clé pour la parité.
6. N'oubliez pas l'unicité : il faut aussi montrer qu'un nombre de $n+1$ chiffres convenant a forcément pour $n$ derniers chiffres le nombre $N$ du rang précédent.

## Solution

Appelons **nombre admissible d'ordre $n$** un entier de $n$ chiffres, tous égaux à $1$ ou à $2$, divisible par $2^{n}$.

Montrons par récurrence sur $n \geqslant 1$ la propriété
$$\mathcal{P}(n) : \text{« il existe exactement un nombre admissible d'ordre } n \text{ »}.$$

### Initialisation

Les nombres à un chiffre formés de $1$ et de $2$ sont $1$ et $2$. Seul $2$ est divisible par $2^{1} = 2$. Donc $\mathcal{P}(1)$ est vraie, avec $N_1 = 2$.

### Hérédité

Soit $n \geqslant 1$. Supposons $\mathcal{P}(n)$ vraie et notons $N_n$ l'unique nombre admissible d'ordre $n$. Écrivons
$$N_n = 2^{n} m, \qquad m \in \mathbb{N}.$$

**Forme des candidats.** Un nombre $M$ de $n+1$ chiffres, tous égaux à $1$ ou $2$, s'écrit
$$M = a \times 10^{n} + N,$$
où $a \in \{1, 2\}$ est son premier chiffre et $N$ est le nombre formé par ses $n$ derniers chiffres — un nombre de $n$ chiffres, tous égaux à $1$ ou $2$.

**Les $n$ derniers chiffres sont imposés.** Supposons $M$ admissible d'ordre $n+1$, c'est-à-dire $2^{n+1} \mid M$. Alors en particulier $2^{n} \mid M$. Or $2^{n}$ divise $10^{n} = 2^{n} \times 5^{n}$, donc $2^{n}$ divise $a \times 10^{n}$, et par différence
$$2^{n} \mid M - a \times 10^{n} = N.$$
Ainsi $N$ est un nombre admissible d'ordre $n$, donc, par l'hypothèse de récurrence, $N = N_n$.

Il ne reste donc que **deux candidats** : $M = 1 \times 10^{n} + N_n$ et $M = 2 \times 10^{n} + N_n$.

**Lequel convient ?** Calculons, pour $a \in \{1, 2\}$ :
$$M = a \times 10^{n} + N_n = a \times 2^{n} \times 5^{n} + 2^{n} m = 2^{n}\left(a \times 5^{n} + m\right).$$

Donc
$$2^{n+1} \mid M \iff 2 \mid a \times 5^{n} + m.$$

Comme $5^{n}$ est impair, $a \times 5^{n}$ a la même parité que $a$. La condition devient donc
$$a + m \text{ pair}, \qquad \text{c'est-à-dire} \qquad a \text{ et } m \text{ de même parité}.$$

Or parmi les deux valeurs possibles $a = 1$ et $a = 2$, l'une est impaire et l'autre paire : **exactement une** des deux a la parité de $m$. Précisément :

- si $m$ est pair, il faut prendre $a = 2$ ;
- si $m$ est impair, il faut prendre $a = 1$.

Il existe donc exactement un nombre admissible d'ordre $n+1$, ce qui établit $\mathcal{P}(n+1)$.

### Conclusion

Par récurrence, $\mathcal{P}(n)$ est vraie pour tout $n \geqslant 1$ : pour chaque $n$, il existe un et un seul nombre de $n$ chiffres, tous égaux à $1$ ou $2$, divisible par $2^{n}$.

La démonstration est **constructive** : elle fabrique le nombre chiffre par chiffre, en ajoutant chaque fois un chiffre à gauche. Les premiers termes sont

$$2,\quad 12,\quad 112,\quad 2112,\quad 22112,\quad 122112,\quad 2122112,\quad 12122112,\quad 212122112, \ldots$$

**Vérification sur un rang.** Passons de $N_4 = 2112$ à $N_5$. On a $2112 = 16 \times 132$, donc $m = 132$, qui est **pair** : il faut donc $a = 2$, d'où $N_5 = 22112$. Et en effet $22112 = 32 \times 691$.

## Going further

1. Quel est le premier chiffre de $N_{20}$ ? (Il n'est pas nécessaire de calculer $N_{20}$ en entier : il suffit de suivre la parité de $m$ de rang en rang. Réponse : $1$.)
2. Reprendre le problème avec les chiffres $1$ et $2$ remplacés par $3$ et $4$. Cela marche-t-il encore ? Et avec $1$ et $3$ ?
3. Même question avec les chiffres $1$ et $2$, mais la divisibilité par $5^{n}$ au lieu de $2^{n}$. Que se passe-t-il ?
4. Montrer qu'avec les chiffres $0$ et $1$ au lieu de $1$ et $2$, aucun nombre ne convient, quel que soit $n$.
