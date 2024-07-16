# List available recipes.
default:
    @just --list

# Refresh the `pack.toml` and `index.toml` files, stage git changes.
refresh:
    packwiz refresh
    @git add .
    @git status

# (Re)start the server's container.
restart:
    docker compose down
    docker compose up --detach --build
    docker compose logs --follow

# Remove any exported packs.
clean:
    rm -f *.mrpack *.zip

# Remove the `./data/world` directory, resetting the server's world.
[no-cd]
[confirm('Are you sure you with to WIPE OUT THE SERVER WORLD?')]
reset-world:
    rm -rf ./data/world

# Remove the `./data` directory, resetting the entire server.
[no-cd]
[confirm('Are you sure you with to WIPE OUT THE ENTIRE SERVER?')]
reset-server:
    rm -rf ./data

# Export the modpack in `.mrpack` format.
export: refresh
    packwiz modrinth export --output Infestation.mrpack
