---
id: "0503"
title: "La simplification interdite"
grade: 10
theme: arithmetic
difficulty: 4
duration_min: 45
tags: [chiffres, divisibilite, nombres-premiers, equation, disjonction-de-cas]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок, 8 классы, пособие для преподавателей"
  reference: "Kan2018.pdf, листок 1 «Буквы помогают», задача 3"
  url: "https://mmmf.msu.ru/for_schools/Kan2018.pdf"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Kan2018.pdf"
---

## Statement

On demande à Hugo de simplifier les fractions $\dfrac{16}{64}$ et $\dfrac{19}{95}$. Il barre le chiffre qui apparaît en haut et en bas :

$$\frac{1\cancel{6}}{\cancel{6}4} = \frac{1}{4} \qquad \qquad \frac{1\cancel{9}}{\cancel{9}5} = \frac{1}{5}$$

Les deux résultats sont exacts ! Et pourtant le procédé n'a évidemment aucun sens.

On cherche tous les cas où cette « simplification interdite » tombe quand même juste. Autrement dit, on cherche tous les chiffres $a$, $b$ et $c$, compris entre $1$ et $9$, tels que

$$\frac{\overline{ab}}{\overline{bc}} = \frac{a}{c}$$

où $\overline{ab}$ désigne le nombre à deux chiffres dont le chiffre des dizaines est $a$ et le chiffre des unités est $b$, c'est-à-dire $\overline{ab} = 10a + b$ (et de même $\overline{bc} = 10b + c$).

On n'exige pas que la fraction $\dfrac{a}{c}$ soit irréductible.

Trouver toutes ces fractions.

## Hints

1. Traduis l'égalité en une équation entre $a$, $b$ et $c$ en utilisant $\overline{ab} = 10a+b$ et $\overline{bc} = 10b+c$, puis fais le produit en croix.
2. Après développement, regroupe les termes de façon à faire apparaître un facteur $10$ d'un côté : tu dois pouvoir arriver à $10a(b-c) = c(b-a)$.
3. Le membre de gauche est un multiple de $10$, donc de $5$. Que peut-on en déduire sur $c$ et sur $b - a$, sachant que $5$ est un nombre premier et que $a$, $b$, $c$ sont des chiffres ?
4. Tu obtiens trois cas : $b = a$, puis $c = 5$, puis $b - a = 5$ ou $b - a = -5$. Traite-les séparément.
5. Dans chaque cas tu tombes sur une équation du type $b(2a-1) = 9a$. Multiplie les deux membres par $2$ et arrange-toi pour écrire l'égalité sous la forme (quelque chose) $\times$ (quelque chose) $= 9$. Il ne reste alors qu'à lister les diviseurs de $9$.

## Solution

**L'idée : traduire en équation, puis utiliser la divisibilité par $5$ pour n'avoir que trois cas à examiner.**

**Étape 1. Mise en équation.**

Les dénominateurs $\overline{bc} = 10b+c$ et $c$ ne sont pas nuls car $b \geq 1$ et $c \geq 1$. Le produit en croix donne

$$\frac{10a+b}{10b+c} = \frac{a}{c} \iff c(10a+b) = a(10b+c)$$

On développe :

$$10ac + bc = 10ab + ac$$

On regroupe en mettant $10a$ en facteur d'un côté :

$$10ab - 10ac = bc - ac$$

$$10a(b-c) = c(b-a) \qquad (1)$$

**Étape 2. Trois cas seulement.**

Le membre de gauche de $(1)$ est un multiple de $10$, donc le nombre $c(b-a)$ est lui aussi un multiple de $10$, et en particulier un multiple de $5$.

Or $5$ est un nombre premier. Si $5$ divise un produit de deux entiers, il apparaît dans la décomposition en facteurs premiers de ce produit, donc dans celle de l'un des deux facteurs : $5$ divise $c$, ou bien $5$ divise $b-a$.

- $c$ est un chiffre entre $1$ et $9$, donc « $5$ divise $c$ » signifie $c = 5$ ;
- $b-a$ est compris entre $-8$ et $8$, donc « $5$ divise $b-a$ » signifie $b-a = 0$, $b-a = 5$ ou $b-a = -5$.

**Cas 0 : $b = a$.** Alors $c(b-a) = 0$, donc $(1)$ donne $10a(b-c) = 0$. Comme $a \geq 1$, il reste $b = c$, et donc $a = b = c$. On retrouve les neuf fractions sans intérêt $\dfrac{11}{11}$, $\dfrac{22}{22}$, … : barrer un chiffre donne bien $\dfrac{a}{a} = 1$. On suppose désormais $b \neq a$.

