🔐 Home Lab para prácticas de SOC Level 1

¡Hola! Bienvenidos a mi laboratorio personal de ciberseguridad 🎯

Este proyecto comenzó con la idea de construir un entorno seguro donde poder realizar pruebas, aprender y simular escenarios reales sin poner en riesgo mi equipo principal. Utilizo **pfSense** como firewall y **Kali Linux** como sistema de pruebas, y toda la red está configurada para mantener el aislamiento y la seguridad.

Mi objetivo es expandir este laboratorio incorporando herramientas esenciales para el monitoreo, detección y análisis de amenazas, tales como Snort y Suricata para IDS/IPS, Wireshark y tcpdump para análisis de tráfico de red, Nmap para escaneo y descubrimiento de hosts, y Splunk para recolección y visualización de logs. También planeo implementar un servidor Syslog centralizado, realizar ejercicios de hardening, configurar alertas y simular incidentes para practicar el análisis, la correlación de eventos y la respuesta ante incidentes, cubriendo así las tareas típicas de un Analista SOC de Nivel 1.

> 💡 Sobre mí:  
> Mi nombre es Esteban Lavezzo. Luego de trabajar durante más de 10 años como operador técnico de radio, la necesidad de un cambio en mí vida y salir de mí zona de confort para afrontar nuevos desafíos, me llevaron a incursionar en nuevos campos profesionales como programación y ciberseguridad. Luego de realizar cursos, entendí que el verdadero desarrollo se proeduce haciendo y por eso decidí emprender mí propio home lab para poder practicar mis habilidades profesionales, adquiriendo nuevos conocimientos e incorporar herramientas que me preparen para ser un analista de ciberseguridad listo para enfrentar los retos que la tecnología propone hoy en día.
---

🛠️ Resumen de pasos realizados

Este repositorio documenta paso a paso la creación del entorno de laboratorio. Cada fase tiene su propia carpeta con instrucciones detalladas y capturas de pantalla:

1. **Descargar pfSense**  
   Instrucciones para obtener la ISO desde el sitio oficial.

2. **Crear VM de pfSense**  
   Configuración de la máquina virtual en VirtualBox.

3. **Crear VM de Kali Linux**  
   Instalación y primeros pasos con Kali para usarla como sistema de pruebas.

4. **Configurar redes en VirtualBox**  
   Adaptadores de red configurados para aislar Kali y permitir conexión controlada con pfSense.

5. **Instalar y configurar pfSense (consola)**  
   Primeros pasos luego de instalar pfSense: asignación de interfaces, IPs, etc.

6. **Configuración de pfSense vía GUI**  
   Acceso desde Kali a la interfaz gráfica de pfSense y ajustes iniciales.

7. **Reglas del Firewall**  
   Reglas personalizadas en WAN y LAN para asegurar que Kali esté aislada y protegida.

---

📁 Cómo usar este repositorio

Este repositorio está organizado por carpetas, y cada carpeta representa una etapa del laboratorio. Dentro de cada una vas a encontrar:

- 📝 Un archivo `.txt` con los pasos detallados  
- 📸 Screenshots que ilustran cada paso

📂 Estructura del repositorio

home-lab/
├── 1.Descargar_pfSense/
│   ├── pasos.txt
│   └── imagen1.png
├── 2.Crear_VM_pfSense/
├── 3.Crear_VM_Kali/
├── 4.Configuracion_redes/
├── 5.Configuracion_pfSense_consola/
├── 6.Configuracion_pfSense_GUI/
├── 7.Reglas_firewall/
└── README.md

---

🔄 Clonar el repositorio

Si querés tener una copia local para explorarlo o contribuir, podés clonarlo así:

git clone https://github.com/tu-usuario/pfsense-home-lab.git
cd pfsense-home-lab
