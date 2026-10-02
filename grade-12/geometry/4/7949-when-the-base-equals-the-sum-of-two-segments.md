---
id: "7949"
title: "Quand la base vaut la somme de deux segments"
grade: 12
theme: geometry
difficulty: 4
duration_min: 45
tags: [triangle-isocele, bissectrice, loi-des-sinus, transformation-trigonometrique]
adapted_from: null
see_also: ["12416"]
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2016, la muraille"
  reference: "stage_ete_2016.pdf, « La muraille », exercice 18, niveau 1 (énoncé p. 281 ; le polycopié ne donne pas de solution pour cet exercice)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2016.pdf"
---

## Statement

Soit $ABC$ un triangle isocèle en $A$, et soit $D$ le pied de la bissectrice intérieure issue de $B$ : c'est le point où cette bissectrice rencontre le côté $[AC]$.

On suppose que

$$BC = AD + DB .$$

Combien vaut l'angle $\widehat{BAC}$ ?

## Hints

1. Pose $\alpha = \widehat{BAC}$ et exprime tous les angles de la figure en fonction de $\alpha$ : ceux du triangle $ABC$, puis ceux du triangle $ABD$.
2. Prends $AB = AC = 1$ et exprime $BC$, $AD$ et $DB$ avec la loi des sinus.
3. Tu obtiens une équation trigonométrique. Multiplie tout par $\sin\!\left(135° - \frac{3\alpha}{4}\right)$ pour te débarrasser des dénominateurs.
4. Transforme le produit $2\sin X \sin Y$ en somme de cosinus, à l'aide de $\cos(X-Y)$ et $\cos(X+Y)$.

## Solution

**La réponse : $\widehat{BAC} = 100°$.**

**Étape 1 : tous les angles en fonction de $\alpha$.**

Posons $\alpha = \widehat{BAC}$, avec $0° < \alpha < 180°$. Le triangle $ABC$ est isocèle en $A$, donc

$$\widehat{ABC} = \widehat{ACB} = \frac{180° - \alpha}{2} = 90° - \frac{\alpha}{2} .$$

La droite $(BD)$ est la bissectrice de l'angle $\widehat{ABC}$, donc

$$\widehat{ABD} = \frac12 \left(90° - \frac{\alpha}{2}\right) = 45° - \frac{\alpha}{4} .$$

Dans le triangle $ABD$, la somme des angles vaut $180°$, donc

$$\widehat{ADB} = 180° - \alpha - \left(45° - \frac{\alpha}{4}\right) = 135° - \frac{3\alpha}{4} .$$

**Étape 2 : les trois longueurs.**

Posons $AB = AC = 1$.

*Dans le triangle $ABC$,* la loi des sinus donne $\dfrac{BC}{\sin \alpha} = \dfrac{AB}{\sin \widehat{ACB}}$, donc

$$BC = \frac{\sin \alpha}{\cos\frac{\alpha}{2}} = \frac{2 \sin\frac{\alpha}{2}\cos\frac{\alpha}{2}}{\cos\frac{\alpha}{2}} = 2 \sin\frac{\alpha}{2} .$$

*Dans le triangle $ABD$,* la loi des sinus donne $\dfrac{AD}{\sin \widehat{ABD}} = \dfrac{DB}{\sin \widehat{BAD}} = \dfrac{AB}{\sin \widehat{ADB}}$, donc

$$AD = \frac{\sin\!\left(45° - \frac{\alpha}{4}\right)}{\sin\!\left(135° - \frac{3\alpha}{4}\right)} \qquad \text{et} \qquad DB = \frac{\sin \alpha}{\sin\!\left(135° - \frac{3\alpha}{4}\right)} .$$

**Étape 3 : on écrit la condition.**

La condition $BC = AD + DB$ devient, après multiplication par $\sin\!\left(135° - \frac{3\alpha}{4}\right)$ qui est non nul :

$$2\sin\frac{\alpha}{2} \, \sin\!\left(135° - \frac{3\alpha}{4}\right) = \sin\!\left(45° - \frac{\alpha}{4}\right) + \sin \alpha . \qquad (\star)$$

**Étape 4 : on transforme le membre de gauche.**

Des formules d'addition $\cos(X-Y) = \cos X\cos Y + \sin X \sin Y$ et $\cos(X+Y) = \cos X \cos Y - \sin X \sin Y$ on tire, par soustraction,

$$2\sin X \sin Y = \cos(X - Y) - \cos(X+Y) .$$

Appliquons-la avec $X = \dfrac{\alpha}{2}$ et $Y = 135° - \dfrac{3\alpha}{4}$ :

$$X - Y = \frac{5\alpha}{4} - 135° , \qquad X + Y = 135° - \frac{\alpha}{4} ,$$

donc

$$2\sin\frac{\alpha}{2}\sin\!\left(135° - \frac{3\alpha}{4}\right) = \cos\!\left(\frac{5\alpha}{4} - 135°\right) - \cos\!\left(135° - \frac{\alpha}{4}\right) .$$

**Étape 5 : une simplification inattendue.**

Remarquons deux choses :

$$-\cos\!\left(135° - \frac{\alpha}{4}\right) = \cos\!\left(180° - \left(135° - \frac{\alpha}{4}\right)\right) = \cos\!\left(45° + \frac{\alpha}{4}\right) ,$$

et

$$\sin\!\left(45° - \frac{\alpha}{4}\right) = \cos\!\left(90° - \left(45° - \frac{\alpha}{4}\right)\right) = \cos\!\left(45° + \frac{\alpha}{4}\right) .$$

Ces deux quantités sont donc égales, et elles se simplifient de part et d'autre dans $(\star)$ ! Il reste

$$\cos\!\left(\frac{5\alpha}{4} - 135°\right) = \sin\alpha .$$

**Étape 6 : on résout.**

Écrivons $\sin \alpha = \cos(90° - \alpha)$. L'équation devient

$$\cos\!\left(\frac{5\alpha}{4} - 135°\right) = \cos\!\left(90° - \alpha\right) ,$$

ce qui équivaut à

$$\frac{5\alpha}{4} - 135° = \pm\left(90° - \alpha\right) + k \times 360° , \qquad k \ \text{entier}.$$

- **Avec le signe $+$ :** $\dfrac{5\alpha}{4} + \alpha = 225° + k \times 360°$, soit $\dfrac{9\alpha}{4} = 225° + k\times 360°$, soit $\alpha = 100° + k \times 160°$. La seule valeur strictement comprise entre $0°$ et $180°$ est $\alpha = 100°$.
- **Avec le signe $-$ :** $\dfrac{5\alpha}{4} - 135° = \alpha - 90° + k \times 360°$, soit $\dfrac{\alpha}{4} = 45° + k\times 360°$, soit $\alpha = 180° + k \times 1440°$. Aucune valeur ne convient : $\alpha = 180°$ donnerait un triangle aplati.

**Étape 7 : vérification.**

Pour $\alpha = 100°$, on a $\widehat{ABD} = 20°$ et $\widehat{ADB} = 60°$. Avec $AB = 1$ :

$$BC = 2\sin 50° \approx \text{1,532} , \qquad AD = \frac{\sin 20°}{\sin 60°} \approx \text{0,395} , \qquad DB = \frac{\sin 100°}{\sin 60°} \approx \text{1,137} .$$

Et $\text{0,395} + \text{1,137} \approx \text{1,532}$. ✓

**Conclusion.** $\widehat{BAC} = \boxed{100°}$.
