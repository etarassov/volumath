---
id: "7030"
title: "Une somme de neufs"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [ecriture-decimale, somme, astuce-du-plus-un]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2011"
  reference: "stage_junior_2011.pdf, test initial, exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2011.pdf"
---

## Statement

**1.** Calculer
$$a = 99 + 999, \qquad b = 99 + 999 + 9999, \qquad c = 99 + 999 + 9999 + 99\,999 .$$

**2.** On pose
$$N = 99 + 999 + 9999 + \cdots + \underbrace{99\cdots9}_{100 \text{ chiffres}} .$$
Le premier terme s'écrit avec deux $9$, le deuxième avec trois $9$, et ainsi de suite jusqu'au
dernier, qui en compte cent.

On effectue la somme et on écrit $N$ en écriture décimale ordinaire. **Combien de fois le
chiffre $1$ y apparaît-il ?**

**3.** Même question pour
$$M = 11 + 111 + 1111 + \cdots + \underbrace{11\cdots1}_{100 \text{ chiffres}} .$$

## Hints

1. Fais les trois calculs de la question 1 à la main et regarde les résultats : ils se
   ressemblent beaucoup.
2. Un nombre écrit avec $k$ chiffres $9$ vaut $10^k - 1$. C'est l'écriture qui rend la somme
   facile.
3. Combien y a-t-il de termes dans la somme $N$ ?
4. Pour $M$, remarque que $9M = N$. Il reste à savoir diviser par $9$ un nombre fait de $1$.

## Solution

**1. Les trois premiers calculs.**

$$a = 99 + 999 = 1098, \qquad b = 1098 + 9999 = 11\,097, \qquad c = 11\,097 + 99\,999 = 111\,096 .$$

On voit apparaître une forme : une suite de $1$, puis un $0$, puis la fin.

**2. Le calcul de $N$.**

*Le nombre de termes.* Les termes ont $2$, $3$, $4$, …, $100$ chiffres : il y en a
$100 - 2 + 1 = 99$.

*L'astuce.* Un nombre formé de $k$ chiffres $9$ vaut $10^k - 1$ :
$$99 = 100 - 1, \qquad 999 = 1000 - 1, \qquad \ldots, \qquad
\underbrace{99\cdots9}_{100} = 10^{100} - 1 .$$

En regroupant les $99$ termes « $-1$ » :
$$N = \left(10^2 + 10^3 + \cdots + 10^{100}\right) - 99 .$$

*Vérifions le mécanisme sur le petit cas.* Avec trois termes seulement,
$$99 + 999 + 9999 = \left(10^2 + 10^3 + 10^4\right) - 3 = 11\,100 - 3 = 11\,097 = b . \checkmark$$

*La parenthèse.* La somme $10^2 + 10^3 + \cdots + 10^{100}$ porte un chiffre $1$ à chacun des
rangs $2$ à $100$, et un $0$ aux rangs $0$ et $1$. Elle s'écrit donc
$$\underbrace{11\cdots1}_{99 \text{ chiffres}}00 .$$

*La soustraction.* Les trois derniers chiffres de ce nombre sont $100$, et $100 - 99 = 1$ : la
retenue ne se propage pas plus loin. Donc
$$N = \underbrace{11\cdots1}_{98 \text{ chiffres}}001 .$$

**Le chiffre $1$ apparaît $98 + 1 = \boxed{99}$ fois dans $N$.**

**3. Le calcul de $M$.**

Chaque terme de $M$ est le terme correspondant de $N$ divisé par $9$, puisque
$$\underbrace{11\cdots1}_{k} = \frac{\underbrace{99\cdots9}_{k}}{9} .$$
Donc $M = \dfrac{N}{9}$, et on repart de l'écriture
$$N = \underbrace{11\cdots1}_{99}00 - 99 , \qquad \text{d'où} \qquad
M = \frac{\underbrace{11\cdots1}_{99}}{9} \times 100 - 11 .$$

*Diviser un nombre de $1$ par $9$.* Le calcul de base est
$$\frac{111\,111\,111}{9} = 12\,345\,679 ,$$
ce qui se vérifie en multipliant : $9 \times 12\,345\,679 = 111\,111\,111$.

Ce motif se répète. Par exemple
$$\frac{\underbrace{11\cdots1}_{18}}{9} = 12\,345\,679\,012\,345\,679 ,$$
c'est-à-dire le bloc $012345679$ écrit deux fois (le zéro de tête ne s'écrit pas). Comme
$99 = 9 \times 11$, on a de même
$$\frac{\underbrace{11\cdots1}_{99}}{9} = \underbrace{012345679\ \cdots\ 012345679}_{11 \text{ blocs}} .$$

*La fin du calcul.* Multiplier par $100$ ajoute deux zéros à droite, ce qui donne un nombre
terminé par $\ldots 01234567900$. Retirer $11$ transforme ces trois derniers chiffres $900$
en $889$ :
$$M = \underbrace{012345679\ \cdots\ 012345679}_{10 \text{ blocs}}\,01234567889 .$$

*Le compte.* Chaque bloc $012345679$ contient exactement un chiffre $1$. Il y a $10$ blocs
intacts, et le dernier morceau $01234567889$ en contient lui aussi un seul.

**Le chiffre $1$ apparaît donc $\boxed{11}$ fois dans $M$.**

## Going further

Retiens la transformation : $\underbrace{99\cdots9}_{k} = 10^k - 1$. Elle change une somme
pénible en une somme de puissances de dix, c'est-à-dire en une écriture décimale évidente.

C'est le même truc qui permet de calculer de tête $9 + 99 + 999 + 9999 = 11\,110 - 4 = 11\,106$.
