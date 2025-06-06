$webhook = "https://discordapp.com/api/webhooks/1380571141155848192/itHvYSUzeHGsjQVozcaGtx6oKv1CNOi0V3oWs0UE1glMhqqmQwZO0-9RirlkkPX52enc"
$computer = $env:COMPUTERNAME
$message = @{content = "Siema z komputera: $computer"} | ConvertTo-Json

Invoke-RestMethod -Uri $webhook -Method Post -Body $message -ContentType "application/json"
