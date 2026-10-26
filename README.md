# Cómo ejecutar el proyecto

### Opción 1: Desde IntelliJ IDEA con Apache Tomcat
1. Abre el proyecto en **IntelliJ IDEA**.
2. Ve a **Run > Edit Configurations...** y haz clic en **+** para agregar **Tomcat Server > Local** (Tomcat 10+).
3. En la pestaña **Deployment**, haz clic en **+ > Artifact...** y selecciona `paginaEstaticaJSP:war exploded` (o `paginaEstaticaJSP:war`).
4. Ejecuta la configuración (**Shift + F10**) y abre en el navegador:
   ```text
   http://localhost:8080/
   ```

### Opción 2: Generar el archivo `.war` por terminal
1. En la raíz del proyecto ejecuta:
   ```powershell
   .\gradlew.bat war
   ```
2. El archivo generado estará en `build/libs/paginaEstaticaJSP-1.0-SNAPSHOT.war`, listo para copiarse a la carpeta `webapps/` de **Apache Tomcat**.
