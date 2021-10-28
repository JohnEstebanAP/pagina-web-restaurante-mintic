# importar la libreria del framework de flasks
from flask import Flask,redirect,url_for,render_template,request
#instanciar un objeto de tipo flask
app=Flask(__name__) #app es el nombre del objeto que se instancia de la clase flask
# crear una ruta de  acceso(access point) al servidor 
@app.route('/',methods=['GET','POST'])
#la funcion o metodo que esta asociada a esa ruta, es decir es lo que va a hacer la
#  app cuando se conecté a esa ruta del servidor
def home():
    if request.method=='POST':
        # Handle POST Request here
        return render_template('index.html')
    return render_template('index.html')



@app.route('/admin',methods=['GET','POST'])
def admin():
    if request.method=='POST':
        # Handle POST Request here
        return render_template('admin.html')
    return render_template('admin.html')


@app.route('/register',methods=['GET','POST'])
def register():
    if request.method=='POST':
        # Handle POST Request here
        return render_template('register.html')
    return render_template('register.html')

#la funcion main, llamado a el puto inicial de ejecucion de estaaplicacion web y disparar el servidor del
if __name__ == '__main__':
    #DEBUG is SET to TRUE. CHANGE FOR PROD
    app.run(port=5000,debug=True)