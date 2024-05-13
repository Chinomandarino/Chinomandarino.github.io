import os
import tkinter as tk
import customtkinter as ctk
from tkinter import filedialog


def renombrar_archivos(directorio, numero_control, apellidos, nombres, grupo, tipo_actividad):
    for nombre_archivo in os.listdir(directorio):
        nombre_base, extension = os.path.splitext(nombre_archivo)
        try:
            numero_pagina = int(nombre_base)

            # Construir el nuevo nombre (ahora con nombre completo)
            nuevo_nombre = f"{numero_control} {tipo_actividad}{
                numero_pagina:02d} {apellidos} {nombres} {grupo}{extension}"

            ruta_antigua = os.path.join(directorio, nombre_archivo)
            ruta_nueva = os.path.join(directorio, nuevo_nombre)

            os.rename(ruta_antigua, ruta_nueva)
        except ValueError:
            label_resultado.configure(
                text=f"Error: '{nombre_archivo}' no tiene un número de página válido.")

    label_resultado.configure(text="Archivos renombrados con éxito")


def seleccionar_directorio():
    directorio = filedialog.askdirectory()
    entry_directorio.delete(0, tk.END)
    entry_directorio.insert(0, directorio)


def renombrar_carpeta():
    numero_control = entry_control.get()
    apellidos = entry_apellidos.get()
    nombres = entry_nombres.get()
    grupo = entry_grupo.get()
    tipo_actividad = tipo_var.get()
    directorio = entry_directorio.get()

    if all([numero_control, apellidos, nombres, grupo, tipo_actividad, directorio]):
        renombrar_archivos(directorio, numero_control,
                           apellidos, nombres, grupo, tipo_actividad)
    else:
        label_resultado.configure(text="Error: Completa todos los campos.")


# Crear la ventana principal (usando customtkinter)
ctk.set_appearance_mode("dark")
ctk.set_default_color_theme("green")
ventana = ctk.CTk()
ventana.title("Ibarra Helper")
ventana.geometry("720x690")

# Instrucciones
label_instrucciones = ctk.CTkLabel(ventana, text="""
Instrucciones de como usar ibarra helper:

1. Coloca todos tus archivos en una carpeta.
2. El nombre de cada archivo debe ser solo el número de página.
   Ejemplo: 01, 02, etc.
3. Ingresa tu número de control, apellidos, nombres, grupo y selecciona el tipo de actividad.
4. Selecciona la carpeta con los archivos.
5. Haz clic en "Renombrar Archivos".
""")
label_instrucciones.pack(pady=10)

# Entradas para número de control, apellidos, nombres y grupo
label_control = ctk.CTkLabel(ventana, text="Número de Control:")
label_control.pack()
entry_control = ctk.CTkEntry(ventana, width=250)
entry_control.pack()

label_apellidos = ctk.CTkLabel(ventana, text="Apellidos:")
label_apellidos.pack()
entry_apellidos = ctk.CTkEntry(ventana, width=250)
entry_apellidos.pack()

label_nombres = ctk.CTkLabel(ventana, text="Nombres:")
label_nombres.pack()
entry_nombres = ctk.CTkEntry(ventana, width=250)
entry_nombres.pack()

label_grupo = ctk.CTkLabel(ventana, text="Grupo:")
label_grupo.pack()
entry_grupo = ctk.CTkEntry(ventana, width=100)
entry_grupo.pack()

# Radiobuttons para seleccionar el tipo de actividad
tipo_var = tk.StringVar(value="C")
radiobutton_frame = ctk.CTkFrame(ventana)
radiobutton_frame.pack(pady=10)
ctk.CTkRadioButton(radiobutton_frame, text="Concepto",
                   variable=tipo_var, value="C").pack(side="left")
ctk.CTkRadioButton(radiobutton_frame, text="Resumen",
                   variable=tipo_var, value="R").pack(side="left")
ctk.CTkRadioButton(radiobutton_frame, text="Programa",
                   variable=tipo_var, value="P").pack(side="left")

# Etiqueta, entrada y botón para seleccionar directorio
label_directorio = ctk.CTkLabel(ventana, text="Carpeta con Archivos:")
label_directorio.pack(pady=10)
entry_directorio = ctk.CTkEntry(ventana, width=250)
entry_directorio.pack()
boton_directorio = ctk.CTkButton(
    ventana, text="Seleccionar", command=seleccionar_directorio)
boton_directorio.pack()

# Botón para renombrar
boton_renombrar = ctk.CTkButton(
    ventana, text="Renombrar Archivos", command=renombrar_carpeta)
boton_renombrar.pack(pady=20)

# Etiqueta para mostrar resultados
label_resultado = ctk.CTkLabel(ventana, text="")
label_resultado.pack()

ventana.mainloop()
