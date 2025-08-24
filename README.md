# FILTRI
# 1. Base (Input)
<img width="256" height="256" alt="lena" src="https://github.com/user-attachments/assets/e74c0ccb-eb8c-4c40-bf55-f436f46e60e6" />

La nostra amata Lena.png 

# 2. Base(0.0), Negativo (256.0) , Gamma(0.256),  Logaritmo(256,256) 
<img width="256" height="256" alt="image" src="https://github.com/user-attachments/assets/03674e34-82c0-4e82-adb0-e1bc1491d4d5" />

Negativo: r = 255 - red(R.pixels[i]);     

Gamma: float C = 1/255^γ;   r = C * pow(red(R.pixels[i]),gm);

Logaritmo:  float C = 256/log(256);  r = C * log(1+red(R.pixels[i]));
  