**Cas 1 : $c = 5$.**

$(1)$ devient $10a(b-5) = 5(b-a)$, soit après division par $5$ :

$$2a(b-5) = b-a \iff 2ab - 10a = b - a \iff 2ab - b = 9a \iff b(2a-1) = 9a$$

Multiplions par $2$ pour faire apparaître $2a-1$ des deux côtés :

$$2b(2a-1) = 18a = 9(2a-1) + 9$$

$$(2a-1)(2b-9) = 9$$

Comme $a \geq 1$, le nombre $2a-1$ est un entier positif qui divise $9$, donc $2a-1 \in \{1, 3, 9\}$, c'est-à-dire $a \in \{1, 2, 5\}$.

- $a = 1$ : $2b-9 = 9$ donc $b = 9$. On obtient $\dfrac{19}{95} = \dfrac{1}{5}$.
- $a = 2$ : $2a-1 = 3$ et $2b-9 = 3$ donc $b = 6$. On obtient $\dfrac{26}{65} = \dfrac{2}{5}$.
- $a = 5$ : $2a-1 = 9$ et $2b-9 = 1$ donc $b = 5$. Alors $a = b = c = 5$, déjà vu au cas 0.

**Cas 2 : $b = a+5$ (donc $a \leq 4$).**

Ici $b - a = 5$, et $(1)$ devient $10a(a+5-c) = 5c$, soit

$$2a(a+5-c) = c \iff 2a(a+5) = c(2a+1)$$

Multiplions par $2$ :

$$4a^2 + 20a = 2c(2a+1)$$

Or $(2a+1)(2a+9) = 4a^2 + 20a + 9$, donc $4a^2 + 20a = (2a+1)(2a+9) - 9$. En reportant :

$$(2a+1)(2a+9) - 9 = 2c(2a+1) \iff (2a+1)(2a+9-2c) = 9$$

Comme $a \geq 1$, on a $2a+1 \geq 3$, et $2a+1$ divise $9$ : donc $2a+1 \in \{3, 9\}$, c'est-à-dire $a \in \{1, 4\}$.

- $a = 1$ : $b = 6$, et $2a+9-2c = 3$ donne $11 - 2c = 3$, donc $c = 4$. On obtient $\dfrac{16}{64} = \dfrac{1}{4}$.
- $a = 4$ : $b = 9$, et $2a+9-2c = 1$ donne $17 - 2c = 1$, donc $c = 8$. On obtient $\dfrac{49}{98} = \dfrac{4}{8}$ (les deux valent bien $\tfrac12$).

**Cas 3 : $b = a-5$ (donc $a \geq 6$).**

Ici $b - a = -5$, et $(1)$ devient $10a(a-5-c) = -5c$, soit

$$2a(a-5-c) = -c \iff 2a(c+5-a) = c \iff c(2a-1) = 2a(a-5)$$

Multiplions par $2$ : $2c(2a-1) = 4a^2 - 20a$. Or $(2a-1)(2a-9) = 4a^2 - 20a + 9$, donc

$$(2a-1)(2a-9-2c) = 9$$

Donc $2a-1$ divise $9$ : $2a-1 \in \{1,3,9\}$, c'est-à-dire $a \in \{1,2,5\}$. Or ce cas impose $a \geq 6$. **Aucune solution.**

**Conclusion.**

En dehors des fractions triviales $\dfrac{\overline{aa}}{\overline{aa}} = \dfrac{a}{a}$, la simplification interdite ne tombe juste que dans quatre cas :

$$\frac{16}{64} = \frac{1}{4}, \qquad \frac{19}{95} = \frac{1}{5}, \qquad \frac{26}{65} = \frac{2}{5}, \qquad \frac{49}{98} = \frac{4}{8}$$

Hugo est donc tombé, sans le savoir, sur deux des quatre seules fractions du genre.

## Going further

1. Vérifier directement, à la calculatrice, que ces quatre égalités sont exactes, et qu'aucune autre fraction $\dfrac{\overline{ab}}{\overline{bc}}$ ne convient (il y a $9^3 = 729$ triplets à tester : un petit programme suffit).
2. Pourquoi a-t-on exclu le chiffre $0$ ? Que se passe-t-il si on autorise $b = 0$, par exemple $\dfrac{10}{05}$ ?
3. Même question avec des nombres à trois chiffres : existe-t-il des fractions $\dfrac{\overline{abc}}{\overline{bcd}}$ égales à $\dfrac{a}{d}$ ?
