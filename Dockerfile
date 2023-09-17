#base imaj
FROM python:alpine
#burdaki soldaki nokta source sagdaki yer destination
COPY . app/ 
#casisilan diractory ye gec
WORKDIR /app
#pip den hangi gerekli seyler yuklenecek burda tek tek de yazabiliriz ama boyle daha pratik 20 tane de paket olabilir
RUN pip install -r requirements.txt
#bu bilgi amacli 80 den calismasi zorunlu degil runda farkli port da belirtebilriz
EXPOSE 80
#container i calistirirken default hangi komut calisacak onu belirtiyoruz
CMD python ./app.py
#
#bu satirlari build dedigimizde
#aslinda her satirda tek tek container aciyo
#ve satir bitince o satirin imajini aliyo ve
#sonrakine geciyo
#bu sekilde son satirina kadar gidiyor
#yani her satirda layer layer container calisitrip imaj aliyo sonrasina geciyo
#bunada intermediate container deniyor kisaca