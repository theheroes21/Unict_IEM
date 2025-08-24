# FILTRI
<img width="256" height="256" alt="lena" src="https://github.com/user-attachments/assets/e74c0ccb-eb8c-4c40-bf55-f436f46e60e6" />

# 1. Base (Input)
La nostra amata Lena.png 

<img width="256" height="256" alt="image" src="https://github.com/user-attachments/assets/03674e34-82c0-4e82-adb0-e1bc1491d4d5" />

# 2. Negativo (256.0) , Gamma(0.256),  Logaritmo(256,256) 
Negativo: neg(x,y)=255−f(x,y)
 for(int i=0; i<R.pixels.length; i++)
  {
    r = 255 - red(R.pixels[i]);
    g = 255 - green(R.pixels[i]);
    b = 255 - blue(R.pixels[i]);
    
    R.pixels[i] = color(r,g,b);
  }

Gamma: float C = 1/255^γ
for(int i=0; i<R.pixels.length; i++)
  {
    r = C * pow(red(R.pixels[i]),gm);
    g = C * pow(green(R.pixels[i]),gm);
    b = C * pow(blue(R.pixels[i]),gm);
    
    R.pixels[i] = color(r,g,b);
  }

Logaritmo:  float C = 256/log(256);
  
  for(int i=0; i<R.pixels.length; i++)
  {
    r = C * log(1+red(R.pixels[i]));
    g = C * log(1+green(R.pixels[i]));
    b = C * log(1+blue(R.pixels[i]));
    
    R.pixels[i] = color(r,g,b);
  }



