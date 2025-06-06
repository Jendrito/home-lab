@echo off
echo.
echo Habilitando politicas de auditoria avanzadas de Windows...
echo Esto es necesario para que Wazuh recoja mas eventos de seguridad.
echo.

rem Habilitar Auditar categoria "Sistema"
auditpol /set /category:"Sistema" /success:enable /failure:enable
if %errorlevel% neq 0 (echo Error al configurar "Sistema") else (echo "Sistema" habilitado.)

rem Habilitar Auditar categoria "Acceso de objetos"
auditpol /set /category:"Acceso de objetos" /success:enable /failure:enable
if %errorlevel% neq 0 (echo Error al configurar "Acceso de objetos") else (echo "Acceso de objetos" habilitado.)

rem Habilitar Auditar categoria "Uso de privilegios"
auditpol /set /category:"Uso de privilegios" /success:enable /failure:enable
if %errorlevel% neq 0 (echo Error al configurar "Uso de privilegios") else (echo "Uso de privilegios" habilitado.)

rem Habilitar Auditar categoria "Seguimiento detallado"
auditpol /set /category:"Seguimiento detallado" /success:enable /failure:enable
if %errorlevel% neq 0 (echo Error al configurar "Seguimiento detallado") else (echo "Seguimiento detallado" habilitado.)

rem Habilitar Auditar categoria "Cambio de plan"
auditpol /set /category:"Cambio de plan" /success:enable /failure:enable
if %errorlevel% neq 0 (echo Error al configurar "Cambio de plan") else (echo "Cambio de plan" habilitado.)

echo.
echo Actualizando politicas de grupo...
gpupdate /force
if %errorlevel% neq 0 (echo Error al actualizar politicas de grupo) else (echo Politicas de grupo actualizadas.)

echo.
echo Verificando el estado actual de las politicas de auditoria:
auditpol /get /category:*

echo.
echo Configuracion completada. Por favor, revisa la salida para confirmar los cambios.
echo Es posible que necesites reiniciar el agente Wazuh para que los cambios surtan efecto.
pause