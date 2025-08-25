# FILTRI

## 1. Base (Input)

<img width="256" height="256" alt="lena" src="https://github.com/user-attachments/assets/13f3a3c0-125a-47e6-b605-4ca22a1be885" />

*La nostra amata Lena.png*

## 2. Base(0.0), Negativo (256.0), Gamma(0.256), Logaritmo(256,256)

<img width="256" height="256" alt="image" src="https://github.com/user-attachments/assets/f8af3ab9-39e6-405d-8345-f614a4d945f1" />


**Negativo:**  
`s = 255 - r`

**Gamma:**  
`s = (1 / 255^{γ-1}) * r^γ`

**Logaritmo:**  
`s = (256 / ln(256)) * ln(1 + r)`

r = valore del pixel in input (0-255)

s = valore del pixel in output (0-255)

γ = parametro gamma (es: 3.2 come nel codice)

## 3. Istogramma: Base, Stretching, Equalizza

<img width="256" height="256" alt="image" src="https://github.com/user-attachments/assets/e7220940-4e5d-427f-aeed-712d13869214" />

Istogramma: mostra la distribuzione dei livelli di intensità dei pixel

Stretching: migliora il contrasto "allungando" l'istogramma su tutto l'intervallo disponibile (0-255)

Equalizza: tecnica più avanzata per ridistribuire i valori dei pixel in modo da ottenere un istogramma il più possibile uniforme

## 4. Quantizzazione

<img width="256" height="256" alt="image" src="https://github.com/user-attachments/assets/4b1663cf-ffa0-4999-a80e-910374a43981" />

Quantizzzione: processo di riduzione del numero di valori di intensità

`q = floor((brightness(R.pixels[i]) * k) /256);`

`q = int((float(q)/(k-1)) *255);`

