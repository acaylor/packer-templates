# Packer templates

Hint to protect credentials:
Create a json file with your proxmox username and api token: `secrets.json`
Put the following in the file:
```json
    {
        "username": "user@pve",
        "password": "password123"
    }
```