# Packer templates

## How to use

Run the following command to validate the packer template and then build the image:
```bash
packer validate template-name.json && packer build template-name.json
```

#### Hint to protect credentials:
Create a json file with your proxmox username and api token: `secrets.json`
Put the following in the file:
```json
    {
        "username": "user@pve",
        "password": "password123"
    }
```