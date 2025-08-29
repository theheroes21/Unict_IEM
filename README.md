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

Stretching o Espansione del contrasto : migliora il contrasto "allungando" l'istogramma su tutto l'intervallo disponibile (0-255)

Equalizza: tecnica più avanzata per ridistribuire i valori dei pixel in modo da ottenere un istogramma il più possibile uniforme

## 4. Quantizzazione

<img width="256" height="256" alt="image" src="https://github.com/user-attachments/assets/4b1663cf-ffa0-4999-a80e-910374a43981" />

Quantizzzione: processo di riduzione del numero di valori di intensità

`q = floor((brightness(R.pixels[i]) * k) /256);`

`q = int((float(q)/(k-1)) *255);`

## 5. BitPlane

<img width="256" height="256" alt="image" src="https://github.com/user-attachments/assets/9652c926-8529-41f0-99f0-899c0e1a6dd9" />
<img width="128" height="128" alt="image" src="https://github.com/user-attachments/assets/fe5a5362-1761-401f-83dd-2ac2a16ee2c7" />
<img width="128" height="128" alt="image" src="https://github.com/user-attachments/assets/6912be90-e822-457c-8dbf-a20979688c23" />
<img width="128" height="128" alt="image" src="https://github.com/user-attachments/assets/5e9e2769-d3bd-45b5-aa18-f42d5350b282" />
<img width="128" height="128" alt="image" src="https://github.com/user-attachments/assets/9f9ce596-01a7-4534-aefc-20b20295e9cf" />
<img width="128" height="128" alt="image" src="https://github.com/user-attachments/assets/1e24e0a6-730d-4ea0-9cd2-3ed0f86e7faa" />
<img width="128" height="128" alt="image" src="https://github.com/user-attachments/assets/2f1bbe48-a61e-46bb-a774-0f43d4ac7405" />
<img width="128" height="128" alt="image" src="https://github.com/user-attachments/assets/611a4451-85b6-49fb-a835-5c40f31efe44" />

Da ricordare 

` x = int(brightness(R.pixels[i]));`
`r = (x>>nb)&1; `

## 6. Minimo (0,0) e Massimo (256,0)

<img width="256" height="256" alt="image" src="https://github.com/user-attachments/assets/035d39a0-1b9f-4058-ad64-23645c55e376" />

minimo -> ` R.set(x,y,color(min(tmpF)));`
massimo -> `R.set(x,y,color(min(tmpF)));`


## 7. Mediano

<img width="256" height="256" alt="image" src="https://github.com/user-attachments/assets/54e6bf16-00ea-42de-990b-8e0c582f038e" />

mediano -> `tmpF = sort(tmpF)`

`if((N*N)%2 == 1)
         med = tmpF[(N*N)/2];
       else
         med = ( tmpF[(N*N)/ 2] + tmpF[(N*N)/2-1] ) / 2;`

