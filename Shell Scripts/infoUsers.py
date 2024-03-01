import os

uid = os.getuid()

if not uid == 0:
    print("No eres root")
    exit()

op=input("Selecciona una opción: ")

match op:
    case "1":
        print("El nombre del SO es",os.uname().sysname)
        print("La relesase del SO es",os.uname().release)
        print("La versión del SO es",os.uname().version)
        print("El identificador de hardware es",os.uname().version)

    case "2":
        user=input("Introduce un usuario: ")
        passwd=open("/etc/passwd","r")
        l=passwd.readline()
        for i in l:
            if user in i:
                enc=True
        if enc == True:
            print("Usuario encontrado")
            os.system("useradd -m" + user)

    case "3":
        dir=input("Introduce un directorio: ")
        if os.path.isfile(dir) == False and os.path.exists(dir) == True:
            print("El directorio existe ya")
        else:
            os.mkdir(dir)

    case "4":
        exit()