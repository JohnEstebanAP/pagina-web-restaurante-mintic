# importar la libreria del framework de flasks
from flask import Flask
#instanciar un objeto de tipo flask
app = Flask(__name__) #app es el nombre del objeto que se instancia de la clase flask
# crear una ruta de  acceso(access point) al servidor 
@app.route('/')
#la funcion o metodo que esta asociada a esa ruta, es decir es lo que va a hacer la
#  app cuando se conecté a esa ruta del servidor
def index():
    return "Bienvenido cliente, esta es una respuesta automatica del Servidor hacia el Navegador"

@app.route("/admin")
def listadoEstudiantes():
    return "**Listado de Estudiantes**"



#la funcion main, llamado a el puto inicial de ejecucion de estaaplicacion web y disparar el servidor del
if __name__ == '__main__':
    app.run(port=5000,debug=True)